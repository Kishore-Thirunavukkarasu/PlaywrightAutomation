import { Page, Locator } from 'playwright';

// In-memory cache (can replace with file/db later)
const healedCache = new Map<string, string>();

// Extract selector safely from locator
function extractSelector(locator: Locator): string {
  const raw = locator.toString();
  const match = raw.match(/locator\('(.+)'\)/);
  return match ? match[1] : raw;
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

  // Healing disabled because Claude/Anthropic is not installed
  console.warn('[SelfHeal] Healing disabled; returning original locator');
  return locator;

}
