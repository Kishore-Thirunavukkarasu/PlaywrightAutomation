export class TenantPage {
  readonly usernameInput = 'input[name="email"].biw-signin-input';
  readonly passwordInput = 'input[name="password"], input[type="password"], input[placeholder*="Password" i]';
  readonly signInButtonName = /sign\s*in/i;
  readonly tenantUrlPattern = /\/tenants\/?$/i;
}
