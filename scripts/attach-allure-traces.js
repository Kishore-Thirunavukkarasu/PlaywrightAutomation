const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

const root = path.resolve(__dirname, '..');
const tracesDir = path.join(root, 'reports', 'traces');
const allureResultsDir = path.join(root, 'allure-results');

function escapeHtml(value) {
  return String(value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}

function escapeJsSingleQuoted(value) {
  return String(value)
    .replace(/\\/g, '\\\\')
    .replace(/'/g, "\\'")
    .replace(/\r/g, '\\r')
    .replace(/\n/g, '\\n');
}

function normalize(value) {
  return String(value || '')
    .toLowerCase()
    .replace(/\s+/g, '_')
    .replace(/[^a-z0-9_]/g, '');
}

if (!fs.existsSync(tracesDir) || !fs.existsSync(allureResultsDir)) {
  console.log('attach-allure-traces: traces or allure-results not found, skipping.');
  process.exit(0);
}

const traceFiles = fs.readdirSync(tracesDir).filter((name) => name.endsWith('.zip'));
const traceByName = new Map();
for (const file of traceFiles) {
  traceByName.set(normalize(file.replace(/\.zip$/, '')), path.join(tracesDir, file));
}

const resultFiles = fs.readdirSync(allureResultsDir).filter((name) => name.endsWith('-result.json'));
let attachedCount = 0;

for (const resultFile of resultFiles) {
  const fullPath = path.join(allureResultsDir, resultFile);
  let json;
  try {
    json = JSON.parse(fs.readFileSync(fullPath, 'utf8'));
  } catch {
    continue;
  }

  const scenarioName = json && json.name ? json.name : '';
  const normalizedScenario = normalize(scenarioName);
  const tracePath = traceByName.get(normalizedScenario);
  if (!tracePath) continue;

  const traceRelativePath = `reports/traces/${path.basename(tracePath)}`;
  const protoUrl = `playwright-trace:${encodeURIComponent(traceRelativePath)}`;
  const fallbackCmd = `cmd /c start "" "${protoUrl}"`;

  if (!Array.isArray(json.attachments)) {
    json.attachments = [];
  }

  const alreadyAttached = json.attachments.some((a) => a && a.name === 'Playwright trace');
  const marker = 'data-trace-link="playwright"';

  if (json.links) {
    delete json.links;
  }

  const blockPattern = /<div[^>]*data-trace-link="playwright"[^>]*>[\s\S]*?<\/div>/g;
  const cleanedDescriptionHtml = (json.descriptionHtml || '').replace(blockPattern, '').trim();
  const fallbackJs = escapeJsSingleQuoted(fallbackCmd);
  const traceHtml = `<div ${marker} style="margin-top:8px;">` +
    `<a href="${protoUrl}">📊 Open trace</a>` +
    `<button type="button" style="margin-left:8px;cursor:pointer;" onclick="navigator.clipboard.writeText('${fallbackJs}')">📋 Copy command</button>` +
    `</div>`;
  json.descriptionHtml = cleanedDescriptionHtml ? `${cleanedDescriptionHtml}${traceHtml}` : traceHtml;

  if (!alreadyAttached) {
    const sourceName = `${crypto.randomUUID()}-attachment.zip`;
    const destPath = path.join(allureResultsDir, sourceName);
    fs.copyFileSync(tracePath, destPath);

    json.attachments.push({
      name: 'Playwright trace',
      source: sourceName,
      type: 'application/zip'
    });
  }

  fs.writeFileSync(fullPath, JSON.stringify(json));
  attachedCount += 1;
}

console.log(`attach-allure-traces: attached traces to ${attachedCount} result(s).`);
