const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const targets = ['allure-results', 'allure-report'];

for (const dir of targets) {
  const full = path.join(root, dir);
  fs.rmSync(full, { recursive: true, force: true });
}

console.log('Allure folders cleaned: allure-results, allure-report');
