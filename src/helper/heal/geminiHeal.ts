import * as fs from 'fs';
import * as path from 'path';
import { Page, Locator } from '@playwright/test';
import { GoogleGenerativeAI } from '@google/generative-ai';

// Helper to auto-update the broken selector in the source code
function updateSourceFileLocator(oldSelector: string, newSelector: string) {
    const srcDir = path.resolve(__dirname, '..'); // Points to 'src'
    
    function walkSync(dir: string, filelist: string[] = []) {
        fs.readdirSync(dir).forEach(file => {
            const filepath = path.join(dir, file);
            if (fs.statSync(filepath).isDirectory()) {
                filelist = walkSync(filepath, filelist);
            } else if (file.endsWith('.ts')) {
                filelist.push(filepath);
            }
        });
        return filelist;
    }

    const files = walkSync(srcDir);
    // Unescape Playwright's stringification just in case (e.g. \')
    const unescapedOldSelector = oldSelector.replace(/\\'/g, "'").replace(/\\"/g, '"');

    for (const file of files) {
        let content = fs.readFileSync(file, 'utf8');
        let updated = false;

        // Make sure we only replace if found
        if (content.includes(unescapedOldSelector)) {
            // We use split/join here to replace all occurrences in the exact string literal match
            content = content.split(unescapedOldSelector).join(newSelector);
            updated = true;
        } else if (content.includes(oldSelector)) {
            content = content.split(oldSelector).join(newSelector);
            updated = true;
        }

        if (updated) {
            fs.writeFileSync(file, content, 'utf8');
            console.log(`[SelfHeal] ✍️ Auto-updated locator in source code: ${file}`);
        }
    }
}

// In-memory cache (can replace with file/db later)
const healedCache = new Map<string, string>();

// Gemini client
const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY!);

// Extract selector safely from locator
function extractSelector(locator: Locator): string {
    const raw = locator.toString();
    const match = raw.match(/locator\('(.+)'\)/);
    return match ? match[1] : raw;
}

// Clean Gemini response
function cleanSelector(text: string): string {
    return text
        .replace(/```/g, '')
        .replace(/The correct selector is:/i, '')
        .trim();
}

// Call Gemini to get healed selector
async function getHealedSelector(selector: string, html: string): Promise<string> {
    const model = genAI.getGenerativeModel({ model: 'gemini-flash-latest' });

    const prompt = `
You are a Playwright automation expert.

This selector broke:
${selector}

Here is the current page HTML:
${html.substring(0, 30000)}

Rules:
- Return ONLY a valid CSS or XPath selector that can be passed directly into page.locator()
- Do NOT return JS code, e.g. no "page.locator(...)" or "page.getByRole(...)"
- Just the raw string selector (e.g. "button#submit" or "//button[@id='submit']")
- Prefer text-based or stable attributes
- Avoid indexes
- No explanation or markdown formatting

Output:
`;

    const result = await model.generateContent(prompt);
    const response = await result.response;

    return cleanSelector(response.text());
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
    if (!process.env.GEMINI_API_KEY) {
        console.warn('[SelfHeal] GEMINI_API_KEY missing, skipping healing');
        return locator;
    }

    try {
        // Step 4 — Capture DOM
        const html = await page.content();

        // Step 5 — Get healed selector from Gemini
        const newSelector = await getHealedSelector(originalSelector, html);

        console.log(`[SelfHeal] Gemini suggested: ${newSelector}`);

        // Step 6 — Validate healed selector
        const healedLocator = page.locator(newSelector);

        await healedLocator.waitFor({ state: 'attached', timeout: 5000 });

        // Step 7 — Cache it
        healedCache.set(originalSelector, newSelector);

        console.log('[SelfHeal] Healing successful ✅');
        
        // Auto-update source code
        updateSourceFileLocator(originalSelector, newSelector);

        return healedLocator;
    } catch (error) {
        console.error('[SelfHeal] Healing failed ❌', error);

        // Fallback → return original locator
        return locator;
    }
}