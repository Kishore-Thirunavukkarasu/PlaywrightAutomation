Feature: Direct Point Deposit

    # created by  = Ruthrakkanth
    # reviewed by =
    # updated by  = Kishore Gunasekaran
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

    @adminui @DirectPointDeposit @DPDCreate @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Upload the DPD Pointdeposit File for the Promotion
        When user search for the "DPD Promotion" promotion in the search bar
        When user selects the "Advanced Setup" for "DPD Promotion"
        Then Verify the "DPD" view is displayed
        When User Navigate to "Measures" section in "DPD Promotion"
        When User click on "Add Measure" button in measure page
        When User configure Measure Basic Details "DPD Promotion"
        When User configure Measure Rule for "DPD Promotion"
        When User click on "Add" button in the Measure Rule Page
        Then Verify the "DPD Promotion" Measure Rule is created successfully
        When User click on "Submit" button from the Measure page
        Then "Successful" message shown up
        When User Navigate to "Data" section in "DPD Promotion"
        When user click on "Upload" from Data section
        When User enters all the mandatory columns in the csv file for "DPD Promotion"
        When User click on AddFile button
        When User Choose the template for the "DirectPointDeposit" csv file
        When Upload the csv file "DPDPromotion"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User publish the "DPD Promotion"
        Then "Successful" message shown up



    @adminui @DirectPointDeposit @DPDCreate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to see the direct promotion type on Clicking Get Started button

    @adminui @DirectPointDeposit @DPDCreate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Direct Point Deposit Promotion type

    @adminui @DirectPointDeposit @DPDCreate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to enter valid input data with Basic details & proceed to the next screen

    #Audience page

    @adminui @DirectPointDeposit @DPDAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the Reporting audience is not displayed in the Audience page

    @adminui @DirectPointDeposit @DPDAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Add Multiple Audience group under Eligible Audience

    @adminui @DirectPointDeposit @DPDAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify excluding the user from the audience and the points cannot be awarded for the excluded users

    @adminui @DirectPointDeposit @DPDAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify excluding the organization from the audience and the points cannot be awarded for the users in the excluded organization

    @adminui @DirectPointDeposit @DPDAudience @system @delete @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Excluded user/organization can be deleted from the list and the points can be awarded for the user

    @adminui @DirectPointDeposit @DPDViews @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user cannot able to create a new view inside the dpd promotion views

    @adminui @DirectPointDeposit @DPDViews @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the view is pre created in the views tab

    @adminui @DirectPointDeposit @DPDViews @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to preview the sample data by clicking on the three dots

    @adminui @DirectPointDeposit @DPDViews @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to download the data in Excel by clicking on the three dots

    @adminui @DirectPointDeposit @DPDViews @system @delete @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user cannot able to delete the view when delete button is clicked from the three dots

    @adminui @DirectPointDeposit @DPDViews @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user cannot able to edit the view when edit button is clicked from the three dots

    @adminui @DirectPointDeposit @DPDUpload @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot able to upload the file with invalid format

    @adminui @DirectPointDeposit @DPDUpload @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload a file with invalid row values and error are displayed in the file after the upload is done

    @adminui @DirectPointDeposit @DPDUpload @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload a file with additional/invalid columns and errors are displayed in the file after the upload is done

    @adminui @DirectPointDeposit @DPDUpload @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload a file with valid data and the points are awarded to the users

    @adminui @DirectPointDeposit @DPDUpload @system @search @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user is able to search for file using File name

    @adminui @DirectPointDeposit @DPDUpload @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to download the uploaded file and view data

    @adminui @DirectPointDeposit @DPDUpload @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to view the error from the downloaded file

    @adminui @DirectPointDeposit @DPDUpload @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether all the uploads are displayed in the list


    # Measure
    @adminui @DirectPointDeposit @DPDMeasure @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create a new measure for the Direct Point Deposit promotion by clicking on the New Measure button

    @adminui @DirectPointDeposit @DPDMeasure @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Create new measure screen consists of Basic Information & Measure rules tab

    @adminui @DirectPointDeposit @DPDMeasure @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the basic information page contains the basic info and points banking section

    @adminui @DirectPointDeposit @DPDMeasure @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify entering the data with mandatory fields in the basic details section

    @adminui @DirectPointDeposit @DPDMeasure @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Data source type and Data source name fields cannot be edited in the basic details section


    # Points Banking

    @adminui @DirectPointDeposit @DPDMeasure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to enable Points Banking within Basic Information tab

    @adminui @DirectPointDeposit @DPDMeasure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to disable Points Banking within Basic Information tab

    @adminui @DirectPointDeposit @DPDMeasure @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to continue without enabling the points banking

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to select Banking Type as "Transaction wise Banking" under Points Banking

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Transactional" and Banking Trigger as "Scheduled Banking" then verify the banking is done at the configured scheduled date

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Transactional" and Banking Trigger as "Automatic Banking" then verify the banking is done automatically once the file is uploaded

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Transactional" and Banking Trigger as "Manual Banking" then verify the banking is done manually

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Transactional" and Banking Trigger as "Manual Banking" then verify the banking is not done before the trigger is made manually

    @adminui @DirectPointDeposit @DPDBanking @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Transactional" and Banking Trigger as "Scheduled Banking" then verify the banking is not done before the trigger date

    @adminui @DirectPointDeposit @DPDBanking @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Type as "Batch Banking" under Points Banking

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Batch" and Banking Trigger as "Scheduled Banking" then verify the banking is done at the configured scheduled date

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Batch" and Banking Trigger as "Automatic Banking" then verify the banking is done automatically once the file is uploaded

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Batch" and Banking Trigger as "Manual Banking" then verify the banking is done manually

    @adminui @DirectPointDeposit @DPDBanking @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Batch" and Banking Trigger as "Manual Banking" then verify the banking is not done before the trigger is made manually

    @adminui @DirectPointDeposit @DPDBanking @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to select banking type as "Batch" and Banking Trigger as "Scheduled Banking" then verify the banking is not done before the trigger date

    @adminui @DirectPointDeposit @DPDBanking @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the banking cannot be done after the promotion end date when the trigger type as "Manual Banking"

    @adminui @DirectPointDeposit @DPDBanking @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the banking type as "scheduled" and the scheduled date cannot be greater than the promotion end date

    # Measure rules

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is navigated to Measure rules screen on clicking Submit button after entering data with all the mandatory fields

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Trigger Type as Event Based

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Trigger Type as Schedule Based

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Trigger Type as Manual Based

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Trigger Event and Datasource, trigger fields are displayed when Trigger Type is selected as Event Based

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Trigger Event and Datasource fields are not displayed when Trigger Type is selected as Schedule based and showing up cron expression

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the data source should have all the schemas

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger event should contain all the created events

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user cannot able to create more than one event based triggers for the measure

    @adminui @DirectPointDeposit @DPDMeasureRules @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rule trigger can be deleted from the measure

    # can we delete the single rule from dpd

    @adminui @DirectPointDeposit @DPDMeasureRules @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the rule trigger type as even based and when any event is triggered in selected column the rule is triggered

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the Recurrence Pattern field is displayed when user selects Schedule based Trigger Type

    @adminui @DirectPointDeposit @DPDMeasureRules @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Schedule based trigger is initiated based on the given CRON expression for the measure

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can enter valid CRON expression in Recurrence Pattern field

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when user adds invalid CRON expression in Recurrence Pattern field

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRON expression can be set weekly in Schedule based trigger and check the trigger is initiated every week accordingly

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRON expression can be set daily in Schedule based trigger and promotion with one day of completion, and check trigger is not initiated

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRON expression can be set monthly in Schedule based trigger and with less than one month of promotion end date and check the trigger is not intiated within the time

    @adminui @DirectPointDeposit @DPDMeasureRules @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRON expression is set for a specific time for specific days in Schedule based trigger and check the trigger is initiated based on the criteria in the measure

    @adminui @DirectPointDeposit @DPDMeasureRules @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRON expression is not triggered with invalid values for the Schedule based trigger in measure

    @adminui @DirectPointDeposit @DPDMeasureRules @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the rule trigger type as scheduled based and the rule is triggered based on the cron expression

    @adminui @DirectPointDeposit @DPDMeasureRules @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the rule trigger type as manual based and the rule is triggered manually

    @adminui @DirectPointDeposit @DPDMeasureRules @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the rule execution is triggered when used the scheduled based trigger with every 1 hour and verify the last hour on the promotion end date
    # trigger should not happen after the end date 11:59pm

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Submit button saves the Rule Trigger details and navigates to Claim Settings page

    @adminui @DirectPointDeposit @DPDMeasureRules @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Cancel button does not save the Rule Trigger details and navigates back to Measure Rules page


    # Reward rule

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to add Reward Rules

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether 'Add Rule' screen is displayed when user clicks on Add button under Reward rules

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the added rules can be edited from the Reward Rules section

    @adminui @DirectPointDeposit @RewardRuleDPD @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the added rules details can be viewed Reward rules with Rule Name, Rule Calculation, Reward Type, Rewar

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the fields present under Add Rule screen

    @adminui @DirectPointDeposit @RewardRuleDPD @system @delete @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the added rules can be deleted from the Reward Rules section

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that Rule name and Rule Description fields are auto populated in the Add Rule screen

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add only one rule under Reward rules

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether add rule button is getting displayed, when user has already added one rule under Reward rules

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the calculation type cannot be changed in reward

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward unit cannot be changed in reward


    # Rule definition

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether rule variable is not displayed in the add rule popup

    @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add reward by selecting Reward calculation, Reward type, Reward recipient and Reward value under Rule definition tab

    @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to verify the reward type as always points and reward calculation as dynamic

    @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward recipient dropdown shows all the column from the datasource

    # Why reward value should be a dropdown !?

    @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Reward Calculation field is populated as 'Dynamic' by default

    # @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    # Scenario: Verify user is able to select Reward type as 'Points'
    # points is a default & disabled field ??

    @adminui @DirectPointDeposit @RewardRuleDPD @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is not able to select any Reward type other than 'Points'

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the reward is getting added to the recipient once the defined condition is met

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the reward is not getting added to the recipient once the defined condition is not met

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the reward is getting added to the recipient once the defined condition is met and the rule is executed

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reward recipient can be selected from the dropdown in the Rule Definition screen

    @adminui @DirectPointDeposit @RewardRuleDPD @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is not able to add multiple rewards under Rule definition

    # Rule Payout tab
    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the fields available under Rule Payout tab

    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add Bank Description under Rule Payout tab

    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select the Language under Rule Payout tab

    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to edit a rule by clicking on Edit button under Reward rules tab

    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to delete a rule by clicking on Delete button under Reward rules tab

    @adminui @DirectPointDeposit @DPDRulePayout @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is navigated to Communication screen on entering data with all the mandatory fields & clicking submit button with the Create New measure screen


    # Communication
    @adminui @DirectPointDeposit @DPDcommunication @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tabs present under Communication screen

    @adminui @DirectPointDeposit @DPDcommunication @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to select notification type once the Enable button is turned ON

    @adminui @DirectPointDeposit @DPDcommunication @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Notification type as Direct point deposit

    @adminui @DirectPointDeposit @DPDcommunication @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to toggle on/off the Point Deposit button

    @adminui @DirectPointDeposit @DPDcommunication @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to enter add notification message once point deposit is enabled

    # Dashboard
    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tabs present under Dashboard screen

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Add menu under Widget configuration tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to  Add Widget under Widget configuration tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the Properties of the selected widget appears on the properties tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to delete a widget

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to edit properties of the widget under basic tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to edit properties of the widget under style tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to edit properties of the widget under filter tab

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the fields present under Mobile view

    @adminui @DirectPointDeposit @DPDDashboard @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the fields present under Web view

    # Points Deposit
    @adminui @DirectPointDeposit @PointsDeposit @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify valid user details with valid numeric value and the points get deposited for that user

    @adminui @DirectPointDeposit @PointsDeposit @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify valid user details with invalid non numeric value and error should be thrown up no points is deposited

    @adminui @DirectPointDeposit @PointsDeposit @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify valid user details with fractional value and the points get deposited for that user

    @adminui @DirectPointDeposit @PointsDeposit @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the file with invalid users and points and verify the error data contains the invalid users

    @adminui @DirectPointDeposit @DPPointsDeposit @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the file with valid users and negative points and verify users are removed with the points