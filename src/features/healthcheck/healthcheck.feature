Feature: Health Check - All Environments

    @healthcheck
    Scenario Outline: Verify login field is displayed in <environment> <application>
        Given User launches <application> application in <environment>
        Then Login field should be displayed

        Examples:
            | environment | application |
            | QA          | admin       |
            | QA          | platform       |
            | PPRD          | admin       |
            | PPRD          | platform       |
            | PROD          | admin       |
            | PROD          | platform       |
