Feature: Course, Tag, Category, and Certificate Management


    Background: LXP Page Navigation
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
        When User click on "LXP"
        Then Verify the "LXP" page is displayed

    @tag @smoke
    Scenario: Create a new tag successfully
        Given I am on the tags list page
        When I click on the "Create Tag" button
        And I enter a "valid" tag name
        And I submit the tag form
        Then I should see the new tag in the tags list

        
    @tag @smoke
    Scenario: Create a new skill tag successfully
        Given I am on the tags list page
        When I click on the "Create Tag" button
        And I enter a "valid" skill tag name
        And I submit the tag form
        Then I should see the new skill tag in the tags list

    @tag
    Scenario: Search for an existing tag
        Given I am on the tags list page
        When I enter a valid tag name in the search box
        Then I should see the matching tag in the results

    @category @smoke
    Scenario: Create a new category successfully
        Given I am on the category list page
        When I click on the "Create Category" button
        And I enter a "valid" category name
        And I submit the category form
        Then I should see the new category in the category list

    @category
    Scenario: Search for an existing category
        Given I am on the category list page
        When I enter a valid category name in the search box
        Then I should see the matching category in the results

    @course @smoke
    Scenario: Create a new course successfully
        Given I am on the course list page
        When I click on the "Create Course" button
        And I enter "valid" course details
        And I submit the course form
        Then I should see the new course in the course list

    @course
    Scenario: Search for an existing course
        Given I am on the course list page
        When I enter a valid course name in the search box
        Then I should see the matching course in the results

    @course
    Scenario: Filter courses by category
        Given I am on the course list page
        When I select a valid category from the filter options
        Then I should see only courses from that category

    @course
    Scenario: Filter courses by tag
        Given I am on the course list page
        When I select a valid tag from the filter options
        Then I should see only courses with that tag

    @course
    Scenario: Sort courses by name
        Given I am on the course list page
        When I sort the courses by name in ascending order
        Then the courses should be displayed in alphabetical order
        
    @certificate
    Scenario: Create a new certificate successfully
        Given I am on the certificate list page
        When I click on the "Create Certificate" button
        And I enter valid certificate details
        And I submit the certificate form
        Then I should see the new certificate in the certificate list

    @certificate
    Scenario: Search for an existing certificate
        Given I am on the certificate list page
        When I enter a valid certificate name in the search box
        Then I should see the matching certificate in the results