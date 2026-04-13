import { Given, When, Then } from "@cucumber/cucumber";
import assert from 'node:assert/strict';
import { TenantPage } from '../../pages/Admin/tenant';
import { config } from '../../config/env';

const tenantPage = new TenantPage();

Given("User launches admin application", async function () {
    await this.page.goto(config.baseUrl);
});

When('user enters username and password', async function () {
    const usernameLocator = this.page.locator(tenantPage.usernameInput).first();
    await usernameLocator.waitFor({ state: 'visible', timeout: 15000 });
    await usernameLocator.fill(config.username);

    const passwordLocator = this.page.locator(tenantPage.passwordInput).first();
    await passwordLocator.waitFor({ state: 'visible', timeout: 15000 });
    await passwordLocator.fill(config.password);
});

When('user clicks on signin button', async function () {
    const signInButton = this.page.getByRole('button', { name: tenantPage.signInButtonName }).first();
    await signInButton.click();
});

Then('user should be redirected to tenant page url', async function () {
    await this.page.waitForURL(/tenant/i, { timeout: 45000 });
    const currentUrl = this.page.url();
    assert.match(currentUrl, tenantPage.tenantUrlPattern);
});
