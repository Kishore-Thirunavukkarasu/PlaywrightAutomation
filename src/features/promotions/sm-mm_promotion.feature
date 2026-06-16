Feature: Single - Multiple Promotion

    # created by  = Ruthrakkanth
    # reviewed by = Kishore Thirunavukkarasu
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


    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user gets navigated to Measures screen after filling Basic details & Audience details

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify 'Create New Measure' screen is displayed after clicking on 'Add Measure' button

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to view info like Promotion name, description, Datasource under Create New Measure screen

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Create new measure screen consists of Basic Information, Measure rules, Claim Settings tabs

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to Navigate from one tab to other only after entering the mandatory fields

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user cannot able to navigate to other tabs without entering the mandatory fields

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify green tick is being displayed against the section once user fills in the data and hits submit button

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @navigation @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter input details with all the fields in Basic Info section

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Datasource Name is displayed based on the type selected

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter data with mandatory fields in Basic Information tab and navigate to Measure rules

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter data with non-mandatory fields in Basic Information tab and navigate to Measure rules

    


    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter valid CRON expression in Payout Date field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify error is thrown for in-valid CRON expression in Payout Date field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the payout trigger date cannot be set as the current date and time

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the payout trigger date cannot be set as the past date and time

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the payout cannot be triggered before the configured date

    # Payout Capping

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enable Payout Capping based on the toggle button in Basic Information tab

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to disable Payout Capping based on the toggle button in Basic Information tab

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can able to continue without enabling the payout capping

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter integer number in Max for Participants field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter decimal number in Max for Participants field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter negative number in Max for Participants field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter zero in Max for Participants field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward type can be selected in payout capping for measures

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter integer number in Max for Measure field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter decimal number in Max for Measure field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter negative number in Max for Measure field

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter zero in Max for Measure field
    
    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the maximum payout for individual participant can be set with reward type

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the maximum payout for measure can be set with reward type
    # Reward type - will be points for capping

    # @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the reward type of the participant and measure can be same

    # @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the reward type of the participant and measure can be configured different

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the maximum payout for individual participant can be lesser than the maximum payout for measure

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the maximum payout for individual participant cannot be more than the maximum payout for measure


    # Measure rules
    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is navigated to Measure rules screen on clicking Submit button after entering data with all the mandatory fields

    @adminui @promotionRuleEngine @PRE007CreateNewMeasure @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is not navigated to Measure rules screen by clicking on Cancel button

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sections displayed in Measure rules screen

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the trigger type can be selected from the dropdown in Rule Trigger

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to select Trigger Type as Event Based

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to select Trigger Type as Schedule Based

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Trigger Event and Datasource fields are displayed when Trigger Type is selected as Event Based

    #What is the choose model and choose event?
    #How the trigger is initiated if it is based on the model means where we are declaring the models?

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Trigger Event and Datasource fields are not displayed when Trigger Type is selected as Schedule based

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the trigger event can be selected from the dropdown in Rule Trigger

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data source can be selected from the dropdown in Rule Trigger

    @adminui @promotionRuleEngine @PRE010AllowMultipleRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple rule triggers can be added for the measure

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the rule trigger can be deleted from the measure

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the rule execution is based on the Trigger Event selected by the admin

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Event-Based Trigger on Record Creation when 'Trigger Event' is selected as Create

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Event-Based Trigger on Record update when 'Trigger Event' is selected as Update

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Event-Based Trigger on Record update when 'Trigger Event' is selected as Delete
    
    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Recurrence Pattern field is displayed when user selects Schedule based Trigger Type

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify getting the CRON expression from "Get CRON Expression" button for the Schedule based trigger in Rule Trigger

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Schedule based trigger is initiated based on the given CRON expression for the measure

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user can enter valid CRON expression in Recurrence Pattern field

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user adds invalid CRON expression in Recurrence Pattern field

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the CRON expression can be set weekly in Schedule based trigger and check the trigger is initiated every week accordingly

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the CRON expression can be set daily in Schedule based trigger and check the trigger is initiated daily

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the CRON expression can be set monthly in Schedule based trigger and check the trigger is initiated every month accordingly

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the CRON expression is set for a specific time for specific days in Schedule based trigger and check the trigger is initiated based on the criteria in the measure

    @adminui @promotionRuleEngine @PRE014ExecutionofRules @system @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the CRON expression is not triggered with invalid values for the Schedule based trigger in measure

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Submit button saves the Rule Trigger details and navigates to Claim Settings page

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Cancel button does not save the Rule Trigger details and navigates back to Measure Rules page


    # Reward rule

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to add Reward Rules

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether 'Add Rule' screen is displayed when user clicks on Add button under Reward rules

    @adminui @promotionRuleEngine @PRE010AllowMultipleRules @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple rules can be added when click on the Add button from Reward Rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the rule can be added without variables in the Rule Variables tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules can be edited from the Reward Rules section

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under Add Rule screen

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields available under Rule Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple rule calculations can be added to Rule Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @delete @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules can be deleted from the Reward Rules section

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can input values to "Variable Name" field under the "Rule Variables" tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create an expression by selecting the fields, variables and functions

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add expression under Rules Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to search for fields and Variables using the search bar under Rules Variable

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add the selected fields and Variables to the expression

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to select Functions under Rule Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user is able to add multiple expressions under Rule Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the expressions popup has list of Fields/column names from the selected model in views

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the expressions popup has list of operators to perform the calculations

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the expressions popup has list of variables

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @search @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user is able to delete one of the expressions under Rule Variables tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user is able to delete all the expressions under Rule Variables tab and submit it

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @search @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the result of the added expression is assigned to the Variable defined above

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the calculated value from the expressions can be stored in the variable and can be used for future calculations from Rule Variables tab

    @adminui @promotionRuleEngine @PRE013ViewListofRules @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the added rules details can be viewed in the list with Rule Name, Rule Calculation, Reward Type, Reward

    @adminui @promotionRuleEngine @PRE013ViewListofRules @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that only one expression calculations can be added per variable

    #  Rule definition

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields available under rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add condition under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to add expression by clicking on 'click to add expression'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether expression builder gets popped on clicking 'click to add expression'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward condition can be set by adding multiple expression in the a single condition for Rule Definition screen

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to write a condition by selecting the fields, variables and functions

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify variable from the 'Rule Variables' tab is displayed in the expression builder

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create a condition by adding the variables created in the 'Rule Variables' tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Veirfy user is able to build a complex condition by including one or more variabbles from the 'Rule Variables' tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add multiple conditions under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user cannot able to add multiple expressions under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add a expressions using AND operator in same condition

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add a expressions using OR operator in same condition

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add a expressions using NOT operator in same condition

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add a expressions using AND, OR, NOT operator in same condition

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create a condition by using the newly created column in views

    # Navigate to the views section.
    # 2. Create a new column name within a view.
    # 3. Navigate to the conditions creation section.
    # 4. Attempt to create a new condition using the newly created column name.
    # 5. Save the condition.

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add reward by selecting Reward calculation, Reward type and reward recipient under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to select the Reward Calculation as 'Fixed' under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to select the Reward Calculation as 'Static' under Rule definition tab

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the fields are getting altered based on the Reward Calculation selected by the user

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the field 'Reward value' is displayed when user selects Reward Calculation as 'Static'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the field 'click to add field or variable' is not displayed when user selects Reward Calculation as 'Static'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario in which the Reward calculation is selected as 'Static' and the user is able to enter Reward value directly

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the options available under Reward type drop down

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create reward by selecting Reward type as 'Points'
    #When payout capping is points means can we able to choose different reward tyoe here? if choosen what will happen?

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create reward by selecting Reward type as 'Score'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create reward by selecting Reward type as 'Game Token'

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin either choose static or dynamic reward calculation under Rule definition tab

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify reward calculation as Static and check the fixed reward points are awarded based on the conditions in the Rule Definition screen

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Verify user is able to create reward by selecting <Rewardcalculation> and <RewardType> and <RewardRecipient> under Rule definition tab
        Examples:
            | Rewardcalculation | RewardType | RewardRecipient |
            | Static            | Points     | username        |
            | Static            | Score      | username        |
            | Static            | Game token | username        |
            | Dynamic           | Points     | username        |
            | Dynamic           | Score      | username        |
            | Dynamic           | Game token | username        |

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the reward is getting added to the recipient once the defined condition is met

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the reward is not getting added to the recipient once the defined condition is not met

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the reward is getting added to the recipient once the defined condition is met and the rule is executed

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin can add multiple recipients under Rule definition tab
    #Is that possible to ad multiple recipients?
    #Who is the recepients here whether any audience or user, if it is some person means why we are defining here? It is already defined in promotion right?
    #What happens when we add different recipients here other than the one defined in promotion?

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin can add multiple rewards to the same recipient under Rule definition tab

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin can add multiple rewards to multiple recipients under Rule definition tab

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward recipient can be selected from the dropdown in the Rule Definition screen

    @platformui @promotionRuleEngine @PRE012AssignRewards @integration @special @functional @positive @reviewed @platform @notupdated @notautomated
    Scenario: Verify the reward recipient can be selected and the reward points are awarded to the selected recipient based on the conditions in the Rule Definition screen

    @platformui @promotionRuleEngine @PRE012AssignRewards @integration @special @functional @positive @reviewed @platform @notupdated @notautomated
    Scenario: Verify the scenario in which multiple recipients are added & rewards are added to all recipients when the defined condition is met

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify reward calculation as Dynamic and check the reward points are awarded based on the conditions in the Rule Definition screen

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward type as dynamic and admin can configure the condition for calculating the reward dynamically by adding expressions

    @adminui @promotionRuleEngine @PRE012AssignRewards @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward type as dynamic and admin can able to add field or variable in reward calculation




    # Rule Payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields available under Rule Payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Bank Description under Rule Payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add multiple columns to the Bank description when reward type is selected as 'Points'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the description in the statement contains concatenation of all the columns added

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the column name can be selected from the drop down in the Bank Description when reward type is selected as 'Points'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the column description can be entered manually

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @delete @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is delete the added columns in the Bank Description when reward type is selected as 'Points'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that fields present under Rule Payout tab are getting altered based on the Reward Type selected by the user

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to add the Game configurations under Rule Payout tab when the Reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to select the Game Room ID where reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to navigate to Game configuratuion screen by clicking on 'Go to Game Configuration' link where reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward rule for game token can be configured in the Rule Payout screen when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple reward rules for game token can be configured in the Rule Payout screen when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE011ConfigureRuleConditions @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reward rules can be deleted in the Rule Payout screen when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under Participant rewards rule section when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to define the participant rewards rule by entering valid value for Percentage of Participants & Reward points field

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to define the participant rewards rule by entering in-valid value for Percentage of Participants & Reward points field

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add multiple levels under Participant rewards rule section when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to delete the multiple levels added under Participant rewards rule section when the reward type is selected as 'Game Token'

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Cancel after filling the details with Rule payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Add after filling the details with Rule payout tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify all the rules defined in Add rule screen are displayed under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to edit a particular rule by clicking on Edit button under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to delete a particular rule by clicking on Delete button under Reward rules tab

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add a new rule from Reward Rules list screen by clicking on Add button

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to navigate to Claim Settings screen by clicking on Submit button

    @adminui @promotionRuleEngine @PRE009CreateRulesUnderPromotion @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user clicks on Cancel after filling the details with Measure rules screen

    # CLAIM FORM

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under Claim Settings tab

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to toggle ON the Enable button under Claim Settings tab

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to toggle OFF the Enable button under Claim Settings tab

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields that got displayed when the Enable button is toggled ON

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to select the value in 'Claim Form Name' field from the dropdown

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to specify the last date for claiming

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that user cannot enter a past date in 'last date for claiming' field

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enter any future date in 'last date for claiming' field

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields present under 'Claim Approvals/ Resolutions' section

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Level 1 approval

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Approval type as 'Hierarchical'

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the approval type as hierarchical and hierachy can be selected from the dropdown

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the hierarchy approval and specifying the jobroles for the approval

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the hierarchy approval when non specified jobroles cannot approve the claim

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the "Within selling organisation only" option is selected when the approval type is selected as 'Hierarchical'

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the "Within selling organisation only" option is not selected when the approval type is selected as 'Hierarchical'

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Approval type as 'Hierarchical' and by enabling the option 'Primary Job role only'

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Approval type as 'Hierarchical' and by enabling the option 'Primary Job role only' & 'within selling organisation only'

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Approval type as 'Open Approval'

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the field Audience is displayed when Approval type is selected as 'Open Approval'

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to configure super approver

    @adminui @promotionRuleEngine @PRclaimform @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim form is getting saved when user clicks on Save button

    @adminui @promotionRuleEngine @PRclaimform @configure @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add Level 2 approval

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add both add Level 1 & Level 2 approval without super approver

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user cannot able to add Level 2 approval without selecting Level 1 approval

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify scenario where Level 1 approval is added and Level 2 approval is not added

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify scenario when Level 1, Level 2 and Super Approver are configured

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when only the Super Approver is configured

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where L1 and L2 approvers are configured & claims approved by Level 1 approver are queued to Level 2 approver

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where L1 and L2 approvers are configured & claims approved by both Level 1 & Level 2 approvers are accepted

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where L1 L2 & Super approvers are configured & claims approved directly by the Super approver twice are accepted

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify L1 and L2 approved and rejected by super approver

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify L1 is approved and L2 approver is rejected

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify L1 is rejected and does not go to L2 approver

    @adminui @promotionRuleEngine @PRclaimform @system @configure @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify L1 is rejected and approved by super approver



