Feature: measure rules common to all promotions


    # Reward rule

    @adminui @measureRule @addRule @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can able to add Reward Rules

    @adminui @measureRule @addRule @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether 'Add Rule' screen is displayed when user clicks on Add button under Reward rules

    @adminui @measureRule @addRule @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple rules can be added when click on the Add button from Reward Rules tab

    @adminui @measureRule @addRule @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the added rules can be edited from the Reward Rules section

    @adminui @measureRule @addRule @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the added rules can be deleted from the Reward Rules section

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple rule calculations can be added to Expressions tab

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the rule can be added without variables in the Expressions tab

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create an expression by selecting the fields, variables and functions

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the expression builder has list of Fields/column names from the selected model in views

    @adminui @measureRule @ruleVariable @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the expression builder does not have list of Fields/column names other than the selected model in views

    @adminui @measureRule @ruleVariable @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verif the user edits the view by adding a new column and verify the newly added column displays in the expression builder

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to search for fields and Variables using the search bar under Rules Variable

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add the selected fields and functions to the expression

    @adminui @measureRule @ruleVariable @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to select Functions under Expressions tab

    @adminui @measureRule @ruleVariable @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify if user can able to delete the expressions from created rule for variable

    @adminui @measureRule @ruleVariable @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the calculated value from the expressions can be stored in the variable and can be used for future calculations from Expressions tab

    @adminui @measureRule @ruleVariable @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify that only one expression calculations can be added per variable

    #  Rewards


    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add condition under Rewards tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can able to add expression by clicking on expression button


    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the user can able to configure condition by selecting the fields, variables and functions from the expression builder

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify variable from the Expressions tab is displayed in the expression builder

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create a condition by adding the variables created in the Expressions tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Veirfy user can able to build a complex condition by including one or more variables from the Expressions tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to add the static values to the condition

    @adminui @measureRule @rewardConfiguration @system @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify user cannot able to add multiple expressions under Rewards tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add a expressions using AND operator in same condition

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add a expressions using OR operator in same condition

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add a expressions using NOT operator in same condition

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add a expressions using AND, OR, NOT operator in same condition

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create a condition by using the newly created column in views



    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verif the user edits the view by adding a new column and verify the condition can be created with newly added column


    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add reward by selecting Reward calculation type, Reward Unit and Reward Recipient under Rewards tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can able to select the Reward Calculation type as 'Dynamic' under Rewards tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can able to select the Reward Calculation type as 'Static' under Rewards tab

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the fields are getting altered based on the Reward Calculation selected by the user

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the field 'Reward value' is displayed when user selects Reward Calculation as 'Static'

    @adminui @measureRule @rewardConfiguration @system @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the field 'Field (From View/Variable)' is not displayed when user selects Reward Calculation as 'Static'

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario in which the Reward calculation is selected as 'Static' and the user can able to enter Reward value directly


    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create reward by selecting Reward type as 'Points'

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create reward by selecting Reward type as 'Score'

    @adminui @measureRule @rewardConfiguration @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to create reward by selecting Reward type as 'Game'

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin either choose static or dynamic reward calculation under Rewards tab

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify reward calculation as Static and check the fixed reward points are awarded based on the conditions in the Rewards screen

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when reward calculation is selected as Static, the reward units are awarded to the recipient based on the selected field with the entered value according to the condition

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when reward calculation is selected as Dynamic, the reward units are awarded to the recipient based on the selected field with view/variable calculation value according to the condition

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario Outline: Verify user can able to create reward by selecting <Rewardcalculation> and <RewardType> and <RewardRecipient> under Rewards tab with values
        Examples:
            | Rewardcalculation | RewardType | RewardRecipient |
            | Static            | Points     | username        |
            | Static            | Score      | username        |
            | Static            | Game       | username        |
            | Dynamic           | Points     | username        |
            | Dynamic           | Score      | username        |
            | Dynamic           | Game       | username        |

    @adminui @measureRule @rewardConfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the reward recipient can be selected from the dropdown in the Rewards screen

    @platformui @measureRule @awardReward @integration @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reward recipient can be selected and the reward points are awarded to the selected recipient based on the conditions in the Rewards screen

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify reward calculation as Dynamic and check the reward points are awarded based on the conditions in the Rewards screen

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the reward type as dynamic and admin can configure the condition for calculating the reward dynamically by adding variables

    @adminui @measureRule @awardReward @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the reward type as dynamic and admin can able to add field or variable in reward calculation

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify that the rewards are awarded to the recipient once the defined condition is met

    @adminui @measureRule @awardReward @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify that the rewards are not awarded to the recipient once the defined condition is not met

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify that the rewards are awarded to the recipient once the defined condition is met and the rule is executed

    @adminui @measureRule @awardReward @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify that the rewards are not awarded when the user does not has the configured receipient field

    @adminui @measureRule @awardReward @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin cannot able to add multiple recipients under Rewards tab

    @adminui @measureRule @awardReward @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin cannot able to add multiple rewards to the same recipient under Rewards tab

    @adminui @measureRule @uniqueKey @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the unique key can be configured in the Unique Key tab

    @adminui @measureRule @uniqueKey @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the unique key source and destination can be selected from the dropdown in the Unique Key tab

    @adminui @measureRule @uniqueKey @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the multiple unique keys can be added

    @adminui @measureRule @uniqueKey @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the added unique key can be deleted

    @adminui @measureRule @uniqueKey @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify while configuring the unique key, the selected destination field should be unique

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic reward is applied for the user using userid as recipient
        Given user is present in the reward tab in the rule creation pop up
        When user selects the reward type as dynamic
        Then user should be able to select the recipient as userid

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic reward is applied for the user using username as recipient

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic reward is applied with the rule variable

    @adminui @measureRule @awardReward @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic reward is applied with the view column

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can enable or disable the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can use the view variable in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to view all the created views for the promotion is listed in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to set the email communication in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to set the sms communication in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to set the whatsapp communication in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to set the push notification in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to set the different language communication message in the communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion start communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion end communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion start reminder communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion end reminder communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion start for manager communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion end for manager communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion leaderboard update communication notification

    @adminui @measureRule @communicationnotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the promotion end reminder communication notification

    # multiple measure

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion with multiple measure rule

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when a promotion with multiple measure rule is created, it should be applicable for all the users met the criteria

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion with multiple measure rule based on single view

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion with multiple measure rule based on multiple views

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify a promotion with multiple rules where the banking type of each rules are same so that the rewards are awarded to the user

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify a promotion with multiple rules where the banking type of each rules are different so that the rewards are awarded to the user based on the configured banking type

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify a promotion with multiple rules where the payout capping is configured and the rewards are awarded to the user based on the configured capping values and won't interfere with other rules

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify a promotion with multiple rules and single view where the rewards are awarded to the user based on the configured condition and each rule should run individually

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify a promotion with multiple rules and multiple views where the rewards are awarded to the user based on the configured condition and each rule should run individually

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the points are awarded to the user based on the different measures

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify triggering the promotion with multiple measure rule where all the rules are set to manual triggering

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify triggering the promotion with multiple measure rule where all the rules are set to event based triggering

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify triggering the promotion with multiple measure rule where all the rules are set to scheduled based triggering

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify having more than one measure as open measure, user target measure and product bundling measure

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify having more than one measure as organization measure, user based measure

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify having more than one measure as single product measure and product bundling measure

    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify having more than one measure as different products measure (i.e, one measure will use productGroupA and one measure will use productGroupB)
    
    @adminui @measureRule @multipleMeasure @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify having more than one measure and third measure will use leaderboard measure (i.e, measureA and measureB will provide the user list with points and measureC will use the user list to provide the rewards)