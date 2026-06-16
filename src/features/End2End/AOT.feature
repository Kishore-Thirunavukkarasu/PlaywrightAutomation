Feature: AOT based promotion

    Scenario: Create a new AOT Based promotion
        When User is on the measurepage and add a new measure
        Then Create New Measure page is displayed
        Then Click on the Measure Information and enter the Basic details
        Then Check the Measure Duration date
        Then Enter the Bill Codes
        Then Upload the Measure Creative image
        Then Click on Next
        When Measure Rules page is displayed
        Then set the rule type to AOT
        When Apply rules to the table and enter the Refresh Schedule "xxx" if applicable

        When Select the reward condition "Target on Value"
        # If rule condition changes enter "Target on Quantity" and make the script - switch depends on the condition
        When Select the Sales Achievement Level "Participant"
        #If the condition changes enter the Sales Achievement Level as "Organization"
        When Select the Claim method as "Import Total Sales"
        #If the condition changes enter the Claim method as "Sales Claim"
        When Add the Participant Reward Rule
        When Set the Parameter as "Achievement" from ">=" value "58" as "%" with condition as "AND" to "<=" value "100" as "%"
        Then Set the Reward as "Dynamic" with value in "Percentage" for "1" as "*" rule as "Achievement"
        Then Select the Field, Functions and add the Rule
        Then Add the Manager Reward Rule
        When Set the Parameter as "Achievement" from ">=" value "58" as "%" with condition as "AND" to "<=" value "100" as "%"
        Then Set the Reward as "Dynamic" with value in "Percentage" for "1" as "*" rule as "Achievement"
        Then Select the Field, Functions and add the Rule
        Then Enable the tier bonus
        And Add the Tier Bonus Rule
        When Set the Parameter as "Achievement" from ">=" value "58" as "%" with condition as "AND" to "<=" value "100" as "%"
        Then Set the Reward as "Dynamic" with value in "Percentage" for "1" as "*" rule as "Achievement"
        Then Select the Field, Functions and add the Rule
        Then Click on Next
        When Payout page is displayed
        Then Select the type "Score"
        Then Choose the payout column and bank description
        Then Select the payout trigger with the scheduled date and payout date
        Then Click on Next
        When Approver setting page is displayed
        Then select the organization level as "Participant's Organization"
        Then Click on Next
        When Dashboard page is displayed
        Then Configure a new widget
        Then Add the Mobile and Web view
        Then Click on Next
        When Communication page is displayed
