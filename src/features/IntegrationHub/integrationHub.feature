Feature: Integraion Hub scenarios

    Background: Connector Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        # Then Verify the Hierarchy Creation Popup appears
        # When Click cancel on the hierarchy creation popup
        Then Verify the user is on the program landing page
        When User click on "Integration Hub"
        When User click on the "Connectors" submenu
        Then Verify the "Connectors" page is displayed


    @adminui @integrationhub @connectors @system @list @functional @smoke @reviewed @superadmin @updated @automated
    Scenario: Disable multiple connectors if enabled
        When User is on the connectors page
        When Verify and Disable the connector if it is enabled
            | vConnect |
            | AWS SNS  |
            | AWS SES  |
        Then Verify the connectors are disabled successfully
            | vConnect |
            | AWS SNS  |
            | AWS SES  |
