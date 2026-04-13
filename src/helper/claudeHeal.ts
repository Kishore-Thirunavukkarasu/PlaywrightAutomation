import { Page, Locator } from '@playwright/test';
import Anthropic from '@anthropic-ai/sdk';

// In-memory cache (can replace with file/db later)
const healedCache = new Map<string, string>();

// Claude client
const client = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

// Extract selector safely from locator
function extractSelector(locator: Locator): string {
  const raw = locator.toString();
  const match = raw.match(/locator\('(.+)'\)/);
  return match ? match[1] : raw;
}

// Call Claude to get healed selector
async function getHealedSelector(selector: string, html: string): Promise<string> {
  const prompt = `
This selector broke: ${selector}

Here is the current page HTML:
${html.substring(0, 30000)}

Find the correct selector.
Reply ONLY with the selector.
`;

  const response = await client.messages.create({
    model: 'claude-opus-4-6',
    max_tokens: 200,
    messages: [
      {
        role: 'user',
        content: prompt,
      },
    ],
  });

  return response.content[0].text.trim();
}

// Main heal function
export async function heal(locator: Locator, page: Page): Promise<Locator> {
  const originalSelector = extractSelector(locator);

  // Step 2 — Cache check
  if (healedCache.has(originalSelector)) {
    const cached = healedCache.get(originalSelector)!;
    return page.locator(cached);
  }

  // Step 3 — Try original selector
  try {
    await locator.waitFor({ state: 'attached', timeout: 3000 });
    return locator; // still valid
  } catch {
    console.log(`[SelfHeal] Broken selector: ${originalSelector}`);
  }

  // If no API key → skip healing
  if (!process.env.ANTHROPIC_API_KEY) {
    console.warn('[SelfHeal] API key missing, skipping healing');
    return locator;
  }

  try {
    // Step 4 — Capture DOM
    const html = await page.content();

    // Step 5 — Get healed selector from Claude
    const newSelector = await getHealedSelector(originalSelector, html);

    console.log(`[SelfHeal] Suggested selector: ${newSelector}`);

    // Step 6 — Validate healed selector
    const healedLocator = page.locator(newSelector);

    await healedLocator.waitFor({ state: 'attached', timeout: 5000 });

    // Step 7 — Cache it
    healedCache.set(originalSelector, newSelector);

    console.log('[SelfHeal] Healing successful ✅');

    return healedLocator;
  } catch (error) {
    console.error('[SelfHeal] Healing failed ❌', error);

    // Fallback → return original locator
    return locator;
  }
}