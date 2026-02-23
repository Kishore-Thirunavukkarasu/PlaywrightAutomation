import { BeforeAll, Before, After, Status } from '@cucumber/cucumber';
import { CustomWorld } from './world';
import fs from 'fs';
import path from 'path';

BeforeAll(function () {
  const tracesDir = path.join('reports', 'traces');
  fs.rmSync(tracesDir, { recursive: true, force: true });
  fs.mkdirSync(tracesDir, { recursive: true });
});

Before(async function (this: CustomWorld, scenario) {
  await this.init();
  try {
    await this.context.tracing.start({ screenshots: true, snapshots: true, sources: true });
  } catch (e) {
    // ignore if tracing not available
  }
});

After(async function (this: CustomWorld, scenario) {

  const failed = scenario.result?.status === Status.FAILED;

  const scenarioName = scenario.pickle?.name
    ? scenario.pickle.name.replace(/\s+/g, '_')
    : `scenario_${Date.now()}`;

  // Screenshot only on failure
  if (failed) {
    const screenshot = await this.page.screenshot();
    this.attach(screenshot, 'image/png');
  }

  // Let world handle tracing + browser close
  await this.cleanup(scenarioName);
});
