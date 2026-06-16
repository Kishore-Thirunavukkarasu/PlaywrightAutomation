import { Given, When, Then } from "@cucumber/cucumber";
import assert from 'node:assert/strict';
import { TenantPage } from '../../pages/Admin/tenant';
import { config } from '../../config/env';
import { heal } from "../../helper/heal/geminiHeal";

const tenantPage = new TenantPage();

Given("User launches admin application", async function () {
    await this.page.goto(config.baseUrl);
});

When('user enters username and password', async function () {
    const usernameLocator = await heal(this.page.locator(tenantPage.usernameInput).first(), this.page);
    await usernameLocator.waitFor({ state: 'visible', timeout: 15000 });
    await usernameLocator.fill(config.username);
    const passwordLocator = await heal(this.page.locator(tenantPage.passwordInput).first(), this.page);
    await passwordLocator.waitFor({ state: 'visible', timeout: 15000 });
    await passwordLocator.fill(config.password);
});

When('user clicks on signin button', async function () {
    const signInButton = await heal(this.page.locator(tenantPage.signInButtonName), this.page);
    await signInButton.click();
});

Then('user should be redirected to tenant page url', async function () {
    await this.page.waitForURL(/logged/i, { timeout: 45000 });
    const currentUrl = this.page.url();
    assert.match(currentUrl, tenantPage.tenantUrlPattern);
});
