
Feature: End 2 End Flow of tier promotion

    # Created by  = kishore Gunasekaran
    # reviewed by = 
    # updated by  = 
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/e865bac3-cbfb-40b3-82bf-066cf1f03ad6/program/f4801647-f0bb-4c82-86df-8a82e7b25490/promotions/

    Scenario: User Create a tier tiering with three level tier and admin upload the sales where audience user have completed n number of sales and placed in tier level 2. Verify audience user will get the points based on the tier level 2.

    Scenario: Create a tier with three level tier. Admin upload the sales where audience user X have completed n number of sales and placed in tier level 1. Admin upload the another sales where the audience user X have completed m number of sales and cumulative sales adds the user in tier level 2. Verify audience user will get the points based on the tier level 2 not the cumulative of level 1 and level 2.

    Scenario:Create a member ship tiering with a audience group and user y is not a part of that group. Now Admin uploads the sales with the user y sales. Verify points are not added for the user y 

    Scenario: User Create a member ship tiering with a audience group and user z is part of it. When admin uploads the sales with the user z sales, user z achieves the tier 1. Now user z moves to a different job role then first cycle user should get the tier 1 points. From cycle 2, user z will not be present.

    Scenario:Create a tier promotion with start date is 01-Jan-2023, reset frequency is 3 months and buffer period is 5 days then qualifying periods and reset date for each qualifying period

    Scenario:Create a tier promotion,user Create the tier group with the hierarchy name and hierarchy level, multiple tier group can be Created across their hierarchy level and name

    Scenario:Create a tier promotion, when jobrole option is selected in the tier group, then multiple tier groups will be Created based on job roles available in the program. Admin user can specify tier rules for one or more groups.

    Scenario:Created a tier promotion, when organisation is selected in the tier group, then multiple tier group will be Created based on the organisation level in the program, admin user can specfic tier rules for one or more groups in the promotion

    Scenario:Create a tier promotion, when primary hierarchy node is selected in the tier group, then multiple tier group can be Created based on the primary hierarchy level in the program, admin user can specfic tier rules for one or more groups in the promotion

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant, admin can specify primary hierarchy(node) rules can be set if Level 3 is selected, then 2 groups will be Created in the tier group

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant, admin can specify primary hierarchy(node) rules if level 4 selected, then 4 groups will be Created in the tier group

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,When participant or organization moves from one tier group to another in the middle of a qualifying period, the prior participant will be remaining in the ongoing qualifying period

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, If participant is in Tier 2 position, the participant will be on tier 2 untill the qualifying period ends, after the next qualifying period starts, participant will be moved to tier 3

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, If organisation is on Tier 3 due to no sales,Halfway through the qualifying period,it merges with another organisation, doubling its sales and qualifying it for Tier 4 in the next qualifying period

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, When new job roles are added which were not present at the time or creation of tier promotion, admin user can able to edit the promotion and add the newly Created job role and hierarchy in the tier group

    Scenario: Create the tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, user can have only one primary job role, and they can have multiple secondary job roles. Only primary job role will be considered for grouping participants into job role-based in the tier groups.

    Scenario:Create a tier promotion when user has a primary jobrole and multiple secondary jobroles in the job role based tier group

    Scenario: Verify creating a tier promotion when the user with multiple jobroles and only primary jobrole is considered for grouping participants in the job role based tier group

    Scenario: user Created the tier promotion, after the promotion is published tiering group cannot be editable

    Scenario: user Created the tier promotion, after the promotion is published, newly Created job role and organisation will be added in the tiering group

    # Data for building tier rules (non-editable after publishing of promotion)
    # upload sales,invoice sales,coupon sales,SFTP upload

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity where admin can select the relevant table and Create a view which has the fields based on any sale date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience will be eligible for for quantity based tier sales of the participant

    # for qty based tiering of participant
    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity where admin can select the relevant table and Create a view which has the fields based on invoice sale date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience will be eligible for quantity based tier sales of the participant

    # for value-based tiering of participant
    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity where admin can select the relevant table and Create a view which has the fields based on invoice sale date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience will be eligible for quantity based tier sales of the participant

    # for value-based tiering of participant
    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant  tired entity where admin can select the relevant table and Create a view which has the fields based on the coupon sale data date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience will be eligible for quantity based tier sales of the participant

    Scenario: Create a tier promotion where  any sale date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience will be eligilble for the value based tier saled of the participant

    #for points-based tiering of participant
    Scenario: Create a tier promotion, when point deposit date is greater than the qualifying period start date and lesser than the qualifying period end date and username belongs to promotion audience and points type = Base Points

    #for qty based tiering of organization
    Scenario: Create a tier promotion,where any sale date ≥ qualifying period start date and ≤ qualifying period end date and selling user in the organization belongs to promotion audience for qty based tiering of organisation

    #for points-based tiering of organization
    Scenario: Create a tier promotion,where point deposit date ≥ qualifying period start date and ≤ qualifying period end date and selling user in the organization belongs to promotion audience and points_type = Base Points

    # Tier rules for tier groups (non-editable after publishing of promotion)
    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with tired entity,In tier rules user can define rules for one or more groups for all tier types

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,In tier rules user can define rules for one or more groups for job role type

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity,In tier rules user can define rules for one or more groups for job role type

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,In tier rules user can define rules for one or more groups for hierarchy type

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity, In tier rules user can define rules for one or more groups organisation type

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,in tier user admin user can specify primary hierarchy(node) rules can be set if Level 3 is selected, then 2 groups will be Created in the tier group

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,In tier user admin user can specify primary job-role rules can be set if 2 job role is selected, then 2 groups will be Created in the tier group

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity and Create mutliple tier group,specfic the rules in one group for organisation, each organisation belong to that group will be assigned with the tier

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity and Create mutliple tier group,specfic the rules in one group for organisation, each organisation belong to that group will be assigned with the tier, other organisation who is not part of the group will not be assigned with the tier

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,In tier rules select the table and set as <qualifying sales> is <greater> and <lessthan> in the range then <assign> level 1

        Examples:
            | Qualifying Sales  | greater | lessthan | assign   |
            | Qualifying Sales  | 5000    | 10000    | BRONZE   |
            | Qualifiying Sales | 10000   | 30000    | SILVER   |
            | Qualifiying Sales | 30000   | 50000    | GOLD     |
            | Qualifiying Sales | 50000   | 100000   | PLATINUM |

    Scenario: Create a tier promotion with reset frequency, buffer period and dynamic assignment based on the tier rules with participant tired entity,In tier rules select the table and set as <qualifying units> is <greater> and <less than> in the range then <assign> level 1

        Examples:
            | Qualifying units  | greater | lessthan | assign   |
            | Qualifying units  | 50      | 100      | BRONZE   |
            | Qualifiying units | 100     | 300      | SILVER   |
            | Qualifiying units | 300     | 500      | GOLD     |
            | Qualifiying units | 500     | 1000     | PLATINUM |

    # IF “Qualifying Units” ≥ 50 AND ˂100, ASSIGN BRONZE
    # IF “Qualifying Units” ≥ 100 AND ˂300, ASSIGN SILVER
    # IF “Qualifying Units” ≥ 300 AND ˂500 AND TRAINING_COMPLETION%=100%, ASSIGN GOLD
    # IF “Qualifying Units” ≥ 300 AND ˂500 AND TRAINING_COMPLETION%˂100%, ASSIGN SILVER
    # IF “Qualifying Units” ≥ 500 AND ˂1000 AND TRAINING_COMPLETION%=100%, ASSIGN PLATINUM
    # IF “Qualifying Units” ≥ 500 AND ˂1000 AND TRAINING_COMPLETION%˂100%, ASSIGN GOLD

    Scenario: Create a tier promotion with reset frequency, buffer period and dynamic assignment based on the tier rules with tired entity,In tier rules select the table and set as <qualifying units is <greater> and <less than> in the range then <assign> level 1 with the training completion

    #upgrade Bonus
    Scenario: Create a tier promotion with reset frequency, buffer period and dynamic assignment based on the tier rules with participant tired entity, upgrade bonus points can be achieved, when the user upgrades to a specific tier only for the first time

    Scenario: Create a tier promotion with reset frequency, buffer period and dynamic assignment based on the tier rules with participant tired entity, user from level 3 to level 2 downgraded If a participant gets downgraded and then gets upgraded to the same tier, since he has already received an upgrade bonus to that tier, he will not receive any bonus next time.

    Scenario: Create a tier promotion with reset frequency, buffer period and dynamic assignment based on the tier rules with participant tired entity, user from level 2 tier to level 3 tier user upgraded the tier he will receive the bonus for the upgrade points only for the first time

    #Admin Override in tier promotion

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity,In promotion where all the past and ongoing qualifying periods will be displayed. Against the active qualifying period admin can specify an override action with the add overide  with immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity,In promotion where all the past and ongoing qualifying periods will be displayed. Against the active qualifying period admin can specify an override action with the add overide  with immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity with tier group as job role and apply rules to the tables and assign tier assignment rules to the tier group job roles,In qualifying period where admin can override and assign the tier and choose immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity with tier group as organisation and apply rules to the tables and assign tier assignment rules to the tier group organisation,In qualifying period where admin can override and assign the tier and choose immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity with tier rules as job role and apply rules to the tables and assign tier assignment rules to the tier group job role,In qualifying period where admin override, select the users and assign the tier and choose immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity with tier rules as hierarchy and apply rules to the tables and assign tier assignment rules to the tier group hiearchy,In qualifying period where admin override, select the users and assign the tier and choose immediate effect

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity with tier group as job role and apply rules to the tables and assign tier assignment rules to the tier group job role,In qualifying period where admin override can select the tier and choose when qualifying periods ends

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with participant tired entity with tier group as job role and apply rules to the tables and assign tier assignment rules to the tier group job role,In qualifying period where admin override can select the users and choose when qualifying periods ends

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity with tier group as organisation and apply rules to the tables and assign tier assignment rules to the tier group organisation,In qualifying period where admin can able to download the tier assignment

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity with tier group as organisation and apply rules to the tables and assign tier assignment rules to the tier group organisation, In qualifying period where admin can able to view overrides in the ongoing status of the tier

    Scenario: Create a tier promotion with reset frequency,buffer period and dynamic assignment based on the tier rules with organisation tired entity with tier as organisation and apply rules to the tables and assign tier assignment rules to the tier group organisation,In qualifying period where admin can able to view overrides in the completed status of the tier

    #Tiering based on tier file upload

    Scenario:Create a tier promotion with reset frequency,buffer period, Tier names,tier assignment method based on the tier file with tired entity as participant,In qualifying periods where user can able to see all the past and ongoing tier in the qualifying period session

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as organisation ,Verify in the organization table and organization tier history table for the organisation upload

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,Verify in the user table and user tier history table for the participant upload

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as organisation,tier file from SFTP and process it automatically without any manual intervention

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as organisation, In qualifying period, If there is no file on the reset date, then previous tier will persist till file is uploaded, After the file is uploaded, it will be processed and tiers will be assigned.

    Scenario: Create a tier promotion,In the Qualifying Periods section,Admin can go to the active qualification period and upload tier file against that. The tier file will be processed on the reset date and new tiers will be assigned as per the file.

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,In the Qualifying Periods section,Admin can see all the past and ongoing qualifying period along with their start date, end date and tier reset date. Admin can go to the completed qualification period and upload tier file

    Scenario: Create a tier promotion,In the Qualifying Periods section,Admin can go to the ongoing qualification period and upload tier file against that. The tier file will be processed on the reset date and new tiers will be assigned as per the file.

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,In the Qualifying Periods section,Admin can see all the past and ongoing qualifying period along with their start date, end date and tier reset date

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant, In qualifying period admin can upload participant tier file, based on the uplaod tier file participant will be assigned with the tier

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as organisation,In qualifying period admin can upload organisation tier file, based on the file upload tier will be assigned to the organisation

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity,the SFTP tier upload file in tiering based on the file upload automatically and process it

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,In qualifying periods admin can go to the active qualification period and upload the tier

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,In Qualifying period after tier file upload the file will process on the reset date and new tier will be assigned

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,the participant tier upload file in qualifying periods in the ongoing period

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,the participant tier upload file in qualifying period in the completed period

    Scenario: Create tier promotion,the organisation tier upload file in in qualifying period in the completed period

    Scenario:Create tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,the organisation tier upload file in the qualifying period in the ongoing period

    Scenario:Create tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,the participant tier upload file in the qualifying period in the ongoing period

    Scenario:Create tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as organisation,the organisation tier upload file in the qualifying period in the ongoing period

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant,Admin can upload tier file against corresponding qualifying period with tier incluced in the upload file

    # Tier promotion statuses // Assign on hold status

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity as participant, activetier promotion can be put on hold by admin and enabled later

    Scenario: An inactive tier promotion can be put on hole by admin and enable active later

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity ,If the qualifying dates is disabled before the reset dates in the promotion, tier assignement will not happen in the reset date, promotion is inactive

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity ,Admin cannot edit tier rules for tier groups after the promotion has been published

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity,Admin can change status of promotions from active to on-hold to ensure that tier resets are suspended after this action

    Scenario: Create a tier promotion,Admin can change status from on-hold to active to ensure that no tier resets happen in ongoing qualifying period

    Scenario: Create a tier promotion,promotion status onhold to active tier reset will be triggered from subsequent qualifying period

    Scenario: create a tier promotion  with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, If admin can change status of promotions from active to closed the participant tiers are nullified for those who are apart of the audience in the promotion

    Scenario:create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, If admin can change status of promotions from active to closed the organization tiers are nullified for those who are apart of the audience in the promotion

    Scenario:Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity,An active tier promotion can be closed by admin

    Scenario: Create a tier promotion  with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, An active tier promotion can be “Closed” by admin,if promotion is closed the participant tier will be blank

    Scenario: Create a tier promotion  with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, An active tier promotion can be “Closed” by admin,if promotion is closed the organisation tier will be blank

    Scenario: Admin can Create different tier rules for different tier groups and tier rule will be applied for tier assignment based on participant tier group

    # Scenario: Admin can Create different tier rules for different tier groups and appropriate tier rule will be applied for tier assignment based on organisation tier group

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,Admin can select the tier assignment method as tier file upload

    Scenario: admin can select the tier assignment method as rule-based for a program and ensure it is locked post-selection

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin user can Create a view in data section and build tier rules based on any column present in the view

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin will be able to Create tier rules based on sales quantity

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity,Admin will be able to Create tier rules based on sales value

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin will be able to Create tier rules based on points

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin can add non-sale criteria along with sales quantity in defining tier rules

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin can add non-sale criteria along with sales value in defining tier rules

    Scenario: Create a tier promotion with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, Admin can add non-sale criteria along with points in defining tier rules

    Scenario: create a tier promotion, with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity ,tier upgrade notification will be triggered if participant has upgraded to a new tier after tier reset

    Scenario: create a tier promotion, with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity ,tier retained notification will be triggered if participant has retained his past tier after tier reset

    Scenario: create a tier promotion, with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, tier downgrade notification will be triggered if participant has downgraded to a lower tier after tier reset

    Scenario: create a tier promotion, with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, tier reset reminder notifications,Admin should be able to schedule reminder notifications n days before tier reset where n should be configurable in the promotion notifications section

    Scenario: create a tier promtoion,with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity, If active promotion transfer to new promotion participant last tier from the previous promotion becomes the default tier until the first reset date in the new promotion

    Scenario: create a tier promtoion,with reset frequency,buffer period,Tier names,tier assignment method based on the tier file with tired entity,If the new promotion is created, the previous promotion will be switched to the closed status promotion, If the old promotion was for participant the newly cretaed promotio will be also be in the participant only, Admin cannot able to change it in the new promotion






zi