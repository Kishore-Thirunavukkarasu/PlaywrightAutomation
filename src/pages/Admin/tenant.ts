export class TenantPage {
  readonly usernameInput = 'input[name="username"], input[type="email"], input[placeholder*="Email" i], input[placeholder*="Username" i]';
  readonly passwordInput = 'input[name="password"], input[type="password"], input[placeholder*="Password" i]';
  readonly signInButtonName = /sign\s*in/i;
  readonly tenantUrlPattern = /\/tenants\/?$/i;
}
