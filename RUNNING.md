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

## Key files
- `cucumber.ts` — Cucumber config (default profile)
- `cucumber.cjs` — TS config loader for Cucumber
- `scripts/generate-report.js` — HTML report generator + trace UI customizations
- `scripts/serve-report.js` — local report server for `npm run htmlreport`
- `scripts/attach-allure-traces.js` — injects Allure trace actions + attachments
- `scripts/clean-allure.js` — clears `allure-results` and `allure-report`
- `package.json` — npm scripts
