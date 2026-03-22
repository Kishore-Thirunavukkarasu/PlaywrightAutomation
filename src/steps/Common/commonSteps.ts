import { Given, When, Then } from "@cucumber/cucumber";
import assert from 'node:assert/strict';
import { TenantPage } from '../../pages/Admin/tenant';

const tenantPage = new TenantPage();

Given("User launches admin application", async function () {
    await this.page.goto("http://testing.com");
});

When('user enters username {string} and password {string}', async function (username: string, password: string) {
    await this.page.locator(tenantPage.usernameInput).first().fill(username);
    await this.page.locator(tenantPage.passwordInput).first().fill(password);
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
