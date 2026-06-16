Feature: Membership Tier Promotion

    # created by  = kishore Gunasekaran
    # reviewed by = Ruthrakanth
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/organisation/

    ###################################### RBAC ################################################

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the Tier setup & Tier segment menu is listed in the Add/Edit Permissions page in Admin Management

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Super Admin has all the access (Read,Update,Delete) to the Tier Setup & Tier Segment page by default
    
    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin with read access to the tier setup / tier segment pages

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin with create access to the tier setup / tier segment pages

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the update access for the tier setup in the role permission in the admin management

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with no access to the Coupon Configuration page

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the publish access for the tier setup in the role permission in the admin management

    @adminui @membershiptier @rbacaccess @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin with Delete access to the tier setup / tier segment pages

    ########################################## Tier setup (RULE BASED TIERING) ###############################################

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the refresh is happening for the static tier setup depending upon the configuration
    # Verify if user is able to create tier segments with both Participant and Organisation individually.

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can create participant tier setup

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can create Organisation tier setup

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to navigate to the basic details and tier segment page

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to configure the static tiering with the following configuration - start date, End date. refresh frequency , Final refresh period
    
    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can able to create the basic setup and then proceed to the (advance setup) tier segment page

    @adminui @membershiptier @rulebasedtier @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message is thrown when duplicate name is given for the Tier Setup
    
    @adminui @membershiptier @rulebasedtier @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message is thrown when user tries to update the Tier setup with duplicate name.

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Tier setup name is not displayed to participants (just information for tier name)

    @adminui @membershiptier @rulebasedtier @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to choose Participant as a Tiered Entity in the tier setup

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Verify user is able to choose Organisation as a Tiered Entity in the tier setup

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tiering type can be static

    @adminui @membershiptier @rulebasedtier @system @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tiering type can be dynamic

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can create static tier setup with past, present and future start dates

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to create the static tier with Past start and end date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to create the static tier with Current star and end date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to create the static tier with Future start and end date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can create static tier setup with different refresh frequence

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to set the refresh frequency as 'daily'

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to set the refresh frequency as 'weekly'

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to set the refresh frequency as 'monthly'

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to set the refresh frequency as 'Only on Final refresh date'

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the refresh is happening for the static tier setup depending upon the configuration

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the final refresh date can be the end date
    
    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the final refresh date can be set to a past date, provided it is not earlier than the end date
    # having doubt on the above test case.
    # functionality of final refresh date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the final refresh date can be the future date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the refresh will completed upon the final refresh date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if the refresh frequency is not configured in the set-up page then the final refresh date will be considered as the refresh date

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier setup with all the status (Draft, Active, Closed, On-Hold)

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the active status will be shown once the tier setup is published

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the status is shown as draft, when the tier setup is not published

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to set the status as 'closed' for a tier setup

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to set the status as 'On-Hold' for a tier setup

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can add multiple tier levels along with the tier name in the tier setup

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can configure any names in the tier name field.

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can configure the levels as Level 1,Level 2,Level 3 in the tier setup, where Level 1 indicated the highest tier level
    # What is the level till which the admin can configure?

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a (tier change) upgrade occurs at each refresh frequency, provided the user meets the eligibility criteria

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a (tier change) retention occurs at each refresh frequency, when user doesnt meets the eligibility criteria & downgrade is turned off.

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a (tier change) downgrade occurs at each refresh frequency, when user doesnt meets the eligibility criteria & downgrade is turned on.

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that tier downgrade functions correctly when no downgrade restriction is applied

    @adminui @membershiptier @rulebasedtier @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that only upgrades and retentions are allowed when downgrades are not permitted

    ############################################# AUDIENCE TIER SEGMENTS #####################################################

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can add one or more tier segments into the tier setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user cannot able to modiy the tier segment once it is published
    # need to confirm this test case with the dev team

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can add tier segment by selecting the participant 

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can able to add tier segment by selecting the Organisation

    @adminui @membershiptier @tiersegments @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin is not able to add User Tier segment by selecting 'Organisations' as Tiering Entity

    @adminui @membershiptier @tiersegments @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin is not able to add Organisation Tier segment by selecting 'User' as Tiering Entity

    @adminui @membershiptier @tiersegments @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that overlapping users in the tier segments throws an error when user tries to publish the tier setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that overlapping Organisations in the tier segments throws an error when user tries to publish the tier setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to publish the tier once the overlapping of organsation/users is removed

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user is able to exclude users from the tier segments

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user is able to exclude organisations from the tier segments

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the excluded users/organisations are excluded from the tiering rules

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can view the tiering segment user list

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can view the tiering segment Organisation list

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with primary job role

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the participant tiering segment creation with multiple primary job role

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with custom criteria such as users.country,users.status.users.address.state

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with custom criteria such as users.country and jobrole

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with custom criteria such as users.state and jobrole

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with custom criteria such as users.address.state and jobrole

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant tiering segment creation with the combination of multiple custom criteria condition and job role

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple group in the add custom criteria

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Organization tiering segment creation with custom criteria such as organisations.orgtype organizationAddresses.state, organizationAddress.country,organisations.status

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Organization tiering segment creation with custom criteria -organisations.status,

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Verify Organization tiering segment creation with custom criteria - organisations.orgtype,

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Verify Organization tiering segment creation with custom criteria - organisations.orgtype, organizationAddresses.state

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Organization tiering segment creation with custom criteria - organizationAddress.country

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Organization tiering segment creation with custom criteria which considers only primary organisation





    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the audience users list will have username, email id, phone number, status fields

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the 'n' number of tier segment can be assigned to the tier setup
    # is there any limit of segment that can be assigned to the tier setup? same for audience as well

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can add one or more Tier Segments into the Tier Setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to add 3 tier segment into the Tier Setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the success/failure message while publishing the tier setup

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message is shown, if a participant is mapped to 2 tier segments under the same condition

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Tier Segments is added in the Tier Setup must have at least one user
    # doubt on this test case

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Tier Setup cannot be submitted if any of the added Tier Segments is empty (if user is not added)
    # doubt on this test case

    @adminui @membershiptier @tiersegments @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin should be able to exclude specific users from selected tier segments, to exclude them from tiering rules.

    @adminui @membershiptier @tiersegments @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the points are not awarded to the excluded users/organzations


    ########################################## Tiering data, rule and communication ####################################

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the checkbox 'Exclude from Tier evaluation' is available in the points payout section of all the promotions.

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify enabling this checkbox and crediting points to the user will calculate the points/scores

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify points marked as excluded are not used in tier calculation

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify points/scores awarded to the user without being marked as excluded are considered in tier calculation

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify exclusion status is stored in promotionPoints table

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify exclusion status is stored in promotionScores table



    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating more than one tiering setup.

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to create 4 tiering setup (boundary value)

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify RBAC advanced setup access for tiering setup

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the read access for the tiering setup in the role in the admin management

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the update access for the tiering setup in the role in the admin management

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the create access for the tiering setup in the role in the admin management

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the delete access for the tiering setup in the role in the admin management

    # @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the default access for the tiering setup in the tenant admin role and super admin role in the admin management

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating a view inside a tiering setup

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating muliple views inside the tiering group (boundary value)

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can publish the view

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to publish multiple views

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can view the sample data of the view

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that when a participant's attribute changes during the qualifying period, causing them to become ineligible for any tier segment added in the tier setup, no tier rules should be applied to the user

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that when a organisation's attribute changes during the qualifying period, causing them to become ineligible for any tier segment added in the tier setup, no tier rules should be applied to the organization

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Tier Nullification When Segment Eligibility Changes During Qualifying Period

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify no bonus points are granted after tier is nullified

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate that previously earned bonuses remain intact after tier nullification

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate tier history table logs the period of tier eligibility 

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure no tier is assigned when user is not in any segment

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate tier nullification for organization-level segment change

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure that tier nullification does not retract previously earned bonus points in other promotions

    @adminui @membershiptier @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that on the refresh date of each qualifying period, the Tier Setup nullifies the last assigned tier for all users or organizations that are no longer part of any eligible Tier Segment.

    @adminui @editTierSetup @tierrules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that Tier name & description cannot be modified once it is published

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to edit the tier name & description when it is in draft status

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin is able to suspend the tier setup temporarily after it is published

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the status is changed from 'active' to 'on-hold', last assigned participant tier will continue to be active and further tier refresh will not occur in future.

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the status is changed from 'active' to 'on-hold', last assigned organisation tier will continue to be active and further tier refresh will not occur in future.

    @adminui @editTierSetup @tierrules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that tier refresh is happening for the tier setup when the status is 'on-hold'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that tier refresh is happening for the tier setup when the status is changed from 'on-hold' to 'active'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that tier assignment is happening on the next scheduled refresh date when the status is changed from 'on-hold' to 'active'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin user can change the status from 'on-hold' or 'active' to 'closed'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the participant retain their most recent tier assignment until manually rest via import or new tier setup, when the status is changed from 'on-hold' or 'active' to 'closed'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the organisation retain their most recent tier assignment until manually rest via import or new tier setup, when the status is changed from 'on-hold' or 'active' to 'closed'

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Entity for Tiering cannot be modified once it is published

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Tiering type cannot be modified once it is published

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify end date can be extended even after the tier setup is published, but cannot be lesser than the end date specified while publishing.

    @adminui @editTierSetup @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Refresh date can be extended even after the tier setup is published, but cannot be lesser than the end date specified while publishing

    @adminui @addTierSegment @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add new Tier segment once the tier setup is published
    
    @adminui @addTierSegment @tierrules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user should not be allowed to delete the existing Tier segment once the tier setup is published
    
    @adminui @addTierSegment @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin is not allowed to Add/remove exclusions once the tier setup is published

    @adminui @addTierSegment @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that tier rules cannot be added, removed, or modified for existing Tier Segments after the tier setup has been published.

    @adminui @addTierSegment @tierrules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add new Tier rules for newly added Tier segments & Tier setup can be republished.



    # doubt : What is the use of the closed status
    # doubt : what happens if we change the active status to closed. it is said in US that, participants/organisations retain their most recent tier assignment until manually 
    #    reset via an import or new Tier Setup. The act of closing is permanent and necessitates creating a new Tier Setup if further rule-based tiering is required.



    ##################################### Tier Upload Data Specification #########################################

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can upload the user tier assignment data

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can upload the organization tier assignment data

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create 3 number of tier rules(boundary value)

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to create 1 number of tier rules (boundary value)

    @adminui @membershiptier @tierupload @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message displayed when admin user tries to add more than 3 tier rules

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can select 3 number of tier segments for one tier rule

    @adminui @membershiptier @tierupload @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to select 4 number of tier segments for a tier rule

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can add 3 number of measure rules for tier rules

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can add and edit tier rules until the tier setup is published

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can add variable name for the measure rules

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can select the view column and operator in the variable name expression

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create more than one rule variables

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create the rule definition with the column from view selected and the operators

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can select the assign reward

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the static from the configured one and views from the dynamic 

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the dynamic views are configured and it is reflected (views)

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the static views are configured one (views)

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create multiple measure rules for each tier name in a single tier rule

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to create single measure rules for each tier name in the tier rule

    @adminui @membershiptier @tierupload @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create multiple tier rule wherein each tier rule can have multiple measure rules for each tier name

    ############################## Tier Branding and others ############################# phase 2

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating n number of tier branding

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify creating the 3 and 4 number of tier branding (boundary value)

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify each tier brand is having the tier name and colors selected

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify for all the tier branch is having the tier name and colour selected and shown in the platform portal upon configuration

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify tier brand cannot be created for the duplicate tier name

    @adminui @membershiptier @tierbranding @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier brand can be created for the duplicate tier name

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier workflow is exists upon tenant creation as a seeded workflow

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the dynamic audience have the tiers criteria with both user and organization tiers //phase 2

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the organization tiers dynamic audience will create the user list who is having the organization tier's organization as primary organization //phase 2

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify enabling and disabling the membership tiering in admin enables it in platform portal

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify enabling the membership tiering in admin portal enables it in platform portal for the tiering in the points card

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify disabled the membership tiering in the admin portal diables it in the platform portal for the tiering

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier you are here in mobile (home page screen)

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier page you are here in platform portal

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier page you are here as gold tier in the platform portal as per the configuration

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier page you are here as silver tier in the platform portal as per the configuration

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier page you are here as bronse tier in the platform portal as per the configuration

    @adminui @membershiptier @tierbranding @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the remaining points required for moving to the next tier

    ################################ Tiering movement report ###############################

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement reports batch run is based on the program timeZone


    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement report is getting created automatically for the tier setup upon tier refresh

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the tier movement report as daily upon the tier refreh frequency (static tiering)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the tier movement report as weekely upon the tier refreh frequency (static tiering)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the tier movement report as monthly upon the tier refreh frequency (static tiering)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the tier movement report as one-time upon the tier refreh frequency (static tiering)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement report is getting created for both organization and participant tier setup

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the movement reports is created for participant tier setup (static tiering)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement report is getting created for both static and dynamic tier setup

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement report is getting created for different rolling window type

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can view and download the report

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can filter the reports based on the date range

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can search for the report data based on the user name

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can search for the report data based on the organization name //phase 2

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify no user should not belong to more than one tier segment

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the refreh date in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the username in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the org code in the tier movements reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the previous tier in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the new tier in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the movement type in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the movement status in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the failure reason in the tier movement reports table

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pagination in the Logtable

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier movement reports capture both successfull and unsuccessfull reports in the tier setup (initiated)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the unsuccessfull tier reports with the failure reason (downgrade restrictions)

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the log table, some filters to filter the data in the log table and download option to export filtered data to CSV/Excel

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: filters to filter the data in the log table and download option to export filtered data to CSV/Excel

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the download option to export filtered data to CSV/Excel

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the tier setup widgets in the page builder and configure and view the widget in the platform portal

    @adminui @membershiptier @tierreports @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the widget for the tiering in the mobile application








