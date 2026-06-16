Feature: Promotion BC Automation

    Background: Promtion Navigation

        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Promotions"
        When User is on Promotion Page

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Create <Promotion> promotion with mandatory fields for BC
        When BC User click on "New Promotion" from the Promotion page
        When BC User hits continue button present in <Promotion> promotion
        Then BC User is taken to <Promotion> page
        When BC User enters input data with the mandatory fields in "Basic details" tab for <Promotion> promotion
        Then BC User clicks on "Next" Button in "Basic details" tab from promotion page
        When BC User add the audience group for <Promotion> Promotion
        Then BC User clicks on "Next" Button in "Audience" tab from promotion page
        Then BC "Successful" message shown up
        Examples:
            | Promotion   |
            | BCPromotion |

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: BC create SellXGetY Preloaded sales
        When user search for the "SellXGetY Promotion" promotion in the search bar
        When user selects the "Advanced Setup" for "SellXGetY Promotion"
        Then Verify "Data" section from "SellXGetY Promotion" is displayed
        When user click on "Upload" from Data section
        When BC User enters all the mandatory columns in the csv file for "SXGYSalesCSV"
        When User click on AddFile button
        When BC User Choose the template for the "SalesUpload" csv file
        When BC Upload the csv file "SXGYSalesCSV"
        Then BC Verify the file should be uploaded and displayed
        When BC User click on "Submit" button in Upload file page