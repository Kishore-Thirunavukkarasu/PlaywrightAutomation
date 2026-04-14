# RUNNING

## Prerequisites
- Node.js (20.x or later recommended)
- npm

## Install
```bash
npm install
```

## Current test/report flow
- `npm test`
	- Runs all scenarios using `cucumber.ts` config (through `cucumber.cjs`)
	- Cleans `allure-results` and `allure-report` at the start of the run
	- Generates `reports/cucumber.json`
	- Generates `reports/report.html`
	- Attaches scenario traces to Allure results
	- Generates `allure-report`
- `npm run test:smoke`
	- Runs only scenarios tagged `@smoke`
	- Cleans `allure-results` and `allure-report` at the start of the run
	- Generates `reports/cucumber.json`
	- Generates `reports/report.html`
	- Attaches scenario traces to Allure results
	- Generates `allure-report`

## Commands
Run all tests + generate report:
```bash
npm test
```

Run Playwright MCP server (headed):
```bash
npm run mcp:playwright
```

Run Playwright MCP server (headless):
```bash
npm run mcp:playwright:headless
```

Run smoke tests + generate report:
```bash
npm run test:smoke
```

Open generated Allure report:
```bash
npm run allureopen
```

Serve Allure report directly from `allure-results`:
```bash
npm run allureserve
```

Serve report on local URL:
```bash
npm run htmlreport
```
Then open: `http://127.0.0.1:9325/report.html`

Open report directly from file (Windows):
```powershell
start .\reports\report.html
```

Dry run (step matching only):
```bash
npx cucumber-js --config cucumber.cjs --dry-run
```

## MCP (Playwright)
- Added `@playwright/mcp` as a dev dependency.
- Workspace MCP server config is in `.vscode/mcp.json`.
- The configured server runs as `npx playwright-mcp --headless` over stdio.
- If your MCP client supports workspace config, it should auto-detect the `playwright` server.

After running `npx playwright init-agents --loop=vscode`, the following files are added/updated:
- `specs/README.md` — directory for test plans
- `seed.spec.ts` — default environment seed file
- `.github/agents/playwright-test-generator.agent.md` — agent definition
- `.github/agents/playwright-test-healer.agent.md` — agent definition
- `.github/agents/playwright-test-planner.agent.md` — agent definition
- `.vscode/mcp.json` — MCP configuration
- `.github/workflows/copilot-setup-steps.yml` — GitHub Copilot setup steps

## Troubleshooting (Allure exit code 1)
- Use the current script names exactly:
	- `npm run allureopen`
	- `npm run allureserve`
- `npm run allure:open` / `npm run allure:serve` will fail if those alias scripts are not defined.
- If report artifacts are stale or missing, run:
```bash
npm run allure:clean
npm run test
```
- If `allureopen` still fails, generate report first, then open:
```bash
npm run allure:generate
npm run allureopen
```

## Trace usage
- Traces are generated per scenario in `reports/traces/`.

In `report.html`, use:
	- `📊 Open trace` (opens trace viewer via protocol handler)
	- `📋 Copy command` (fallback command to run in terminal)

In Allure scenario Description, use:
	- `📊 Open trace`
	- `📋 Copy command`

Note: The Allure `Links` section is intentionally removed for trace links; trace actions are shown only in Description.

## AI Self-Healing Locators
The framework features intelligent self-healing for broken Playwright locators using Google's Gemini AI (`gemini-flash-latest`), located in `src/helper/geminiHeal.ts`.

**Prerequisites & Setup:**
To use the self-healing feature, you must install the Google AI SDK:
```bash
npm install @google/generative-ai
```
You must also have a valid API key exposed in your environment variables:
```bash
GEMINI_API_KEY=your_api_key_here
```

**How it works during a test run:**
1. **Short-Circuit Try:** The `heal(locator, page)` function attempts to find the element normally with a brief timeout (3 seconds). If found, the test proceeds with zero overhead.
2. **Failure & DOM Capture:** If the element breaks (e.g., a changed ID), Playwright throws an error. The script catches this and captures the active browser page's current HTML.
3. **AI Diagnosis:** The broken selector and captured HTML are sent directly to the Gemini AI API. The AI is specifically asked to provide a valid CSS or XPath replacement string (avoiding JS methods and indexes).
4. **Validation:** A new Playwright locator is built using the AI's suggested string and validated against the live browser. If it works, the test continues without failing.
5. **Caching & Auto-Replacement:**
   - **Cache:** The successful fix is stored in-memory so subsequent calls in the same run heal instantly without hitting the AI again.
   - **Auto-Update Source Code:** The framework recursively scans the `.ts` files inside the `src` folder, locates the exact string of the originally broken selector, and permanently overwrites the physical file on disk with the healed locator. This means it only ever heals a specific locator *once*; from then on, the framework is permanently fixed!

## Key files
- `cucumber.ts` — Cucumber config (default profile)
- `cucumber.cjs` — TS config loader for Cucumber
- `scripts/generate-report.js` — HTML report generator + trace UI customizations
- `scripts/serve-report.js` — local report server for `npm run htmlreport`
- `scripts/attach-allure-traces.js` — injects Allure trace actions + attachments
- `scripts/clean-allure.js` — clears `allure-results` and `allure-report`
- `package.json` — npm scripts
