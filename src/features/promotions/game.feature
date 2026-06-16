Feature: Game Promotion

    # created by  = Ruthrakkanth
    # reviewed by =
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

    Scenario: Verify user is able to select Game
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        Then User is navigated to "Select type of Promotion" page
        When User hits continue button present in "Game" promotion type
        Then User is navigated to "Create Game Promotion" page

 
    Scenario: Verify user is able to Exclude an user
        When User is on Promotion Page
        When user click on "Create promotion" from the promotion page
        When User hits continue button present in "Game"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When search for a User using Search bar
        Then selected user should be excluded from the Eligible Audience

    Scenario: Verify user is able to Exclude based on Organisation search
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Game"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When User search for a Organisation using Search bar
        Then User should be able to select the Organisation to exclude

    Scenario: Verify organization can be searched and added in the Exclude list

    Scenario: Verify Excluded organization can be deleted

    Scenario: Verify Excluded user can be deleted

    Scenario: Verify Excluded Audience organization are removed from the Eligible Audience list

    Scenario: Verify Excluded users are removed from the Eligible Audience list

    Scenario: Verify selected multiple users are added in the Excluded users list

    Scenario: Verify the scenario when admin exludes a Organisation and click on Cancel

    Scenario: Verify whether the Reporting audience is not displayed in the Audience page

    Scenario: Verify user is taken to the Data screen after adding the Audience group

    Scenario: Verify user is able to navigate to the next screen without adding the Audience group

    Scenario: Verify that the views tab displays the list of views that are already created

    Scenario: Veirfy whether the user is able to delete view from the list

    Scenario: Verify that user is not able to create a view within views tab

    Scenario: Verify user is able to preview the sample data by clicking on the three dots

    Scenario: Verify user is able to download the data in Excel by clicking on the three dots

    Scenario: Verify whether the details such as Name, type and Filter of the view is displayed in the list screen

    Scenario: Verify the fields present in the Upload tab

    Scenario: Verify the scenario where user uploads a file with invalid format

    Scenario: Verify the scenario where user uploads a file with invalid data

    Scenario: Verify whether the success message is displayed after uploading the file

    Scenario: Verify the scenario where user uploads a file with valid data

    Scenario: Verify the user is able to search for file using File name search

    Scenario: Verify the search result by using a valid file name

    Scenario: Verify the search result by using a invalid file name

    Scenario: Verify the user is able to filter the list based on the Meta data

    Scenario: Verify the user is able to download result file by clicking on the three dots

    Scenario: Verify the user is able to view the error by clicking on the three dots

    # Measure

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to click on "Add Measure" button

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify 'Create New Measure' screen is displayed after clicking on 'Add Measure' button

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Create new measure screen consists of Basic Information & Measure rules tab

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to Navigate from one tab to other only after entering the data with mandatory fields

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify green tick is being displayed against the section once user fills in the data and hits submit button

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter input details with all the fields in Basic Info section

    Scenario: Verify that the Measure name is auto-populated in the Basic info screen

    Scenario: Verify whether the fields Datasource type and Datasource Name is also auto-populated in the Basic info screen

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter data with mandatory fields in Basic Information tab and navigate to Measure rules

    Scenario: Verify that the Game Room Id is auto populated in the Basic info screen

    Scenario: Verify green tick is present for valid Game Room Id 

    Scenario: Verify user is taken to configuration screen on clicking 'Go to Game Configuration' button

    # Reward rule

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to add Reward Rules 

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether 'Add Rule' screen is displayed when user clicks on Add button under Reward rules

    @adminui @promotionRuleEngine @PRE010AllowMultipleRules @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple rules can be added under Reward Rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules can be edited from the Reward Rules section

    @adminui @promotionRuleEngine @PRE013ViewListofRules @system @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules details can be viewed in the list with Rule Name, Rule Calculation, Reward Type, Rewar

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under Add Rule screen

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @delete @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules can be deleted from the Reward Rules section
    
    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that Rule name and Rule Description fields are auto populated in the Add Rule screen


    # Rule definition

    
    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under Rule definition tab
    
    Scenario: Verify user is able to add integer values in No of participants and Reward points fields

    Scenario: Verify whether error message is shown on entering invalid data (negative integer, decimal number ) in No of participants and Reward points fields

    Scenario: Verify user is able to specify the number of participants and reward points for each level 

    # Rule Payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields available under Rule Payout tab
.
    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Bank Description under Rule Payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to select the Language under Rule Payout tab
    
    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Cancel after filling the details with Rule payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Add after filling the details with Rule payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the rule defined in Add rule screen is displayed under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to edit a rule by clicking on Edit button under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to delete a rule by clicking on Delete button under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to add multiple rules under Reward rules
   
    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Cancel after filling the details with Measure rules screen

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is navigated to Communication screen on entering data with all the mandatory fields & clicking submit button with the Create New measure screen.
  

    # Communication

    # What are we specifying in this communication tab?
    # Business criteria on what is specified and verified here?
    # Need more understanding to write the scenarios

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tabs present under Communication screen

    Scenario: Verify the field present under Promotion tab

    Scenario: Verify user is able to toggle on/off the Enable button  

    Scenario: Verify whether user is able to select notification type once the Enable button is turned ON

    Scenario: Verify whether user is able to toggle On/Off the Promotion start button

    Scenario: Verify whether user is able to toggle On/Off the Promotion End button

    Scenario: Verify whether user is able to toggle On/Off the Promotion start Reminder button

    Scenario: Verify user is able to get Cron expression by clicking on Get CRON expression button

    Scenario: Verify error message is shown for invalid CRON expression

    Scenario: Verify user is able to add notification message when promotion start is enabled

    Scenario: Verify whether user is able to toggle On/Off the Promotion End reminder button

    Scenario: Verify whether user is able to toggle On/Off the Leader board Updated button


    # Doubt : What is MeasureName001 in the mockup? Measure name ?
    # What does Add Notification message do?

    Scenario: Verify user is able to toggle ON Enable button

    Scenario: Verify user is able to select Notification type as Game

    Scenario: Verify user is able to toggle ON 'Game token assigned'

    Scenario: Verify user can add notification message message when 'Game token assigned' is enabled

     Scenario: Verify user is able to toggle ON 'Game point deposit'

    Scenario: Verify user can add notification message message when 'Game point deposit' is enabled

    # Dashboard

    # What are we verifying in this dashboard tab?
    # Business criteria on what is specified and verified here?

    Scenario: Verify the tabs present under Dashboard screen

    Scenario: Verify user is able to Add menu under Widget configuration tab

    Scenario: Verify user is able to  Add Widget under Widget configuration tab

    Scenario: Verify that the Properties of the selected widget appears on the properties tab

    Scenario: Verify user is able to delete a widget

    Scenario: Verify user is able to edit properties of the widget under basic tab

    Scenario: Verify user is able to edit properties of the widget under style tab

    Scenario: Verify user is able to edit properties of the widget under filter tab

    Scenario: Verify the fields present under Mobile view

    Scenario: Verify the fields present under Web view 

    Scenario: Verify user is taken to Token details screen on selecting View Token details 

    Scenario: Verify user is able to search for a particular token in Toke details screen by using user name

    Scenario: Verify the list of tokens is displayed in the Token details screen

    Scenario: Verify the details of the token displayed in the Token details screen

   
    
   
    