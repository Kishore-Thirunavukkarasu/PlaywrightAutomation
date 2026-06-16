Feature: SellXgetY promotion


    # created by  = Kishore Thirunavukkarasu
    # reviewed by = kadarkarai selvam
    # updated by  =

    Background: SellXGetY Promotion Creation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        Then Verify the user is on the program landing page
        When User click on "Promotions"
        Then Verify the "Promotions" page is displayed

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: create SellXGetY Preloaded sales
        When user search for the "SellXGetY Promotion" promotion in the search bar
        When user selects the "Advanced Setup" for "SellXGetY Promotion"
        Then Verify "Data" section from "SellXGetY Promotion" is displayed
        When User click on the "create view" from the data section
        Then User should able to see the view config page
        When User creates a view with manual query for "SellXGetY Promotion"
        When User "Publish" the view for "SellXGetY Promotion"
        When User Navigate to "Measures" section in "SellXGetY Promotion"
        When User click on "Add Measure" button in measure page
        When User configure Measure Basic Details "SellXGetY Promotion"
        When User configure Measure Rule for "SellXGetY Promotion"
        When User click on "Add" button in the Measure Rule Page
        Then Verify the "SellXGetY Promotion" Measure Rule is created successfully
        When User click on "Submit" button from the Measure page
        Then "Successful" message shown up
        When User Navigate to "Data" section in "SellXGetY Promotion"
        When user click on "Upload" from Data section
        When User enters all the mandatory columns in the csv file for "SellXGetY Eligible Product Reward"
        When User click on AddFile button
        When User Choose the template for the "Eligible Product Reward" csv file
        When Upload the csv file "SellXGetY Eligible Product Reward"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When user click on "Upload" from Data section
        When User enters all the mandatory columns in the csv file for "SXGYSalesCSV"
        When User click on AddFile button
        When User Choose the template for the "SalesUpload" csv file
        When Upload the csv file "SXGYSalesCSV"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        When User publish the "SellXGetY Promotion"
        Then "Successful" message shown up

    # *****************************  depends upon promotion period  *****************************
    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales for a user is triggering the points if the sale occurs within promotion period

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales for a user is triggering the points if the sale occurs within promotion period on the starting date of promotion

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is triggering the points if the sale occurs within promotion period on the ending date of promotion

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is not triggering the points if the sale occurs outside promotion period

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is triggering the points if the sale occurs within promotion period and the user is eligible for the promotion

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is not triggering the points if the sale occurs within promotion period and the user is not eligible for the promotion

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is not triggering the points if the sale occurs before the promotion start date but the promotion is published

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify sales is not triggering the points if the sale occurs after the promotion start date but the promotion is not published.

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify once the promotion has past date as start date and now user publish it, then verify the sales which happened after the start date (which is the past date), should trigger points if user achieves the target.


    # *****************************  users eligibility  *****************************
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will achieve the target and the user is eligible for promotion, then the user will get the reward. For the static audience

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will achieve the target and the user is eligible for promotion, then the user will get the reward. For the dynamic audience with job role

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will achieve the target and the user is eligible for promotion, then the user will get the reward. For the dynamic audience with organization

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will achieve the target and the user is eligible for promotion, then the user will get the reward. For the dynamic audience with custom attributes

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will not achieve the target and the user is eligible for promotion, then the user will not get the reward.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sales upload for a user where the upload will achieve the target and the user is not eligible for promotion, then the user will not get the reward.

    # users sudden eligibility after adding to the audience group
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding a user to an static audience and verify the promotion which contains that as eligible audience is awarding the points if the new user completes the target after the user is added to the audience group and promotion is active during user's sales

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding a user to an static audience and verify the promotion which contains that as eligible audience is not awarding the points if the new user completes the target before the user is added to the audience group and promotion is active during user's sales

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and there is an active promotion which requires x amount of sales. When that user is added to the static audience group now (i.e, after the sales are present inside the system), then the user will get the reward as he/she acheived it.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and there is an active promotion which requires x amount of sales. When that user is added to the dynamic audience group now (i.e, after the sales are present inside the system), then the user will get the reward as he/she acheived it.

    # users sudden ineligibility after removing from the audience group
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and awared with points as he/she is eligible for that promotion. When this user is removed from the static audience group now, then the awarded points should not be removed.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and awared with points as he/she is eligible for that promotion. When this user is removed from the dynamic audience group now, then the awarded points should not be removed.

    # users sudden ineleigibility after promotion period
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and awared with points as he/she is eligible for that promotion. When this user is removed from the static audience group after the promotion end date, then the awarded points should not be removed.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user already completed the x amount of sales and awared with points as he/she is eligible for that promotion. When this user is removed from the dynamic audience group after the promotion end date, then the awarded points should not be removed.


    # users ineligible as he/she is excluding it from the audience group before the promotion period
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is excluded from the audience which is an eligible for the promotion. If that user is achieving the target for that promotion, system should not award points for that user

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user is present in the eligible audience group for a promotion. If the audience contains the organization x as exclusion where that orgnaization is primary for that user, then the user should not be eligible for the promotion and the rewards cannot be awarded

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user is present in the eligible audience group for a promotion. If the audience contains the organization x as exclusion where that orgnaization is secondary for that user, then the user should be eligible for the promotion and the rewards can be awarded


    # During promotion period user is excluded somehow
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the audience is updated by excluding the user then verify the user is not a part of the promotion and rewards cannot be awarded after that updated. Already existing awarded points should not be removed

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the eligible audience user becomes inactive then verify the user should not be a part of promotion and rewards cannot be awarded. Already existing awarded points should not be removed

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the user is added to the eligible audience group but the user is not activated. Creating a sales for that user before activation, should not award points and show the error message for the sales upload.

    # During promotion period user is included somehow
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the eligible dynamic audience list has been updated by adding a user with the organization then verify the user is eligible for the promotion and rewards can be awarded when the user completes the target

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the eligible dynamic audience list has been updated by adding a user with the custom audience then verify the user is eligible for the promotion and rewards can be awarded when the user completes the target

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the user's existing job role is changed then verify the user is eligible for the promotion only and rewards can be awarded when the user completes the target

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the promotion is started and the user's existing organization is changed then verify the user is eligible for the promotion only and rewards can be awarded when the user completes the target

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding the user to the promotion where user can be both eligible and reporting audience then verify the user can be a part of the promotion and sales can be claimed

    #Product
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user completing the target by uploading the same product with multiple times gets awarded with points

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user completing the target by uploading different product with multiple times gets awarded with points

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify during promotion period, user uploads the new product and verify user completing the sales for the product with the mentioned target will get awarded.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify during promotion period, user already got points for the product x and y sales. Now product x is updated and user uploads the sales for the product x wherein it completes another target. Verify user gets awarded with points for the new target


    # Preloaded sales
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploaded the preloaded sales where sales are made with more than one eligible user and verify the rewards are awarded for the target achieved users

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as sum of value
        When Admin click on "New Promotion" button from promotion screen
        When Admin creates a new "Single/Multiple Measures" promotion
        When Admin enters the basic details in the promotion screen for sellxgety promotion
        Then Verify the Audience page is displayed when click on next button for sellxgety promotion
        When Admin selects the "eligible audience" for sellxgety promotion
        When Admin selects the "reporting audience" for sellxgety promotion
        Then Verify the users are added for sellxgety promotion
        When Click on next button from the audience page
        Then Verify the sellxgety promotion created successfully
        When Admin click on the three dots from the created sellxgety promotion
        When Admin selects the "Setup Promotion" from the elipsis menu for sellxgety promotion
        Then Verify the view page is displayed
        When Admin creates a view by click on the "Create View" button
        When Admin enters the mandatory fields for view creation
        When Admin selects the "products" and "sales" tables for view creation
        Then Verify the selected tables are displayed in the view creation
        When Admin selects the columns from the "products" table for sellxgety promotion
        When Admin selects the columns from the "sales" table for sellxgety promotion
        When Admin creates a custom column as aggregated for "SalesQuantity"
        When Admin enters the formula for the sum of total SalesQuantity
        When Admin creates a custom column as aggregated for "SalesValue"
        When Admin enters the formula for the sum of total SalesValue
        When Admin selects the "sales" table for Datasource selection
        When Admin Define joint condition for the sellxgety promotion
        Then Click and create and verify the view is created successfully
        When Admin click on elipsis from the created view
        When Admin click on "View Sample Data" from the elipsis
        Then Verify the Sample data is displayed with sum of quantity and value
        When Admin click on elipsis from the created view
        When Admin click on "Publish" and publishes the view
        Then Verify the view is published successfully


    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as count of value

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as average of value

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as min of value

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as max of value

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as Standard deviation of value

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin uploaded the preloaded sales where single user have multiple sales and verify the all the sale value is added to the view if we have view as quantity of value


    #Sales claim
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when preloaded sales is uploaded without userid and verify user can claim the sales for sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when preloaded sales is uploaded with userid and verify user cannot able to claim the sales for sellXgetY promotion (verify with api layer also)

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the preloaded sales file is uploaded without userid and the eligible user can able to do multiple claims for the sales for sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the preloaded sales file is uploaded without user id and verify the eligible user cannot able to do claims more than one time

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot claim already claimed sales for sellXgetY promotion


    #Invoice Claim
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a eligible user for promotion is uploaded with invoice and the uploaded invoice achieves the target. Verify reward is awarded once the sale is approved.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a eligible user for promotion is uploaded with invoice and the uploaded invoice achieves the target. Verify reward is awarded once the sale is uploaded where approval is not configured.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a eligible user for promotion is uploaded with invoice and the uploaded invoice achieves the target. Verify reward is not awarded as the sale is rejected.

    @adminui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a eligible user for promotion is uploaded with invoice and the uploaded invoice achieves the target. As the reporting user rejects the claim and user uploaded and reclaim it. If the invoice is approved, then verify reward is awarded.


    #Reversal
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify points are awarded for the user who achieved the target. Now reporting user rejects the claim and this makes the user not achiveing the target; then point reversal should be happened for the last reward applied.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify points are awareded for the user once the user claims the preloaded sales. As another user challenges for the same claim, if reporting user approves for the another user which rejects the current points awareded user claim as invalid, then point reversal should be happened for the last reward applied.

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the eligibility criteria of measure rule cannot be updated once it is published for sellXgetY promotion


    #Banking
    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the banking type as transactional and when user makes a claim then the points can be awarded in transactional wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the transactional banking with subtype as scheduled and when user makes a claim then the points can be awarded in scheduled transactional wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the transactional banking with subtype as automatic and when user makes a claim then the points can be awarded in automatic transactional wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the transactional banking with subtype as manual and when user makes a claim then the points can be awarded by triggering it manually

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the banking type as batch wise and when user makes a claim then the points can be awarded in batch wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the batch banking with subtype as scheduled and when user makes a claim then the points can be awarded in scheduled batch wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the batch banking with subtype as automatic and when user makes a claim then the points can be awarded in automatic batch wise

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the batch banking with subtype as manual and when user makes a claim then the points can be awarded by triggering it manually

    #Reward

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward type as points and when user makes a claim then the points can be awarded for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward type as score and when user makes a claim then the score can be awarded for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward type as gametoken and when user makes a claim then the gametoken can be awarded for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the eligible user achieves the target and makes a claim then the rewards can be awarded for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the eligible user achieves the target and makes a claim then the rewards cannot be awarded more than the configured rules value for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the status of the claim to be reviewed before the banking for sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot able to claim multiple times for the same sales for sellXgetY promotion


    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when the invalid claim is raised by the eligible user then the rewards cannot be awarded for the sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a claim is made and the challenge is raised by an user then the rewards can be awarded to the challenged user once the challenge is resolved and the challenged user won it for sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when a claim is made and the challenge is raised by an user then the rewards are not retained once the challenge is resolved and the first claimed user won it for sellXgetY promotion

    @platformui @SellXGetY @PRM001CreateNewPromotion_SellXGetY @scenario @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rewards are retained from the first claimed user and awarded to the challenged user once the challenge is resolved and the challenged user won it for sellXgetY promotion


# Questions
# 1
# for preloaded sales upload with user detail, if admin uploads the sales within promotion period but uploading it after the promotion completion date. What we will do !?