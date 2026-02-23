export const config = {
  baseUrl: process.env.BASE_URL || 'https://example.com',

  headless: process.env.HEADLESS == 'false',

  slowMo: Number(process.env.SLOWMO) || 0,

  timeout: Number(process.env.TIMEOUT) || 60000,

  retries: Number(process.env.RETRIES) || 0,

  parallel: Number(process.env.PARALLEL) || 2,

  browser: process.env.BROWSER || 'chromium'
};
