Feature: Organization Promotion Setup


    Background: Promotion Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        #When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Promotions"
        Then Verify the "Promotion" page is displayed

    @adminui @promotion @PRM002CreateNewPromotion @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the E2E for the OrganizationTarget Promotion
        When User search for the "OrganizationTarget Promotion" promotion in the search bar
        When user selects the "Advanced Setup" for "OrganizationTarget Promotion"
        Then Verify "Data" section from "OrganizationTarget Promotion" is displayed
        When User click on the "create view" from the data section
        Then User should able to see the view config page
        When User creates a view with manual query for "OrganizationTarget Promotion"
        When User "Publish" the view for "OrganizationTarget Promotion"
        When User Navigate to "Measures" section in "OrganizationTarget Promotion"
        When User click on "Add Measure" button in measure page
        When User configure Measure Basic Details "OrganizationTarget Promotion"
        When User configure Measure Rule for "OrganizationTarget Promotion"
        When User click on "Add" button in the Measure Rule Page
        Then Verify the "OrganizationTarget Promotion" Measure Rule is created successfully
        When User click on "Submit" button from the Measure page
        Then "Successful" message shown up
        When User Navigate to "Data" section in "OrganizationTarget Promotion"
        When user click on "Upload" from Data section
        When User enters all the mandatory columns in the csv file for "OrganizationTarget Eligible Product Reward"
        When User click on AddFile button
        When User Choose the template for the "Eligible Product Reward" csv file
        When Upload the csv file "OrganizationTarget Eligible Product Reward"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User enters all the mandatory columns in the csv file for "OrganizationTarget User Target"
        When User click on AddFile button
        When User Choose the template for the "User Target" csv file
        When Upload the csv file "OrganizationTarget User Target"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User enters all the mandatory columns in the csv file for "OrganizationTarget Sales"
        When User click on AddFile button
        When User Choose the template for the "SalesUpload" csv file
        When Upload the csv file "OrganizationTarget Sales"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User publish the "OrganizationTarget Promotion"
        Then "Successful" message shown up