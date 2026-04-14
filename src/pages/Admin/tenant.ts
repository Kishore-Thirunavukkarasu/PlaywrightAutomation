export class TenantPage {
  readonly usernameInput = "#username";
  readonly passwordInput = "//input[@name='password']";
  readonly signInButtonName = "//button[@id='submit']";
  readonly tenantUrlPattern = /\/logged\/?$/i;
}
