import { BeforeAll, Before, After, AfterStep, Status } from '@cucumber/cucumber';
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
  const status = scenario.result?.status ?? Status.UNDEFINED;
  const scenarioTitle = scenario.pickle?.name ?? 'Unnamed scenario';

  // Print clear terminal status for every scenario.
  console.log(`[Scenario ${status}] ${scenarioTitle}`);

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

AfterStep(function ({ pickleStep, result }) {
  const status = result?.status ?? Status.UNDEFINED;
  const stepText = pickleStep?.text ?? 'Unknown step';

  console.log(`[Step ${status}] ${stepText}`);

  if (status === Status.FAILED && result?.message) {
    console.error(result.message);
  }
});
