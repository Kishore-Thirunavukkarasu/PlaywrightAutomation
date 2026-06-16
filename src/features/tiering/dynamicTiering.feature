Feature: Dynamic Tiering Test-Cases

    # Created by : Ruthrakanth Subramanian
    # Updated by :
    # Reviewed by :
    # Created on : 17-06-2025

    # doubt : have to do the same for organization ?? Individual activation based rolling window is applicable for organization tier?
    #  doubt : Is activation date is there for organisation?   will this rolling window work for organisation tier segment?
    #doubt : Can we add entity as Org and add both user and org tier segments in the same tier setup?
    # doubt : Whether the user should be allowed to update the evaluation period during edit after published
    # org type.

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select 'static' tiering type for organization tier segment

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select 'dynamic' tiering type for organization tier segment

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can create organization tier segment based on Country/State
        Given Admin is in Tier segments page
        When Admin selects 'Organisation' from the create segment dropdown
        When Admin enables custom criteria & selects 'orAddresses' as property
        Then Admin can select 'Country' / 'State' from the column dropdown

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can create organization tier segment based on Organisation Type
        Given Admin is in Tier segments page
        When Admin selects 'Organisation' from the create segment dropdown
        When Admin enables custom criteria & selects 'organizations' as property
        Then Admin can select 'orgtype' from the column dropdown

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can create organization tier segment based on Organisation status
        Given Admin is in Tier segments page
        When Admin selects 'Organisation' from the create segment dropdown
        When Admin enables custom criteria & selects 'organizations' as property
        Then Admin can select 'orgstatus' from the column dropdown

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin is able to create tier segment with multiple criteria based on Organisation Type, Organisation Status, Country and State
        Given Admin is in Tier segments page
        When Admin selects 'Organisation' from the create segment dropdown
        When Admin enables custom criteria & selects 'organizations' as property
        Then Admin can select 'orgstatus' from the column dropdown
        When Admin adds another criteria with 'orAddresses' as property
        Then Admin can select 'Country' / 'State' from the column dropdown
        When Admin click on Save
        Then Admin should see the newly created segment in the Tier segments list

    @adminui @dynamictiering @organisationTier @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that newly created organisation tier segment is visible in the Tier setup
        Given Admin has created organisation tier segment
        When Admin navigates to the Tier setup page
        Then Admin should see the newly created organisation tier segment in the list of segments

    @adminui @dynamictiering @organisationTier @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Admin can overwrite the tier for the Organisation
        Given Organisation exists in the system
        When Admin overwrites the tier for the organisation
        Then Organisations table should reflect the new tier

    @adminui @dynamictiering @organisationTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can create audience based on tier.
        When User is in Audience page
        Then Admin should be able to create audience based on tier

    @adminui @dynamictiering @organisationTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the user's updated performance data justifies the tier upgrade, and confirm that the new tier is accurately saved in the Organisations table.
        Given Static Organisation tier setup is done
        When organisation tier gets upgraded at the end of evaluation period as a result of aggregate performance of the users within organisation
        Then Tier field in organisation table should get updated based on the upgrade

    @adminui @dynamictiering @organisationTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the user's updated performance data results in a tier downgrade, and confirm that the downgraded tier is accurately saved in the Organisations table.
        Given Static Organisation tier setup is done
        When organisation tier gets downgraded at the end of evaluation period as a result of drop in aggregate performance of the users within organisation
        Then Tier field in organisation table should get updated based on the downgrade

    @adminui @dynamictiering @organisationTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the user's performance data results in a retainment of the same tier and confirm that the tier is retained in the Organisations table.
        Given Static Organisation tier setup is done
        When At the end of evaluation period, same tier is maintained
        Then Tier field in organisation table should


    # 002 & 003

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that Tier Field is Not Editable in Participant Profile UI
        Given User is in Participants page.
        When Admin selects the 'Edit' option for any one of the users
        Then Admin should not be allowed to edit the Tier field.

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that Direct API Update Attempt to modify the tier is Rejected
        Given User is in Participants page.
        When Admin tries to modify the tier value via API update
        Then Error should be thrown

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Tier Remains Persistent After Edit Profile
        Given User is in Participants page.
        When Admin selects the 'Edit' option for any one of the users
        Then Admin updates few fields in the Edit user page.
        Then tier value should remain the same without any change

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that Admin can assign tier only through Tier Setup or Tier Classification Import.
        When User is in Participants page.
        Then Tier assignment should happen only through the Tier setup or Tier classification import

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that admin cannot update user tier manually via form or file upload
        Given User is in Participants page.
        When Admin uploads the user file
        Then Admin should not be allowed to update the tier manually via either upload or through form entry

    @adminui @dynamictiering @editParticipantTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that admin cannot update organization tier manually via form or file upload
        Given User is in Organization page.
        When Admin uploads the Organization file
        Then Admin should not be allowed to update the tier manually via either upload or through form entry


    # 005,006,007

    @adminui @dynamictiering @orgTierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the New Tier Assigned to Organization is logged in Organisation Tier History Table
        Given User has logged in with DB
        When New Tier has been assigned to the Organisation (Say A) after the refresh
        Then An entry has to be logged in the Organisation tier history table for every tier refresh

    @adminui @dynamictiering @orgTierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a new record is created in the Organisation Tier History Table when a new tier is assigned (first time) to an organization
        Given User has logged in with DB
        When New Tier has been assigned to the Organisation (Say A) at the first refresh
        Then A new entry should be created in the Organisation tier history table

    @adminui @dynamictiering @orgTierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the New Tier Assigned to User, is logged in User Tier History Table
        Given User has logged in with DB
        When New Tier has been assigned to the User (Say X) after the refresh
        Then An entry has to be logged in the User tier history table for every tier refresh

    @adminui @dynamictiering @orgTierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a new record is created in the User Tier History Table when a new tier is assigned (first time) to an User
        Given User has logged in with DB
        When New Tier has been assigned to the User (Say X) at the first refresh
        Then A new entry should be created in the User tier history table

    @adminui @dynamictiering @orgTierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Import-Based Tier Assignment is Logged in the User Tier History Table
        Given User has logged in with DB
        When New Tier has been assigned to the User via tier classification import
        Then Verify that a new entry should be created in the User tier history table

    @adminui @dynamictiering @orgtierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the tier history table is updated when a new tier is assigned to an organization via import
        Given User has logged in with DB
        When New Tier has been assigned to the Organization via tier classification import
        Then Verify that a new entry should be created in the Organization tier history table

    @adminui @dynamictiering @orgtierHistory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the Tier History Records Are Not Overwritten (when org tier is updated)
        Given User has logged in with DB
        When As a result of refresh, organization has been upgraded to a new tier
        Then Ensure that a new record is created and existing tier records should not be Overwritten

    @adminui @dynamictiering @orgtierHistory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the Tier History Records Are Not Overwritten (when user tier is updated)
        Given User has logged in with DB
        When As a result of refresh, user has been upgraded to a new tier
        Then Ensure that a new record is created and existing tier records should not be Overwritten

    @adminui @dynamictiering @orgtierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify New History Entry is Created When Same Tier is Assigned Again
        Given User has logged in with DB
        When After refresh frequency, user/organization is retained with the same tier
        Then Ensure that a new record is created in the tier History

    @adminui @dynamictiering @orgtierHistory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the time stamp and the source of the last refresh is updated in the DB
        Given User has logged in with DB
        When After refresh frequency, user/organization is assigned with the newer tier
        Then Ensure that source and timestamp of refresh is getting captured in the tables


    # 008
    @adminui @dynamictiering @defaulttier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify default Tier Is Assigned for the users who successfully completes the Self-Registration
        Given User has completed the self registration through platform
        Then User should be assigned with the default tier

    @adminui @dynamictiering @defaulttier @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if any duplicate tier assignment events are getting triggered during the registration process
        Given User has completed the self registration through platform
        Then Verify that duplicate events should not be triggered for tier assignment.


    @adminui @dynamictiering @defaulttier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the default tier is assigned when admin creates a new user
        Given Admin has created a new user in the Tenant application
        Then Created new User should be assigned with the default tier

    # 012 & 014,46

    @adminui @dynamictiering @tierSegment @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether tier segment are visible in the tier setup
        Given User is in Tiersetup page
        When User click on Add Tier setup and completes Basic setup
        Then User should be able to view the created tier segments in the Add Tier segments page

    @adminui @dynamictiering @tierSegment @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the tier segment should not be available in promotions / menu audience / CMS audience mappings
        Given User has created the Tier segments
        When User is in the Promotion/Menu page
        Then User should not be able to see the tier segments in the promotions or menu audience

    @adminui @dynamictiering @tierSegment @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the default status is 'draft' when a new tier setup is created
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        Then Admin should see the default status as 'draft'


    @adminui @dynamictiering @tierSegment @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify status can be editable after creation
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin should see the default status as 'draft'
        Then Admin should be able to edit the status.



    # 021

    @adminui @dynamictiering @organisationPerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the organization's performance is calculated based on the aggregate value of all users within the organization
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then Admin should see the organization's performance calculated based on the aggregate value of all users within the organization


    @adminui @dynamictiering @organisationPerformance @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that updating a user's performance triggers recalculation of the organization's performance
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then Sale quantity of a user (from organization segment) is updated
        Then Organization performance should be recalculated based on the updated user performance

    @adminui @dynamictiering @organisationPerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that adding a new user updates the organization’s performance metrics
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then When a new user is added to the organization
        Then Organization performance should be recalculated based on the new user performance

    @adminui @dynamictiering @organisationPerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that removing a user updates the organization’s performance metrics
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then When a user is removed from the organization
        Then Organization performance should be recalculated based on the remaining users' performance

    @adminui @dynamictiering @organisationPerformance @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the performance of an excluded user is not included in the organization’s performance metrics
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then When a user is excluded from the organization
        Then Organization performance should not include the excluded user's performance metrics

    @adminui @dynamictiering @organisationPerformance @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the performance of an excluded organization is not included in the organization’s performance metrics
        Given User click on Add Tier setup
        When Admin completes Basic setup & adds the tier segment
        When Admin has created tier rules for the organization tier segment
        Then When admin excludes the same organisation from the organization
        Then Organization performance should not include the excluded user's performance metrics



    # 022,

    @adminui @dynamictiering @refreshFrequency @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to set refresh frequency as 'daily' for dynamic tiering type
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to set refresh frequency as 'daily' for participant/organization tiering segment

    @adminui @dynamictiering @refreshFrequency @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to set refresh frequency as 'weekly' for dynamic tiering type
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to set refresh frequency as 'weekly' for participant/organization tiering segment

    @adminui @dynamictiering @refreshFrequency @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to set refresh frequency as 'monthly' for dynamic tiering type
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to set refresh frequency as 'monthly' for participant/organization tiering segment

    @adminui @dynamictiering @refreshFrequency @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user option 'Only on Final Refresh date' is available for dynamic tiering type
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should not see the option 'Only on Final Refresh date' for dynamic tiering type. It should be available only for static tiering type

    # 023
    @adminui @dynamictiering @evaluationPeriod @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to set valid input (in number) for evaluation period in dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to set valid input (in number) for evaluation period in dynamic tiering

    @adminui @dynamictiering @evaluationPeriod @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when user set invalid input for evaluation period in dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should not be able to set invalid input for evaluation period , error message should be displayed

    @adminui @dynamictiering @evaluationPeriod @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to update the evaluation period in dynamic tiering (before publishing the tier setup)
        Given User is in Tier setup page
        When User edits an existing tier setup
        Then User should be able to update the evaluation period for the tier which is not published yet

    @adminui @dynamictiering @evaluationPeriod @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when user updates the evaluation period in dynamic tiering (after publishing the tier setup)
        Given User is in Tier setup page
        When User edits an existing tier setup
        Then User should be able to update the evaluation period for the tier which is published already
        Then User should see the updated evaluation period in the tier setup page

    @adminui @dynamictiering @evaluationPeriod @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that system takes the updated evaluation period into account when calculating the rest evaluation periods
        Given User is in Tier setup page
        When User edits an existing tier setup
        Then User should see the updated evaluation period in the tier setup page
        Then System should take the updated evaluation period into account when calculating the rest evaluation periods


    # 024
    @adminui @dynamictiering @rollingWindow @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select 'Individual Activation-based' rolling window for dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Individual Activation-based' rolling window for dynamic tiering

    @adminui @dynamictiering @rollingWindow @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select 'Common Cycle-based' rolling window for dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Common Cycle-based' rolling window for dynamic tiering

    @adminui @dynamictiering @rollingWindow @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select 'Hybrid' rolling window for dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Hybrid' rolling window for dynamic tiering


    # 025 , 026
    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that first evaluation period is calculated correctly based on Activation date and months entered in 'Evaluation Period' field
        Given User A has the activation date as 12/06/2025
        When evaluation period is set as 2 months
        Then First Evaluation period should be from 12/04/2025 to 12/06/2025

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that first refresh date for 'Individual Activation-based' rolling window is calculated correctly based on Activation date and 'n' months
        Given User A has the activation date as 12/06/2025
        When evaluation period is set as 2 months
        Then First Evaluation period should be from 12/04/2025 to 12/06/2025
        Then First refresh date should be 13/06/2025

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the second refresh date for 'Individual Activation-based' rolling window
        Given User A has the activation date as 12/06/2025  & first refresh date has happened on 13/06/2025
        Then Second refresh date depends on the refresh frequency selected
        When refresh frequency is set to 'daily'
        Then Second refresh date should be 14/06/2025
        When refresh frequency is set to 'weekly'
        Then Second refresh date should be 20/06/2025
        When refresh frequency is set to 'monthly'
        Then Second refresh date should be 13/07/2025

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the second , third evaluation period for 'Individual Activation-based' rolling window when refresh frequency is set to 'daily'
        Given User A has the activation date as 12/06/2025  & first refresh date has happened on 13/06/2025
        Then Second Evaluation period should be from 14/04/2025 to 13/06/2025
        Then Third Evaluation period should be from 15/04/2025 to 14/06/2025


    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the second , third evaluation period for 'Individual Activation-based' rolling window when refresh frequency is set to 'weekly'
        Given User A has the activation date as 12/06/2025  & first refresh date has happened on 13/06/2025
        Then Second Evaluation period should be from 20/04/2025 to 19/06/2025
        Then Third Evaluation period should be from 27/04/2025 to 26/06/2025

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify changing the months in 'Evaluation Period' field updates the evaluation period
        Given User A has the activation date as 12/06/2025
        When evaluation period is set as 2 months
        Then First Evaluation period should be from 12/04/2025 to 12/06/2025
        When User changes the evaluation period to 3 months
        Then First Evaluation period should be updated to 12/03/2025 to 12/06/2025


    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the evaluation period & refresh date is calculated correctly for different users with different activation dates
        Given User A has the activation date as 2025-07-01 & refresh frequency is set to 'weekly'
        When evaluation period is set as 2 months
        Then First Evaluation period should be from 2025-05-01 to 2025-07-01
        Then First refresh date should be 2025-07-02
        Then Second refresh date should be 2025-07-09
        Given User B has the activation date as 2025-07-15
        When evaluation period is set as 2 months
        Then First Evaluation period should be from 2025-05-15 to 2025-07-15
        Then First refresh date should be 2025-07-16
        Then Second refresh date should be 2025-07-23

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the calculation handles edge cases like leap years / start Date Falling on 31st
        Given Activation date of User A is 31/05/2025
        When  Evaluation period is set as 1 month
        Then Start date is calculated as 2025-04-30 (since April has 30 days)

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that 'Evaluation Period' field doesnt accept zero or negative values
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should not be able to set zero or negative values for Evaluation Period field

    @adminui @dynamictiering @individualactivation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify changing the refresh frequency during mid-cycle updates the evaluation period for the next tier calculation
        Given Initial refresh frequency is set to Weekly
        When User changes the refresh frequency to Monthly during mid-cycle
        Then Evaluation period should be updated to reflect the new frequency
        Then Next evaluation period should be calculated based on the new frequency



    # 027 & 028

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that Evaluation Period is Calculated Correctly Based on Tier Setup Start Date and evaluation period duration
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 12/06/2025
        When evaluation period is set to 2 months
        Then First Evaluation period should be from 12/04/2025 to 12/06/2025
        Then First refresh date should be 13/06/2025

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that second refresh date for 'Common Cycle-based' rolling window is calculated correctly based on the first refresh date and refresh frequency
        Given First refresh date has happened on 13/06/2025
        When refresh frequency is set to 'daily'
        Then Second refresh date should be 14/06/2025
        When refresh frequency is set to 'weekly'
        Then Second refresh date should be 20/06/2025
        When refresh frequency is set to 'monthly'
        Then Second refresh date should be 13/07/2025

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when Rolling type is selected as 'Common Cycle-based' all the users will be having the same evaluation period
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 12/06/2025 with evaluation period as 2 months / refresh frequency as 'daily'
        Then All users should have the same evaluation period from 12/04/2025 to 12/06/2025

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Evaluation period when Tier Setup start date is on last day of month
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 31/01/2025 with evaluation period as 2 months / refresh frequency as 'daily'
        Then First Evaluation period should be from 30/11/2024 to 31/01/2025
        Then First refresh date should be 01/02/2025

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario:  Verify Evaluation period when Tier Setup start date is 1st february 2025 and 'n' months is 1
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 01/02/2025 with evaluation period as 1 month / refresh frequency as 'daily'
        Then First Evaluation period should be from 01/01/2025 to 01/02/2025
        Then First refresh date should be 02/02/2025

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the evaluation period is calculated correctly when the tier setup start date is on the first day of the month
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 01/02/2025 with evaluation period as 2 months / refresh frequency as 'daily'
        Then First Evaluation period should be from 01/12/2024 to 01/02/2025
        Then First refresh date should be 02/02/2025


    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the Evaluation period start date and end date are correctly stored in the DB
        When Tier Setup is saved successfully
        Then Evaluation period start and end dates are correctly stored in the database

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Evaluation period calculation respects UTC and is consistent regardless of client time zone

    @adminui @dynamictiering @commoncycle @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Automatic Calculation of Next Rolling Evaluation period dates by applying 'daily refresh' frequency to previous period's start and end date
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has published the tier setup on 12/06/2025 with evaluation period as 2 months / refresh frequency as 'daily'
        Then First Evaluation period should be from 12/04/2025 to 12/06/2025
        Then First refresh date should be 13/06/2025
        Then Second evaluation period should be from 13/04/2025 to 13/06/2025
        Then Second refresh date should be 14/06/2025


    # 029

    @adminui @dynamictiering @hybridrolling @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify 'Individual activation based' rolling window is considered for entities activated after Tier setup start date
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has selected 'Hydrid' as rolling window type
        Then For the Entities (Org/User) activated after the tier setup start date, the evaluation period is calculated based on 'Individual activation based'

    @adminui @dynamictiering @hybridrolling @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify 'Common cycle' based rolling window is considered for entities activated before Tier setup start date
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has selected 'Hydrid' as rolling window type
        Then For the Entities (Org/User) activated before the tier setup start date, the evaluation period is calculated based on 'Common cycle' based rolling window

    @adminui @dynamictiering @hybridrolling @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rolling window considered for Entity activated exactly on Tier Setup start date
        Given User is in Tier setup page
        When User selects Add Tier setup - completes the Basic setup & adds the tier segment
        When Admin has selected 'Hydrid' as rolling window type
        Then For the Entities (Org/User) activated exactly on the tier setup start date, the evaluation period is calculated based on 'Common cycle' based rolling window

    @adminui @dynamictiering @hybridrolling @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when Entity activation date is null or missing

    @adminui @dynamictiering @hybridrolling @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the evaluation window is correctly persisted in the database when the Rolling Window type is set to 'Hybrid'
        When Entity activated after the tier setup date
        Then Evaluation cycle Start and end dates are saved accurately stored in the database based on Activation date.
        When Entity is activated before the tier setup date
        Then Evaluation cycle Start and end dates are saved accurately stored in the database based on tiersetup start date


    # 030

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that for each evaluation window, aggregated performance of all the users within the organization is considered for organisation tiering
        Given Admin is in Tier setup page
        When Admin selects Add Tier setup - completes the Basic setup & adds Organization tier segment
        When Admin has created tier rules for the organization tier segment
        Then Admin should see the aggregated performance of all the users within the organization is considered for organisation tiering

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that performance of users is correctly aggregated for each rolling evaluation window
        Given Admin is in Tier setup page
        When Admin selects Add Tier setup - completes the Basic setup & adds Organization tier segment
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Tier has reached the first evaluation window
        Then performance of users within that evaluation window dhould only be considered for aggregation
        Then Admin should see the aggregated performance of users is correctly calculated for each rolling evaluation window

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Confirm that aggregated performance data feeds into organisation tiering logic
        Given Admin is in Tier setup page
        When Admin selects Add Tier setup - completes the Basic setup & adds Organization tier segment
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Admin should see that aggregated performance of the user adds up to the organisation tiering points
        Then Organization upgrade/downgrade should happen based on the aggregated performance data

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify aggregation when organisation has only one user
        Given Admin is in Tier setup page
        When Admin clicks Add Tier setup - completes the Basic setup & adds Organization tier segment (which has only one user)
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Admin should see that the performance of the single user in the organisation is considered for deciding the organisation tier

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Organisation with no user performance data in evaluation window
        Given Admin is in Tier setup page
        When Admin clicks Add Tier setup - completes the Basic setup & adds Organization tier segment (which has no user performance data in evaluation window)
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Admin should see that the organisation does not get assigned to any tiers due to lack of user performance data in the evaluation window

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether User activities exactly on the start date/end date of evaluation window are considered
        Given User has performed a sale on the start date/end date of evaluation window
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Admin should see that the user activity on the start date/end date is considered in the aggregation for that evaluation window


    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Aggregation auto-updates if a user’s performance data (change in sales data) is corrected within the window
        Given Admin is in Tier setup page
        When Admin clicks Add Tier setup - completes the Basic setup & adds Organization tier segment
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then The sale record of the user gets changed within the evaluation window
        Then Admin should see that the aggregation auto-updates to reflect the corrected user performance data

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Validate the scenario where a single tier setup includes multiple organisations, each evaluated using distinct user sets and evaluation windows, ensuring that the results are accurate for each organisation.
        Given Admin is in Tier setup page
        When Admin clicks Add Tier setup - completes the Basic setup
        Then Admin has added multiple organisations segment within the same tier
        When Admin has created tier rules for the organization tier segment & published the tier setup
        Then Admin should see that each organisation is evaluated using distinct user sets and evaluation windows
        Then Admin should see that the results are accurate for each organisation based on their respective user performance data

    @adminui @dynamictiering @aggregatePerformance @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Validate the scenario where a single tier setup includes multiple user tier segments , each tiers gets evaluated using distinct user sets and evaluation windows, ensuring that the results are accurate.
        Given Admin is in Tier setup page
        When Admin clicks Add Tier setup - completes the Basic setup
        Then Admin has added multiple user tier segments within the same tier
        When Admin has created tier rules for the user tier segment & published the tier setup
        Then Admin should see that each user tier segment is evaluated using distinct user sets and evaluation windows
        Then Admin should see that the results are accurate for each user tier segment based on their respective user performance data

    # 032
    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if user is able to select 'Participant' as tier entity type for static tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Participant' as tier entity type

    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if user is able to select 'Organization' as tier entity type for static tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Organization' as tier entity type

    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if user is able to select 'Participant' as tier entity for dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Participant' as tier entity for dynamic tiering

    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if user is able to select 'Organization' as tier entity for dynamic tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to select 'Organization' as tier entity for dynamic tiering

    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when the tier entity type is set to 'Participant', the tier is assigned only to individual users and not to any organisation.

    @adminui @dynamictiering @entityType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when the tier entity type is set to 'Organization', the tier should be assigned to organisations and should be reflected in the user's profile associated with that organisation.

    # 034 & 035
    @adminui @dynamictiering @exclusion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when the tier entity type is selected as 'Participant' and admin has excluded an user then tier should not be assigned to that user

    @adminui @dynamictiering @exclusion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when the tier entity type is selected as 'Organization' and admin has excluded an organization then tier should not be assigned to that organization

    @adminui @dynamictiering @exclusion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenarion when tier segment has only one organization and admin has excluded that organization then tier should not be assigned to that organization

    @adminui @dynamictiering @exclusion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when tier segment has only one user and admin has excluded that user then tier should not be assigned to that user

    @adminui @dynamictiering @exclusion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when the tier entity type is set to 'Participant', the tier should not be assigned to any organization, even if the user is part of an organization.

    @adminui @dynamictiering @exclusion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if the user is able to delete the excluded user from the tier segment after it is published

    @adminui @dynamictiering @exclusion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if the user is able to delete the excluded organization from the tier segment after it is published

    @adminui @dynamictiering @exclusion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when an excluded user is re-included in the tier segment, recalculation occurs and the updated tier is assigned to this user as well.

    @adminui @dynamictiering @exclusion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that when an excluded organisation is re-included in the tier segment, recalculation occurs and the appropriate tier is reassigned to the organisation and its associated users.


    # 036, 037

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify system prevents publishing Tier Setup when a user is a part of more than one tier segment which is added in the same tier setup
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds multiple tier segments in the same tier setup
        Then User should not be able to publish the tier setup when a user is a part of more than one tier segment which is added in the tier setup

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify system prevents publishing the Tier setup when a organization is a part of more than one tier segment which is added in the same tier setup
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds multiple tier segments in the same tier setup
        Then User should not be able to publish the tier setup when a organization is a part of more than one tier segment which is added in the tier setup

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that system allows publishing Tier Setup when all segments have unique users
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds multiple tier segments in the same tier setup
        Then User should be able to publish the tier setup when all segments have unique users

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message displayed when attempting to publish Tier Setup with overlapping users
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds multiple tier segments in the same tier setup with overlapping users
        Then User should see an error message indicating that the tier setup cannot be published due to overlapping users

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify system prevents submission of Tier Setup when tiering segment is empty
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds a tier segment without any users or organizations
        Then User should see an error message indicating that the tier segment cannot be empty

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message displayed when Tier Segment is empty
        Given User is in Tier setup page
        When User selects Add Tier setup
        When User adds a tier segment without any organizations/user
        Then User should see an error message indicating that the tier segment cannot be empty

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where the tiersetup is in hold status, and when admin tries to publish the tier setup with overlapping users, the system should not allow it
        Given Tier setup is in hold status
        When Admin tries to publish the tier setup with overlapping users
        Then System should not allow publishing and should display an error message indicating that the tier setup cannot be published due to overlapping users

    @adminui @dynamictiering @tierSegmentOverlap @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where the tiersetup is in hold status, and when admin tries to publish the tier setup with zero users/organization in tier segment - Error message should be thrown
        Given Tier setup is in hold status
        When Admin tries to publish the tier setup with zero users/organization in tier segment
        Then System should not allow publishing and should display an error message indicating that the tier segment cannot be empty

    # 038

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can choose whether to allow only upgrade or both upgrade & downgrade by using 'Allow tier movement' section in Basic setup

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify enabling 'Enable tier downgrade' button includes both tier upgrade and downgrade

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that disabling 'Enable tier downgrade' button restricts from tier downgrade and the user/organizaton retains the same previously assigned tier

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the movement report in the tier setup captures both upgrade and downgrade movement

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier downgrade activity is captured in movement report even when 'Enable tier downgrade' is disabled

    @adminui @dynamictiering @tierActivity @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the downgrade activity is tagged as failed in movement report when 'Enable tier downgrade' is disabled

    # 39.40
    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can create a data view that include fields required for writing tiering rules so that tier is assigned based on the sales quantity performed by the user

    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the admin can create a data view by including necessary fields for tiering rules, enabling tier assignment based on the sales value achieved by the user.

    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the admin can create a data view by including necessary fields for tiering rules, enabling tier assignment based on the points/score attained by the user in promotions.

    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that admin can add CSAT score as a field in the data view

    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that CSAT score can be used as a condition in tiering rules

    @adminui @dynamictiering @dataView @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier assignment logic considers both CSAT and sales data


    # 041
    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if admin is able to set the default timezone for tiering
        Given User is in Tier setup page
        When User selects Add Tier setup
        Then User should be able to set the default timezone for tiering

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether only the transactions that fall within the default timezone-adjusted window are considered for tiering

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that points outside the qualifying period (as interpreted in the default timezone) are not included

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the default timezone setting is applied consistently across all tiering calculations and evaluations

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Timestamp conversion to default timezone is correctly handled

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that changing the system’s default timezone affects the tier calculation outcome

    @adminui @dynamictiering @timeZone @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the timezone used during calculation is recorded in audit logs

    # 042
    @adminui @dynamictiering @promotionscore @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the 'Exclude from Tier Calculation' checkbox is available when configuring a promotion rules

    @adminui @dynamictiering @promotionscore @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that scores/points from the promotion are not considered for tier assignment if admin has enabled 'Exclude Awarded Points from Tiering' option in the promotion setup.

    @adminui @dynamictiering @promotionscore @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that scores/points from the promotion are considered for tier assignment if admin has not enabled 'Exclude Awarded Points from Tiering' option in the promotion setup.

    @adminui @dynamictiering @promotionscore @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that admin can update the 'Exclude from Tier Calculation' checkbox in the promotion rules after the promotion has been created but not published.

    # 043, 044 , 45

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tactical bonus points are not considered during tier calculation

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that only base points are considered when tactical bonus points are excluded
    # What is tactical bonus points? From where do we get it

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can define tier rules by using 'Claimed Value', which can be sourced from an invoice claim.

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can define tier rules by using 'Claimed Value', which can be sourced from an sales claim.

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can define tier rules by using 'Claimed quantity', which can be sourced from invoice claim.

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can define tier rules by using 'Claimed quantity', which can be sourced from sales claim.

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin can define rules using combinations of sales & non-sales value (e.g., Points and Sales Value)

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Admin can define a tier rule using a combination of sales and non-sales metrics

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify tier assignment is based on the Participant performance evaluated based on a tier rule combining total sales and non-sales value (e.g., Points and Sales Value)

    @adminui @dynamictiering @tierEvaluation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier is assigned only when both sales and non-sales conditions are satisfied

    # 046

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify participant is evaluated based on new segment rules, when the tier segment of the user gets updated during  mid-evaluation period

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that old segment rules are not used after segment change

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify full-period data is applied against new segment rules
        Given User performance data is available for the entire evaluation period
        When User's tier segment is changed during the mid-evaluation period
        Then User should be evaluated based on the new segment rules using the full-period data

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the tier segment change does not affect the evaluation period of the user
        Given User's tier segment is changed during the mid-evaluation period
        When User's tier segment is changed
        Then User should still be evaluated based on the original evaluation period

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the segment change event is logged with timestamp

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Tier assignment reflects new segment's tiers, not original segment
        Given Segment A and B have different tier definitions (e.g., Bronze/Silver vs Basic/Elite)
        When User's tier segment is changed from Segment A to Segment B
        When Run tier calculation
        Then Assigned tier should be one of the tiers defined in Segment B, not Segment A

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the system handles multiple participant segment changes correctly
        Given Select multiple users and change their segments mid-way
        When Assign distinct rules to each segment
        When Run tier calculation
        Then Each user is evaluated using the new segment's rules regardless of when change occurred

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that user is not evaluated twice for the same period due to segment change\
        Given User's tier segment is changed during the mid-evaluation period from Segment A to Segment B
        When Segment A and Segment B has different tier definitions (e.g., Bronze/Silver vs Basic/Elite
        Then User should not be evaluated twice - once for segment A and one for segment b) for the same period due to segment change

    @adminui @dynamictiering @tiersegmentChange @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the User's profile in platform shows updated tier information after segment change
        Given User's tier segment is changed during the mid-evaluation period from Segment A to Segment B
        When Tier Calculation is run
        Then User's profile should reflect the updated tier information based on Segment B's rules


    # 047
    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier is cleared for an entity no longer part of any Tier Segment
        Given User/Organization was previously assigned to a Tier Segment A
        When At end of evaluation period, entity is excluded from the segment
        When Tier Calculation runs at the end of the evaluation period
        Then User/Organization should have no tier assigned (nullified tier)

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier is not nullified for an entity that still belongs to a valid Tier Segment
        Given User/Organization was previously assigned to a Tier Segment A
        When At end of evaluation period, entity remains part of the segment (either in Tier segment A or another segment)
        When Tier Calculation runs at the end of the evaluation period
        Then User/Organization should retain their tier assignment according to the segment rules

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that tier nullification does not affect historical data
        Given User/Organization was previously assigned to a Tier Segment A
        When At end of evaluation period, entity is excluded from the segment
        When Tier Calculation runs at the end of the evaluation period
        Then Historical tier data should still be accessible for reporting and analytics

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that mid-period segment removal results in tier nullification at period end
        Given User/Organization is assigned to a Tier Segment A & tier was assigned
        When User/Organization is removed from the segment mid-evaluation period
        When Tier Calculation runs at the end of the evaluation period
        Then User/Organization should have no tier assigned (nullified tier) at the end of the evaluation period

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario:  Verify that Tier nullification reflects in reporting and user/organization profile
        Given User/Organization was previously assigned to a Tier Segment A
        When At end of evaluation period, entity is excluded from the segment
        When Tier Calculation runs at the end of the evaluation period
        Then User/Organization profile should show no tier assigned
        Then Tier should not appear in user/organization form.

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that users with nullified tiers do not receive benefits from tier-based promotions

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify system logs tier removal with timestamp

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the user removed from the tier segment is not assigned to any tier
        Given User was previously assigned to a Tier Segment A & tier was assigned
        When Admin removes the user from the tierSegment
        When Tier Calculation runs at the end of the evaluation period
        Then User should have no tier assigned

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the organization removed from the tier segment is not assigned to any tier
        Given Organization was previously assigned to a Tier Segment A & tier was assigned
        When Admin removes the organization from the tierSegment
        When Tier Calculation runs at the end of the evaluation period
        Then Organization should have no tier assigned.

    @adminui @dynamictiering @nullifyTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: A user who belongs to an organization assigned to a tier segment has been granted a tier. Upon removal from the organization, ensure that the user is no longer assigned to any tier.
        Given User was previously assigned to a Organization which was assigned to a Tier Segment A & tier was assigned
        When Admin removes the user from the organization
        When Tier Calculation runs at the end of the evaluation period
        Then User should have no tier assigned.

    # 048
    @adminui @dynamictiering @tierBonus @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Tier nullification does not affect previously earned bonuses
        Given User/Organization was previously assigned to a Tier Segment A with a tier
        When At end of evaluation period, entity is excluded from the segment
        When Tier Calculation runs at the end of the evaluation period
        Then User/Organization should retain any bonuses earned while they were part of the tier

    @adminui @dynamictiering @tierBonus @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify system does not claw back tier-based rewards after tier is nullified
        Given User is part of the promotion that grants tier-based rewards
        When User is assigned with the points based on the current tier
        When User's tier is nullified at the end of the evaluation period (as a part of tier setup)
        Then User should not lose any rewards or benefits already granted based on their previous tier assignment from the promotion

    @adminui @dynamictiering @tierBonus @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario:  Verify bonus transaction logs show no reversal when tier is nullified
        Given User is part of the promotion that grants tier-based rewards
        When User is assigned with the points based on the current tier
        When User's tier is nullified at the end of the evaluation period (as a part of tier setup)
        When Review transaction logs before and after tier nullification
        Then Transaction logs should show no reversal or clawback of previously granted rewards

    @adminui @dynamictiering @tierBonus @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where Multiple participants retain tier-based bonuses after nullification
        Given Multiple users are part of the promotion that grants tier-based rewards
        When Each user is assigned with the points based on their current tier
        When Each user's tier is nullified at the end of the evaluation period (as a part of tier setup)
        Then Each user should retain any bonuses earned while they were part of the tier








