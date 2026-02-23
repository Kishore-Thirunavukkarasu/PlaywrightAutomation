require('ts-node/register');
const cfg = require('./cucumber.ts');
module.exports = cfg && cfg.default ? cfg.default : cfg;
