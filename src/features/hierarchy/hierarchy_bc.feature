Feature: Hierarchy Backward Compatibility (extracted @notautomated scenarios

    Background: Hierarchy Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Setup"
        When User click on the "Hierarchy" submenu
        Then Verify the "Hierarchy" page is displayed

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using valid csv file
        When BC User is on the Hierarchy page
        When BC User creates a "SalesBC" hierarchy
        When BC User selects the Hierarchy
        Then BC Verify the upload button is displayed in hierarchy page
        When BC User enters all the mandatory columns in the csv file for "Hierarchy"
        When BC User click on upload button
        When BC User Choose the template for the "Hierarchy" csv file
        When BC Upload the csv file "Hierarchy"
        Then BC Verify the file should be uploaded and displayed
        When BC User click on "Submit" button in Upload file page
        Then BC "Successful" message shown up for file upload
        When BC User selects the Hierarchy
        When BC Verify the hierarchy is created through file upload
        When BC User click on the delete button to delete the selected hierarchy
        Then BC "Successful" message shown up

    @adminui @hierarchy @HIR001CreateHierarchy @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create a new hierarchy manually by click on add new hierarchy button
        When BC User is on the Hierarchy page
        When BC User click on the add button to create a new hierarchy
        Then BC Verify the Hierarchy Creation Popup appears
        When BC User enters the hierarchy name for BC Hierarchy
        When BC User clicks on "Add" button in hierarchy creation page

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple levels can be created for a single hierarchy
        When BC User is on the Hierarchy page
        When BC User selects the Hierarchy to create multiple levels
        When BC User click on the add button to create a new hierarchy level
        When BC User enters the hierarchy group name
        When BC User clicks on "Add" button in hierarchy level creation page
        Then BC "Successful" message shown up

    @adminui @hierarchy @HIR004DeleteHierarchy @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the hierarchy can be deleted
        When BC User is on the Hierarchy page
        When BC User selects the Hierarchy created Manually
        When BC User click on the delete button to delete the selected hierarchy
        Then BC "Successful" message shown up
