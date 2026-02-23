#!/usr/bin/env node
const cp = require('child_process');
const path = require('path');

const arg = process.argv[2];
if (!arg) {
  console.error('No URL provided to protocol handler');
  process.exit(1);
}

let url = arg;
if (url.startsWith('playwright-trace://')) url = url.replace(/^playwright-trace:\/\//, '');
else if (url.startsWith('playwright-trace:')) url = url.replace(/^playwright-trace:/, '');

url = decodeURIComponent(url).replace(/^\/+/, '');
const fullPath = path.resolve(__dirname, '..', url);

const cmd = `npx playwright show-trace "${fullPath}"`;
const proc = cp.spawn(cmd, { shell: true, stdio: 'inherit' });
proc.on('exit', code => process.exit(code));
