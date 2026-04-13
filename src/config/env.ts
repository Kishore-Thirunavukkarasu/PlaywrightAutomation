import * as dotenv from 'dotenv';

// Load environment variables from .env file and override existing OS env vars
dotenv.config({ override: true });

export const config = {
  baseUrl: process.env.BASE_URL,
  username: process.env.USERNAME,
  password: process.env.PASSWORD,

  headless: process.env.HEADLESS == 'false',

  slowMo: Number(process.env.SLOWMO) || 0,

  timeout: Number(process.env.TIMEOUT) || 60000,

  retries: Number(process.env.RETRIES) || 0,

  parallel: Number(process.env.PARALLEL) || 2,

  browser: process.env.BROWSER || 'chromium'
};
