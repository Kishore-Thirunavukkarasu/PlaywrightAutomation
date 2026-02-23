import { Given, When } from "@cucumber/cucumber";
import { Page } from 'playwright';

Given("User launches admin application", async function () {
    await this.page.goto("https://qa-admin.phoenix-np-in.channelsmart.net/login/");
});

When('"(.*)" login to "(.*)" application', async function (role: string, app: string) {
    
});