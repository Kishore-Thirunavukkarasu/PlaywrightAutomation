Feature: Hierarchy Creation through Form and FileUpload

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Ruthrakanth
    # updated by  = Ruthrakanth
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(Tenant Id)/program/(Program Id)/hierarchy/org/


    Background: Hierarchy Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Setup"
        When User click on the "Hierarchy" submenu
        Then Verify the "Hierarchy" page is displayed

    #File Upload
    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using valid csv file
        When User is on the Hierarchy page
        When User creates a "Sales" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using invalid file format
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with invalid file format
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using missing columns
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with missing columns in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with missing columns
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through file upload using missing rows
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with missing rows in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with missing rows
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up
        Then Verify the hierarchy file should be uploaded
        Then Verify the empty rows should not be uploaded

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a Hierarchy through file upload using file which have missing required fields
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with missing required fields in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with missing required fields
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using invalid datatype
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with invalid datatype
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with invalid data
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message


    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using recordType as add and check the hierarchy is created
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with recordType as add
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with recordType as add
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload using recordType as update and check the hierarchy is updated
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with recordType as update
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with recordType as update
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @positive @reviewed @superadmin @notudated @notautomated
    Scenario: Create an Hierarchy through File Upload with valid parentHierarchyName
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with recordType as update
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with recordType as update
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload with invalid parentHierarchyName
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with invalid parentHierarchyName
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with invalid parentHierarchyName
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload with repeated hierarchyName for the same level
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with repeated hierarchyName for the same level
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with repeated hierarchyName for the same level
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload with repeated hierarchyName for different levels
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with repeated hierarchyName for different levels
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with repeated hierarchyName for different levels
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Creating an Hierachy through File Upload with duplicate hierachy names
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with duplicate hierarchy names
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with duplicate hierarchy names
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message



    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload without recordType
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" without recordType
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without recordType
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload without hierarchyName
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" without hierarchyName
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without hierarchyName
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR002CreateLevels @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload without level
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" without level
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without level
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR003UploadHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload without parentHierarchyName
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" without parentHierarchyName
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without parentHierarchyName
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR002CreateLevels @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload with level1
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with level1
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with level1
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up


    @adminui @hierarchy @HIR002CreateLevels @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an Hierarchy through File Upload with multiple level1
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with multiple level1
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with multiple level1
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR002CreateLevels @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create an hierarchy through fileupload upto level10
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with level10
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with level10
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create an hierarchy through fileupload with more than 10 levels
        When User is on the Hierarchy page
        When User creates a "new" hierarchy
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy" with more than 10 levels
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with more than 10 levels
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload with valid data
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with valid data in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with valid data
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload with invalid hierarchyName
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with invalid hierarchyName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with invalid hierarchyName
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload with valid hierarchyName and invalid parentHierarchyName
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with valid hierarchyName and invalid parentHierarchyName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with valid hierarchyName and invalid parentHierarchyName
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update a Hierarchy through file upload with valid organizationgroupname and same parentorganizationgroupname
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with valid hierarchyName and same parentHierarchyName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with valid hierarchyName and same parentHierarchyName
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @hierarchy @HIR005ViewExistingHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload with different level
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with different level in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with different level
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up


    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload without newOrganizationGroupName
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data without newOrganizationGroupName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without newOrganizationGroupName
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy is not updated
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload without recordType
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data without recordType in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without recordType
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy is not updated
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload without hierarchyName
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data without hierarchyName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without hierarchyName
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy is not updated
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarch @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload without level
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data without level in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without level
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy is not updated
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload without parentHierarchyName
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data without parentHierarchyName in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" without parentHierarchyName
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then Verify the hierarchy is not updated
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR007EditLevels @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update an Hierarchy through File Upload with level1 to level10
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with level1 to level10 in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with level1 to level10
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR007EditLevels @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update and Hierarchy through File Upload with more than 10 levels
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters the data with more than 10 levels in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with more than 10 levels
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message

    @adminui @hierarchy @HIR007EditLevels @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can create only three hierarchy groups
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy group
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy group
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy group
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy group
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up
        Then Verify the hierarchy is not created

    @adminui @hierarchy @HIR007EditLevels @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify upload file in a wrong upload template
        When User is on the Hierarchy page
        When User choose the existing hierarchy to update
        Then Verify the upload button is displayed in hierarchy page
        When User enters all the mandatory columns in the csv file for "Hierarchy"
        When User click on upload button
        When User Choose the template for the "Hierarchy" csv file
        When Upload the csv file "Hierarchy" with wrong template
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up
        Then Verify the hierarchy file should not be uploaded
        Then Verify the logs for the error message
    #----------------------------------------------------------------------------------------------------------------------------------------


    @adminui @hierarchy @HIR001CreateHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the hierarchy where the name is already exists for existing hierarchy
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up
        Then Verify the hierarchy is not created

    @adminui @hierarchy @HIR001CreateHierarchy @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create a new hierarchy manually by click on add new hierarchy button
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Add" button in hierarchy creation page

    @adminui @hierarchy @HIR001CreateHierarchy @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Cancel the Hierarchy creation by click on cancel button
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Cancel" button in hierarchy creation page
        Then Verify the hiearchy is not created

    @adminui @hierarchy @HIR010CreateMultipleHierarchiesForOneProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create two hierachies manually with same name
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy"
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up
        Then Verify the hierarchy is not created.

    @adminui @hierarchy @HIR010CreateMultipleHierarchiesForOneProgram @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create two hierachies manually
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy1"
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User enters the hierarchy name "TestHierarchy2"
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR001CreateHierarchy @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Creating Hierarchy with same name
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy with existing name
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up

    @adminui @hierarchy @HIR010CreateMultipleHierarchiesForOneProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to create more than three hierarchies
        When User is on the Hierarchy page
        When User click on the add button to create a new hierarchy
        Then Verify the Hierarchy Creation Popup appears
        When User tries to create more than three hierarchies
        Then "Error" message shown up
        Then Verify the hierarchy is not created

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple levels can be created for a single hierarchy
        When User is on the Hierarchy page
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy level creation page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the child hierarchy to a parent hierarchy
        When User is on the Hierarchy page
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy level creation page
        Then "Successful" message shown up
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy level creation page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the same name for hierarchy nodes where the nodes are from different Hierarchies
        When User is on the Hierarchy page
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy level creation page
        Then "Successful" message shown up
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy level creation page
        Then "Successful" message shown up
        When User selects the Hierarchy to create multiple levels
        When User click on the add button to create a new hierarchy level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to create hierarchy with one level
        When User is on the Hierarchy page
        When User click on the add button to create a hierarchy with one level
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to create hierarchy with multiple levels less than 10
        When User is on the Hierarchy page
        When User click on the add button to create a hierarchy with multiple levels
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create more than 10 levels
        When User is on the Hierarchy page
        When User click on the add button to create a hierarchy more than 10 levels
        When User enters the hierarchy group name
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up

    @adminui @hierarchy @HIR002CreateLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Creating hierarchy level groups in levels with same name
        When User is on the Hierarchy page
        When User click on the add button to create a hierarchy level group with existing name
        When User clicks on "Add" button in hierarchy creation page
        Then "Error" message shown up

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit the Hierarchies manually
        When User is on the Hierarchy page
        When User click on the edit button on hierarchy name
        When User enters the new hierarchy name
        When User clicks on "Save" button in hierarchy edit page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit the Hierarchies manually & click on Cancel
        When User is on the Hierarchy page
        When User click on the edit button on hierarchy name
        When User enters the new hierarchy name
        When User clicks on "Cancel" button in hierarchy edit page
        Then No update should be made

    @adminui @hierarchy @HIR008EditHierarchyNodes @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit the hierarchy nodes manually
        When User is on the Hierarchy page
        When User click on the edit button on the hierarchy level nodes
        When User enters the new hierarchy group name
        When User clicks on "Save" button in hierarchy edit page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR008EditHierarchyNodes @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit the hierarchy nodes manually & click on Cancel
        When User is on the Hierarchy page
        When User click on the edit button on the hierarchy level nodes
        When User enters the new hierarchy group name
        When User clicks on "Cancel" button in hierarchy edit page
        Then No update should be made

    @adminui @hierarchy @HIR004EditExistingHierarchy @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update Hierarchy with same name
        When User is on the Hierarchy page
        When User click on edit button
        When User enters a hierarchy with existing name
        When User clicks on "Save" button in hierarchy edit page
        Then "Error" message shown up

    @adminui @hierarchy @HIR007EditLevels @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the hierarchy by adding multiple levels
        When User is on the Hierarchy page
        When User click on the edit button on the hierarchy level nodes
        When User enters the new hierarchy group name
        When User clicks on "Save" button in hierarchy edit page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR007EditLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the hierachy with more than 10levels
        When User is on the Hierarchy page
        When User adds the hierarchy with more than 10 levels
        When User clicks on "Save" button in hierarchy edit page
        Then "Error" message shown up

    @adminui @hierarchy @HIR008EditHierarchyNodes @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the hierarchy by changing the hierarchy node names
        When User is on the Hierarchy page
        When User edits the hierarchy node and replaces it with a new name
        When User follows the same step for multiple node
        When User clicks on "Save" button in hierarchy edit page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR007EditLevels @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update hierarchy level nodes with same name
        When User is on the Hierarchy page
        When User click on edit button
        When User enters a hierarchy node with existing name
        When User clicks on "Save" button in hierarchy edit page
        Then "Error" message shown up

    @adminui @hierarchy @HIR006DeleteExistingHierarchy @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete the Hierarchies manually
        When User is on the Hierarchy page
        When User selected the hierarchy to be deleted
        When User clicks on "Delete" button in hierarchy delete page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR006DeleteExistingHierarchy @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete the Hierarchy level manually
        When User is on the Hierarchy page
        When User selected the hierarchy level to be deleted
        When User clicks on "Delete" button in hierarchy delete page
        Then "Successful" message shown up

    @adminui @hierarchy @HIR006DeleteExistingHierarchy @system @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot able to delete the hierarchy if any organization/users are mapped to that hierarchy
        When User is on the Hierarchy page
        When User selects the hierarchy that is mapped to organization/users
        When User clicks on "Delete" button in hierarchy delete page
        Then "Error" message shown up
        Then Verify the hierarchy is not deleted

    @adminui @hierarchy @HIR006DeleteExistingHierarchy @system @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot able to delete the hierarchy level if any organization/users are mapped to that hierarchy level
        When User is on the Hierarchy page
        When User selects the hierarchy level that is mapped to organization/users
        When User clicks on "Delete" button in hierarchy delete page
        Then "Error" message shown up
        Then Verify the hierarchy level is not deleted

    @adminui @hierarchy @HIR006DeleteExistingHierarchy @system @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user tries to delete the hierarchy level when all users and organization linked to that hierarchy are inactive


    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Super admin can able to create, view, edit and delete the hierarchies
        When User is on the Hierarchy page
        When User with all permissions
        When User create a new hierarchy
        Then "Successful" message shown up
        Then Verify the user can able to view the hierarchy
        Then Verify the user can able to edit the hierarchy
        Then Verify the user can able to delete the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify the tenant admin with all permissions can able to create, view, edit and delete the hierarchies
        When User is on the Hierarchy page
        When User with all permissions
        When User create a new hierarchy
        Then "Successful" message shown up
        Then Verify the user can able to view the hierarchy
        Then Verify the user can able to edit the hierarchy
        Then Verify the user can able to delete the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify the tenant admin with create access can able to delete the Hierarchy
        When User is on the Hierarchy page
        When User with all permissions
        When User create a new hierarchy
        Then "Successful" message shown up
        When Verify the user can able to delete the hierarchy
        Then "Error" message shown up

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user without RBAC permission to create, tries to upload and create hierarchy
        When When User is on the Hierarchy page
        When User without create permissions
        When User create a new hierarchy
        Then "Error" message shown up

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user without RBAC permission to update, tries to upload and update hierarchy and nodes
        When When User is on the Hierarchy page
        When User without update permissions
        When User create a new hierarchy
        Then "Error" message shown up

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user with view permission can only able to view the hierarchies
        When User is on the Hierarchy page
        When User with view permission
        Then Verify the user can able to view the hierarchy
        Then Verify the user can not able to create the hierarchy
        Then Verify the user can not able to edit the hierarchy
        Then Verify the user can not able to delete the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user with edit permission can only able to edit the hierarchies
        When User is on the Hierarchy page
        When User with edit permission
        Then Verify the user can able to edit the hierarchy
        Then Verify the user can not able to create the hierarchy
        Then Verify the user can able to view the hierarchy
        Then Verify the user can not able to delete the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @delete @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user with delete permission can only able to delete the hierarchies
        When User is on the Hierarchy page
        When User with delete permission
        Then Verify the user can able to delete the hierarchy
        Then Verify the user can not able to create the hierarchy
        Then Verify the user can not able to view the hierarchy
        Then Verify the user can not able to edit the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user with no permission cannot able to access the hierarchies
        When User is on the Hierarchy page
        When User with no permission
        Then Verify the user can not able to create the hierarchy
        Then Verify the user can not able to view the hierarchy
        Then Verify the user can not able to edit the hierarchy
        Then Verify the user can not able to delete the hierarchy

    @adminui @hierarchy @HIR009RBACforHierarchy @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user with permission limited to a specific program can only able to access the hierarchies of that program
        When User is on the Hierarchy page
        When User with permission limited to a specific program
        Then Verify the user can able to access the hierarchies of that program
        Then Verify the user can not able to access the hierarchies of other programs

    @adminui @hierarchy @HIR005ViewExistingHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to view the hierarchy with levels when it is created
        When User is on the Hierarchy page
        When User create a new hierarchy with levels
        Then Verify the user can able to view the hierarchy with levels

    @adminui @hierarchy @HIR005ViewExistingHierarchy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to view different hierarchies created within a program
        When User is on the Hierarchy page
        When User create multiple hierarchies with different levels
        Then Verify the user can able to view all the created hierarchies with levels

    @adminui @hierarchy @HIR011MappingOrganizationtoHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to add the organization to the hierarchy level
        When User is on the Hierarchy page
        When User create a new hierarchy with levels
        When User creates a new organization
        Then Verify the user can able to view the new hierachy in the organization mapping to hierarchy page
        When User selects the hierarchy level
        Then Verify the user can able to map the organization to the hierarchy level successfully

    @adminui @hierarchy @HIR011MappingOrganizationtoHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the Name of the hierarchy nodes will be available as part of the export file for translations

    @adminui @hierarchy @HIR011MappingOrganizationtoHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify error message for duplicate file upload.