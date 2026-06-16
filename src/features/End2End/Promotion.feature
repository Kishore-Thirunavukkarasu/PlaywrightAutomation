Feature: Promotion End-to-End Test Case
  As an admin user
  I want to test the end to end promotion functionality
  So that I can ensure it works correctly

  # superadmin user login and navigate to the tenant and program
  # superadmin user create a single measure promotion
  # 1. promotion basic
  # superadmin user create a basic details
  # superadmin user select audience
  # 2. data and view
  # create data and view
  # 3. measure
  # measure basic
  # measure rules
  # payout
  # approver settings
  # 4. communication
  # 5. Dashboard
  # 6. Reports
  # 7. publish the promotion
  # superadmin user navigate to created promotion
  # superadmin user import the sales for a platform user
  # platform user login to the platform portal
  # platform user verifies the points deposited


  Scenario: Promotion flow to provide points for user who uploads the picture
    Given User launches admin application
    When SuperAdmin login to Admin application
    Then Tenant list page will be displayed with all tenants
    When user navigate to the end2end tenant
    Then Verify user navigate to End2End Tenant
    #above steps in tenantui
    When user tries to create single measure promotion
    When user enters the valid promotion basic detail
    When click on next in promotion wizard
    Then it should show an info message that "Saved successfully"
    Then it navigates to the audience tab
    # audience selection
    When user selects the "eligible" audience detail
    Then selected audience should be present in the "eligible" audience section
    Then number of users in audience should be listed
    When user selects the "reporting" audience detail
    Then selected audience should be present in the "reporting" audience section
    # completing the promotion basic
    When user click on submit in promotion wizard
    Then promotion created message should be shown up
    Then Should Navigate to the single promotion wizard

    When user navigate to uploadtab
    When user click on addfile button in upload tab
    Then should display the add file popup

    # selecting the upload file *************Need to mention in enum which _file_ we need to uplod, which _metadata_ i need to select
    When user enters the upload for "AOT" "participant" "single" target
    Then should show successful message in upload tab

    When user navigate to the view tab
    When user click on create view button in view tab
    Then should display the create view page

    When user adds the tables for "AOTParticipantSingle"
    Then tables for "AOTParticipantSingle" should be displayed

    When user selects the column accordion
    When user selects "AOTParticipantSingle" columns from table
    Then selected column will be displayed in the create view secion


  # When admin tries to create single measure promotion
  # Then Should navigate to the single promotion wizard
  # When admin enters the valid basic details
  # When user navigate to the audience tab
  # Then audience tab should be displayed to the user

  # When product type is single
  # And product sale attribute is quantity based
  # And Sales is uploaded by user
  # And Sales achievement level is of participant type
  # And Reward earning model is target Reward
  # And reward type is points spendable
  # And reward structure is single level
  # And reward is for user
  # And sales within promotion period
  # And sales is within calculate metrics date

  # Then Sales should be marked to the user
  # Then reward points should be calculated based on the earning model and structure
  # Then Reward should be issued to the participant
  # Then Reward notification should be sent to the participant



  Scenario: Promotion flow to award points for verifying the predefined values in predefined schema.
  # provide points for user who uploads the picture within the promotion period
  # provide points for user who registered in system before a particular date
  Scenario: Promotion flow to award points for verifying the the new column values in older schema.
  # provide points for user who updates their driving license within the promotion period ::-:: driving license can be added as a new column in the existing user schema
  Scenario: Promotion flow to award points for changing the the new column values in new schema.
  # provide points for user who completes the training within the promotion period ::-:: training is a new user schema which have status completed
  # product based : single or bundle : quantity based or value based
  Scenario: Promotion flow to award points for single product sales based on quantity within the promotion period.
  Scenario: Promotion flow to award scores for single product sales based on value within the promotion period.
  Scenario: Promotion flow to award game tokens for product bundle sales based on quantity within the promotion period
  # sales import or claim or sales upload
  Scenario: Promotion flow to award points for product sales based on quantity where sales are imported by admin without user and claimed the invoice by user
  Scenario: Promotion flow to award points for product sales where sales are imported and user challenge is approved by admin
  Scenario: Promotion flow to award points for product sales based on value where sales are imported by admin with user details
  Scenario: Promotion flow to award scores for product sales based on quantity where sales are claimed by user. (i.e, uploaded by user)
  Scenario: Promotion flow to award game tokens for product bundle sales based on value where sales are imported by admin with user details
  # sales achievement level
  Scenario: Promotion flow to award points for product sales with achievement leve is at organization and admin imports the sales
  Scenario: Promotion flow to award scores for activity sales with achievement level is at participant and admin imports the sales]
  # Tier based
  Scenario: Promotion flow to award Game tokens for product sales with earning model is having single tier
  Scenario: Promotion flow to award points for product sales with earning model is having tier and admin imports the sales which enables user to be at tier 1
  Scenario: Promotion flow to award points for product sales with earning model is having tier and admin imports the sales which enables user to be at tier 2
  # Threshold based
  Scenario: Promotion flow to award points for product sales with threshold reward structure and admin imports the sales which enables user to be at single threshold
  Scenario: Promotion flow to award scores for product sales with threshold reward structure and user uploads the sales which enables user to be at multiple threshold
  # user and manager
  Scenario: Promotion flow to award scores for user and manager based reward rules and both user, manager achieving the promotion
  Scenario: Promotion flow to award points for manager based reward rules and manager is not achieving the promotion and user achieving the promotion
  # Custom
  Scenario: Promotion flow to award points by custom views and custom rules
  Scenario: Promotion flow to award points by adding more than one participant rules
  Scenario: Promotion flow to award points by adding more than one Manager reward rules
  Scenario: Promotion flow to award points by adding more than one user reward rules
  Scenario: Promotion flow to award points by payout trigger as transaction wise banking
  Scenario: Promotion flow to award points by payout trigger as scheduled banking
  Scenario: Promotion flow to award points by payout trigger as batch banking
  Scenario: Promotion flow to award points when payout date is future of promotion end date
  Scenario: Promotion flow to award points when payout date is same as promotion end date
  Scenario: Promotion flow to award scores when there is more than one claim form
  
  Scenario: Promotion flow to award points when the start date is greater than end date
  Scenario: Promotion flow to award points when the start date is equal to end date
  Scenario: Promotion flow to award points for the selcted set of audience
  Scenario: Promotion flow to award points for the selected set of  audience and the selected set of product  






  # **********************************multiple measure promotion**********************************

  #Sell X Get Y
  Scenario: Promotion flow to award points for multiple measure based on quantity within the promotion period.
  Scenario: Promotion flow to award points for multiple measure based on value within the promotion period.
  Scenario: Promotion flow to award points for multiple measure based on the selected product group
  Scenario: Promotion flow based on the spendable points
  Scenario: Promotion flow based on the Non spendabel points
