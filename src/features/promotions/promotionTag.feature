Feature:Promotion tags

    Background:
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Promotions"

    @adminui @promotiontag @createTag @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Create a new tag for promotion
        When User is on Promotion Page
        When User selects manageTags from settings button in promotion screen
        When User click on "Add New Tags" button from manage tags page
        When User adds a new tag "Tag1"
        Then "Successful" message shown up
        When User click on "Add New Tags" button from manage tags page
        When User adds a new tag "Tag2"
        Then "Successful" message shown up
        When User click on "Add New Tags" button from manage tags page
        When User adds a new tag "Tag3"
        Then "Successful" message shown up


