const reporter = require('cucumber-html-reporter');
const path = require('path');
const fs = require('fs');

const jsonFile = path.resolve(__dirname, '..', 'reports', 'cucumber.json');
const output = path.resolve(__dirname, '..', 'reports', 'report.html');

const options = {
  theme: 'bootstrap',
  jsonFile,
  output,
  reportName: 'Automation Report',
  brandTitle: 'Automation Report',
  reportSuiteAsScenarios: true,
  launchReport: false,
  metadata: {
    "App Version": "1.0.0",
    "Test Environment": "QA",
    "Browser": "Playwright Chromium",
    "Platform": process.platform
  }
};

reporter.generate(options);

// Post-process to add trace links that open local Playwright Trace Viewer
try {
  const tracesDir = path.resolve(__dirname, '..', 'reports', 'traces');
  if (fs.existsSync(tracesDir)) {
    const traceFiles = fs.readdirSync(tracesDir).filter(f => f.endsWith('.zip'));
    const traceMap = {};
    traceFiles.forEach(file => {
      traceMap[file.replace('.zip', '')] = file;
    });

    let html = fs.readFileSync(output, 'utf8');

    // Ensure navbar center project name matches requested report title
    html = html.replace(
      /<div class="project-name visible-md visible-lg">\s*[\s\S]*?<\/div>/,
      '<div class="project-name visible-md visible-lg">Automation Report</div>'
    );

    const normalizedTraceMap = {};
    Object.keys(traceMap).forEach(scenarioName => {
      const normalized = scenarioName.toLowerCase().replace(/\s+/g, '_').replace(/[^a-z0-9_]/g, '');
      normalizedTraceMap[normalized] = traceMap[scenarioName];
    });

    const copyScript = `
<script>
(function() {
  const traceMap = ${JSON.stringify(normalizedTraceMap)};

  // Keep timing compact to avoid overlap with long scenario titles
  const timingStyle = document.createElement('style');
  timingStyle.textContent = '.label-container > span:first-child { font-size: 10px !important; }\\n' +
    '.step-duration { font-size: 10px !important; }';
  document.head.appendChild(timingStyle);

  function normalize(value) {
    return (value || '').toLowerCase().replace(/\\s+/g, '_').replace(/[^a-z0-9_]/g, '');
  }

  function createActions(traceFile) {
    const tracePath = 'reports/traces/' + traceFile;
    const protoUrl = 'playwright-trace:' + encodeURIComponent(tracePath);
    const fallbackCmd = 'cmd /c start "" "' + protoUrl + '"';

    const row = document.createElement('div');
    row.className = 'trace-actions-row';
    row.style.marginTop = '6px';

    const open = document.createElement('a');
    open.href = protoUrl;
    open.textContent = '📊 Open trace';
    open.style.cssText = 'font-size:0.85em;border:1px solid #2f6fed;background:#f4f8ff;color:#1f4dbd;border-radius:4px;padding:2px 8px;text-decoration:none;display:inline-block;';

    const copy = document.createElement('a');
    copy.href = '#';
    copy.textContent = '📋 Copy command';
    copy.style.cssText = 'margin-left:6px;font-size:0.85em;color:#1f4dbd;text-decoration:underline;';
    copy.addEventListener('click', async function(event) {
      event.preventDefault();
      try {
        if (navigator.clipboard && navigator.clipboard.writeText) {
          await navigator.clipboard.writeText(fallbackCmd);
          alert('Trace command copied to clipboard.');
        } else {
          window.prompt('Copy this trace command:', fallbackCmd);
        }
      } catch (error) {
        window.prompt('Copy this trace command:', fallbackCmd);
      }
    });

    row.appendChild(open);
    row.appendChild(copy);
    return row;
  }

  function createTraceSection(traceFile) {
    const wrap = document.createElement('div');
    wrap.className = 'trace-section';
    wrap.style.cssText = 'margin-top:20px; border:1px solid #d8d8d8; border-radius:4px;';

    const head = document.createElement('div');
    head.textContent = 'Traces';
    head.style.cssText = 'padding:8px 12px; font-weight:600; border-bottom:1px solid #d8d8d8; background:#f7f7f7;';

    const body = document.createElement('div');
    body.style.cssText = 'padding:10px 12px;';
    body.appendChild(createActions(traceFile));

    wrap.appendChild(head);
    wrap.appendChild(body);
    return wrap;
  }

  const scenarioLabels = Array.from(document.querySelectorAll('b')).filter(function(el) {
    return (el.textContent || '').trim() === 'Scenario:';
  });

  scenarioLabels.forEach(function(label) {
    const titleNode = label.nextElementSibling;
    if (!titleNode || !titleNode.classList) return;

    // Keep title inline with Scenario label and allow wrapping to next line
    const plainTitle = titleNode.getAttribute('data-text') || titleNode.textContent || '';
    titleNode.textContent = plainTitle;
    titleNode.classList.remove('ellipsis');
    titleNode.classList.add('scenario-title-inline');
    titleNode.style.display = 'inline';
    titleNode.style.marginLeft = '8px';
    titleNode.style.whiteSpace = 'normal';
    titleNode.style.overflow = 'visible';
    titleNode.style.textOverflow = 'clip';
    titleNode.style.maxWidth = 'none';
    titleNode.style.wordBreak = 'break-word';
    titleNode.style.textDecoration = 'none';
    titleNode.style.cursor = 'default';
    titleNode.style.borderBottom = 'none';
    titleNode.removeAttribute('data-text');
    titleNode.removeAttribute('title');

    const scenarioText = titleNode.getAttribute('data-text') || titleNode.textContent || '';
    const traceFile = traceMap[normalize(scenarioText)];
    if (!traceFile) return;

    const headingAnchor = titleNode.closest('a[data-toggle="collapse"]');
    if (!headingAnchor) return;

    const targetId = headingAnchor.getAttribute('href');
    if (!targetId) return;

    const scenarioPanel = document.querySelector(targetId);
    if (!scenarioPanel) return;

    const panelBody = scenarioPanel.querySelector('.panel-body');
    if (!panelBody) return;

    if (panelBody.querySelector('.trace-section')) return;

    const traceSection = createTraceSection(traceFile);

    // Prefer order: Steps -> Traces -> Screenshots (if screenshot section exists)
    const screenshotCandidate = Array.from(panelBody.children).find(function(node) {
      const text = (node.textContent || '').trim();
      return /^Screenshots$/i.test(text) || /\bScreenshots\b/i.test(text);
    });

    if (screenshotCandidate) {
      panelBody.insertBefore(traceSection, screenshotCandidate);
    } else {
      panelBody.appendChild(traceSection);
    }
  });
})();
</script>`;

    if (html.includes('</body>')) {
      html = html.replace('</body>', `${copyScript}\n</body>`);
    } else {
      html += copyScript;
    }

    fs.writeFileSync(output, html, 'utf8');
  }
} catch (e) {
  console.log('Note: Could not add trace links to report:', e.message);
}

console.log('HTML report generated at', output);

