# Health Check Automation

This health check verifies that login fields are accessible across multiple environments and applications in a **single comprehensive job**.

## What it checks:
- **Admin applications**: Verifies username field is displayed
- **Platform applications**: Verifies appcode field is displayed
- **Environments**: QA, PPRD, PROD (all in one job)
- **Total scenarios**: 6 (3 environments × 2 applications)

## GitLab CI/CD Usage

### Single Comprehensive Job
The health check runs all environments in one job:

```yaml
healthcheck:
  stage: smoketest
  rules:
    - if: '$CI_COMMIT_BRANCH == "main"'
      when: always
    - if: '$CI_COMMIT_BRANCH == "development"'
      when: manual
  variables:
    HEALTHCHECK_ENVIRONMENTS: "QA,PPRD,PROD"
    HEALTHCHECK_APPLICATIONS: "admin,platform"
```

### What it tests:
1. **QA Admin** - Username field
2. **QA Platform** - Appcode field
3. **PPRD Admin** - Username field
4. **PPRD Platform** - Appcode field
5. **PROD Admin** - Username field
6. **PROD Platform** - Appcode field

## Local Usage

### Windows PowerShell
```powershell
# Run all environments (default)
npm run healthcheck

# Run custom environments
$env:HEALTHCHECK_ENVIRONMENTS="QA,PROD"; $env:HEALTHCHECK_APPLICATIONS="admin"; npm run healthcheck:custom
```

### Linux/Mac
```bash
# Run custom environments
HEALTHCHECK_ENVIRONMENTS="QA,PROD" HEALTHCHECK_APPLICATIONS="admin" npm run healthcheck:custom
```

## Implementation Details

The health check dynamically generates a single Cucumber scenario outline with multiple examples and runs all combinations in one pipeline job.

# QA only
healthcheck_qa:
  variables:
    HEALTHCHECK_ENVIRONMENTS: "QA"
    HEALTHCHECK_APPLICATIONS: "admin,platform"

# Production only
healthcheck_prod:
  variables:
    HEALTHCHECK_ENVIRONMENTS: "PROD"
    HEALTHCHECK_APPLICATIONS: "admin,platform"

# Admin applications only
healthcheck_admin:
  variables:
    HEALTHCHECK_ENVIRONMENTS: "QA,PPRD,PROD"
    HEALTHCHECK_APPLICATIONS: "admin"
```

## Available Options

### Environments
- `QA` - Quality Assurance environment
- `PPRD` - Pre-Production environment
- `PROD` - Production environment

### Applications
- `admin` - Admin application (checks username field)
- `platform` - Platform application (checks appcode field)

## Implementation Details

The health check dynamically generates Cucumber feature files based on the environment variables, allowing flexible test execution without code changes.