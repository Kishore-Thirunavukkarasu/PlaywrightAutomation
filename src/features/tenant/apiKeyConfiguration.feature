Feature: Configure the Program API Key

    Background: Program Settings Page Navigation
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
        When User click on "Program Setup"
        When User click on the "Program Settings" submenu
        Then Verify the "Program Settings" page is displayed

    @adminui @tenant @programAPIKey @system @list @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Creation of API Key in Program Settings
        When User is on the Program Settings page
        When User click on the edit program button
        When User navigate to "API Key" tab
        When User adds a new API key for program
            | name        | Role                 |
            | PlatformKey | Tenant Administrator |
        When Save the Changes in Program Settings
        Then "Successful" message shown up for edit program