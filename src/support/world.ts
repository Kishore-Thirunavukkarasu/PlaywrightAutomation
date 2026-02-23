import {setWorldConstructor, setDefaultTimeout, IWorldOptions} from '@cucumber/cucumber';
import {Browser, BrowserContext, Page, chromium, firefox, webkit} from 'playwright';
import { config } from '../config/env';
import fs from 'fs';
import path from 'path';

setDefaultTimeout(config.timeout);

export class CustomWorld {
  // Cucumber context
  attach: any;
  parameters: any;

  // Playwright objects
  browser!: Browser;
  context!: BrowserContext;
  page!: Page;

  constructor(options: IWorldOptions) {
    this.attach = options.attach;
    this.parameters = options.parameters;
  }

  // ---------------------------
  // INIT (Before scenario)
  // ---------------------------
  async init() {

    const browserType =
      config.browser === 'firefox'
        ? firefox
        : config.browser === 'webkit'
        ? webkit
        : chromium;

    this.browser = await browserType.launch({
      headless: config.headless,
      slowMo: config.slowMo
    });

    this.context = await this.browser.newContext({
      viewport: { width: 1280, height: 720 }
    });

    this.page = await this.context.newPage();

    // Start tracing
    await this.context.tracing.start({
      screenshots: true,
      snapshots: true
    });
  }

  // ---------------------------
  // CLEANUP (After scenario)
  // ---------------------------
  async cleanup(testName?: string) {

    const reportsDir = 'reports';
    const tracesDir = path.join(reportsDir, 'traces');

    fs.mkdirSync(tracesDir, { recursive: true });

    let tracePath: string | undefined;

    if (testName) {
      tracePath = path.join(tracesDir, `${testName}.zip`);
      await this.context.tracing.stop({
        path: tracePath
      });
    } else {
      await this.context.tracing.stop();
    }

    await this.context.close();
    await this.browser.close();

    return tracePath;
  }
}

setWorldConstructor(CustomWorld);