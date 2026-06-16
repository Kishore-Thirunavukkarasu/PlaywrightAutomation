Feature: LXP Automation - Smoke BC

    Background: LXP Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        # Then Verify the Hierarchy Creation Popup appears
        # When Click cancel on the hierarchy creation popup
        Then Verify the user is on the program landing page
        When User click on "LXP"
        Then Verify the "LXP" page is displayed


    @tag @smoke
    Scenario: Create a new tag successfully
        Given BC I am on the tags list page
        When BC I click on the "Create Tag" button
        And BC I enter a "valid" tag name
        And BC I submit the tag form
        Then BC I should see the new tag in the tags list

    @tag @smoke
    Scenario: Create a new skill tag successfully
        Given BC I am on the tags list page
        When BC I click on the "Create Tag" button
        And BC I enter a "valid" skill tag name
        And BC I submit the tag form
        Then BC I should see the new skill tag in the tags list

    @category @smoke
    Scenario: Create a new category successfully
        Given BC I am on the category list page
        When BC I click on the "Create Category" button
        And BC I enter a "valid" category name
        And BC I submit the category form
        Then BC I should see the new category in the category list

    @course @smoke
    Scenario: Create a new course successfully
        Given BC I am on the course list page
        When BC I click on the "Create Course" button
        And BC I enter "valid" course details
        And BC I submit the course form
        Then BC I should see the new course in the course list
