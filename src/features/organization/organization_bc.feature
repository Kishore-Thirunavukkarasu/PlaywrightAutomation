Feature: BC for Organization

    Background: Organization Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Organization" submenu
        Then Verify the "Organization" page is displayed

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @smoke1 @reviewed @superadmin @updated @notautomated
    Scenario: BC Create a new organization <Organization> with all mandatory fields
        When BC User is on the Organization page
        When BC User click on "Add organization" button to create a new organization
        Then BC Add Organization form should be displayed
        When BC User enters all the mandatory fields in the form for <Organization> organization
        When BC User click on "Submit" button in Add organization page
        Then BC "Successful" message shown up
        Examples:
            | Organization    |
            | BCOrganization1 |


    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: BC Create a new organization through File Upload using valid csv file
        When BC User is on the Organization page
        When BC User click on upload button
        When BC User enters all the mandatory columns in the csv file for "Organization"
        When BC User Choose the template for the "Organization" csv file
        When BC Upload the csv file "Organization"
        Then BC Verify the file should be uploaded and displayed
        When BC User click on "Submit" button in Upload file page
        Then BC "Successful" message shown up for file upload