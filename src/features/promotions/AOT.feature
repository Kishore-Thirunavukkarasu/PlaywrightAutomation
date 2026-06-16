Feature: AOT Promotion

    # created by  = Ruthrakkanth
    # reviewed by = Kishore Gunasekaran
    # updated by  =
    # project url =

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
    Scenario: Verify the E2E for the AOT Promotion
        When User search for the "AOT Promotion" promotion in the search bar
        When user selects the "Advanced Setup" for "AOT Promotion"
        Then Verify "Data" section from "AOT Promotion" is displayed
        When User click on the "create view" from the data section
        Then User should able to see the view config page
        When User creates a view with manual query for "AOT Promotion"
        When User "Publish" the view for "AOT Promotion"
        When User Navigate to "Measures" section in "AOT Promotion"
        When User click on "Add Measure" button in measure page
        When User configure Measure Basic Details "AOT Promotion"
        When User configure Measure Rule for "AOT Promotion"
        When User click on "Add" button in the Measure Rule Page
        Then Verify the "AOT Promotion" Measure Rule is created successfully
        When User click on "Submit" button from the Measure page
        Then "Successful" message shown up
        When User Navigate to "Data" section in "AOT Promotion"
        When user click on "Upload" from Data section
        When User enters all the mandatory columns in the csv file for "AOT Eligible Product Reward"
        When User click on AddFile button
        When User Choose the template for the "Eligible Product Reward" csv file
        When Upload the csv file "AOT Eligible Product Reward"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User enters all the mandatory columns in the csv file for "AOT User Target"
        When User click on AddFile button
        When User Choose the template for the "User Target" csv file
        When Upload the csv file "AOT User Target"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User enters all the mandatory columns in the csv file for "AOT Sales"
        When User click on AddFile button
        When User Choose the template for the "SalesUpload" csv file
        When Upload the csv file "AOT Sales"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User publish the "AOT Promotion"
        Then "Successful" message shown up


    #Promotion Period

    Scenario: Verify creating a AOT promotion within promotiom period

    Scenario: Verify creating a AOT promotion outside promotiom period

    #Audience

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Creating AOT promotion with static audience and verify the audience user are included in the promotion

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Creating AOT promotion with dynamic audience and verify the audience user are included in the promotion

    Scenario: Exclude a participant user from the audience and verify the user is not eligible for the AOT promotion

    Scenario: Exclude an organization from the promotion and verify the participant from the excluded organization should not be eligible for the promotion

    Scenario: Verify where the audience list is updated and the participant user is removed from the audience list

    Scenario: Verify the participant user is already a part of promotion and the user is excluded from the audience list

    Scenario: Verify the scenario where the same participant user is added in both eligible audience and reporting audience

    Scenario: Verify the dynamic audience in the AOT promotion where the user jobrole changes

    # Claim method - Import sales and sales claim
    # Metrics - quantity and value is not there in 2.0

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify AOT with banking type as batch

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify AOT with banking type as transactional

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify AOT with banking trigger as scheduled

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify AOT with banking trigger as automatic

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify AOT with banking triggeras manual

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward type as points for AOT promotion

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward type as Score for AOT promotion

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can specify the Max points that can be awarded for participants in AOT promotion

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can specify the Max points for the AOT promotion

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the participant user achieved the target for AOT promotion and rewards are banked

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the participant user achieved the target for AOT promotion and banked points does not exceed the maximum limit

    @platformui @promotionEngine @PRM001CreateNewPromotion @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim status before banking for AOT promotion

    Scenario: Verify user is able to create a AOT promotion based on Quantity

    Scenario: Verify user is able to create a AOT promotion based on Value

    Scenario: Verify user is able to select the Promotion currency as Spendable Points

    Scenario: Verify user is able to select the Promotion currency as Non-Spendable Points

    Scenario: Verify iser is able to select the Promtion currency as Manual Award

    Scenario: Verify user is able to select Sales Achievement level as Participant

    Scenario: Verify user is able to select Sales Achievement level as Organisation

    Scenario: Verify whether League page, My performance page will only be available for AOT promotion