Feature: System Integration Testing

    #   user based and identity - kishore.g and aditi

    #   Need to execute the following test cases below
    #   Need to verify the userstory and workpackage acceptance cases
    #   Need to provide the not implemented cases to Roshni
    #   Need to work with mobile as well as Web

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user creating a new tenant and new program and add participant user to that program via admin portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user creating a self registration form and activation form with older users schema and verify the participant is activated and login to the platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user creating a user via self registraion and verify that user can be logged into the platform portal via sso before activation and after activation

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform user is self registered and activated him via OTP when the approval flow is disabled

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user uploads the user data and verify that uploaded user can be activated in the platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered via admin creation and when approval is enabled with open approval, verify the new registered user is approved and activated and logged in to the platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered via self registration and when approval is enabled with hierarchy approval, verify the new registered user is rejected and not activated and not logged in to the platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered via admin upload and when approval is enabled with auto approval day as 1, verify the new registered user is auto approved and activated and logged in to the platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant user creation via admin form with a job role which is configured for approval and verify the approval user approves and the participant user activated in platform portal

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant user creation via upload with a organization hierarchy which is configured for hierarchy based approval and verify the approval user is rejected and participant user cannot be activated in the site

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify participant user creation in self registration portal where Level1 is approved and level 2 is rejected at approval configuration. And verify the participant user can be activated after the super approver approval

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered via self registration at mobile and verify user can be activated using the mobile number otp and Verify user can login with biometric

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify login with logined user and verify forget password and verify after login with new password and change the password and again login with new password

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify forgot password with otp and verify once the user is logged in. And verify the session expiry and after expire, updating the profile page of the user

    @adminui @SIT @useridentitybased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify using the hierarchy approval with hierarchy node name as x where x is present in more than one hierarchies. org1 is linked with node name x in one hierarchy and org2 is linked with node name x in another hierarchy. user approval is configured for org1 with node name as x. Now, When user is created with org1; he should be sent to approval flow. When user is created with org2; he should not be sent to approval flow.

    # --------------------------------------------------------------

    #   kishore.t and mani

    #   Need to execute the followscheing test cases below
    #   Need to verify the userstory and workpackage acceptance cases
    #   Need to provide the not implemented cases to Roshni

    # Organization & hierarchy based
    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user creating more than one hierarchy and adding the hierarchy nodes to that hierarchy where the hierarchy node names are same in both hierarchies. (example: Chennai node in both sales and location based hierarchies)

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify updating the organization form and verify admin user can create a new organization with that form

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify updating the organization and organization file specification schema; organization workflow and verify admin user can create a new organization with upload having new data

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify updating the hierarchy and hierarchy file specification schema; hierarchy workflow and verify admin user can create a new hierarchy with upload with upload having new data

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user creating more than one hierarchy and add organizations to each node in one hierarchy and verify the user can be added to the organization and hierarchy

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin user create a new hierarchy via upload and verify admin user can create a organization with that hierarchy and verify the user can be registered to that organization.

    @adminui @SIT @OrgHierarchyBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is present in more tha one organization and each one is connected with one hierarchy node which is in different hierachy. Consider the user is added to the dynamic audience based on organization primary. Now creating the sales without selling user for an organization which is secondary organizatoin for the created user. Verify the sales is not shown to that user.

    #   Schema, flow and Product
    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a new schema and create a new template for upload and create a new schema and upload the data to it.

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can clone the schema and clone the flow and create a new template and upload the data to it.

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a new schema for product and product file specification and create new schema for sales and sales specification. Verify admin user can create product group with this. Verify admin user can upload the data to both the new product and new sales

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user adding up new column to the existing schema in both specification and main schema & create a template and upload the data to the schema

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create new schema and a view joining both old & new schemas and verify data is present in that view when the schema is populated with values

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can update the file specification and file schema and workflow by adding up new field with lookup and adding the id of the lookup field in the main schema and verify the data is getting queried and pushed in that schema

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can update the workflow for update field selection and verify the data is getting updated based on the field selected (e.g. unique identifier)

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can update the workflow for delete field selection and verify the data is getting deleted based on the field selected (e.g. unique identifier)

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating a schema with association and reference and verify using that schema for upload. Verify that valid data is uploaded via workflow

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a schema and verify that can be linked or referenced with the existing seeded tables such as users, organizations, etc. Ensure user can create a workflow and upload the data to that schema

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a schema and verify that can be linked or referenced with the existing seeded tables such as users, organizations, etc. Ensure user can create a workflow and upload the data to that schema

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a expression column and prefix column and suffix column and verify creating the workflow and verify after uploading the data, the expression column is added automatically and the prefix and suffix column is added automatically with the incremental value.

    @adminui @SIT @schemaFlow @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user create a new schema and create a flow to add data to both new and old schema at same time and verify after upload data is pushed to the new schema and old schema

    # --------------------------------------------------------------

    # form based
    @adminui @SIT @formbased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a form using object array and verify the data is getting queried and displayed in that form

    @adminui @SIT @formbased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a form with group and wizard and verify the data is getting added when the form is configured.

    @adminui @SIT @formbased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can change the organization form by removing certain fields and organization schema by removing the same attributes and verify admin user can create a new organization with that form

    @adminui @SIT @formbased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can change the organization form by adding up 2 fields and removing one fields; and organization schema by adding up the same 2 field without removing that one field and verify admin user can create a new organization with that form


    # view and measure based
    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a view with more than one schema with aggregate and calculated field where the promotion is using the aggregate field for target verification with measure.

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a view with schema and existing view and verify during the measure configuration, other than uuid is used for measure. Verify the points are awarded to the user when the username field is unique

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a view and in measure create a variable using the view parameter numeric calculation and verify the rule variable is used the measure rule validation and verify the points are awarded to the user

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a view and in measure, admin user create more than one measure where the second measure is using the first measure as input and verify the points are awarded to the user

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user create a measure where the rule definition is having and function and verify when one of the thing uses rule veriable and the order in "and" function is using view variable for calculation (e.g. rulevariable > 10 and viewvariable <= 15) and verify the points are awarded to the user when the rule is satisfied

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create a view with dynamic audience (which is added or shrinked anytime) and in measure configuration, verify the points awarding is stopped once the user is removed from audience

    @adminui @SIT @viewmeasure @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user created more than one rule where all the rules will have different calculation and different reward type as points, scores and game token and verify the rewards are awarded to the user based on the rules satisfied

    # --------------------------------------------------------------

    # #   Audience
    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify participant user getting added to the dynamic audience in middle of promotion and add the sales for the promotion. Verify that user is getting the reward once they achieved the target if the promotion is target based promotion.

    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify participant user getting removed from the dynamic audience in middle of promotion and consider the participant is already having sales. Now after removal, upload the sales for the user and Verify the new sales is not added to the Sales.

    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify creating the dynamic audience with custom criteria such as user city, upon changing the user's city from admin, will remove the user from audience. Verify that audience user will be removed from sales and the new sales is not added to the sales.

    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify creating the audience and assign the audience to the promotion and verify adding the exclusion user to the audience in promotion and verify the exclusion user sales is not added to the sales.

    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify user getting deactivated in middle of promotion and verify that user's sales are stopped on the day of user's deactivation

    #     @adminui @SIT @audience @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    #     Scenario: Verify user getting removed and added again in middle of promotion and verify the sales during the middle of user's non availability should not be calculated for the promotion

    # # -------------------------------Need to verify the below items-------------------------------

    # preloaded Sales

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and verify the sales quantity is compared in the rule definition and verify the user who meets the rule definition is awarded with points. (without target, without minimum product eligibility)

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and the sales value is compared in the rule definition and minimum eligibility of the product is present. Verify once the user meets the rule definition, the user is awarded with points. (without target, with minimum product eligibility)

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and the sales quantity is compared in the rule definition and the user target is set for the promotion. Verify the user who meets the target is awarded with points. (with target, without minimum product eligibility)

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in behaviour table and the sales quantity is compared in the rule definition and the user multi level target is set for the promotion. Verify the user who meets the more than one level target is awarded with points for more than one level reward. (with multiple user target, without minimum product eligibility)

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and the sales quantity is compared in the rule definition and the organization target is set for the promotion. Verify the organization that meets the target is awarded with points for all the users who had the primary organization. (with target, with organization target eligibility)

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in behaviour table and the sales quantity is compared in the rule definition and the sales are present in a different sales table. Verify the user who meets the rule definition is awarded with points.

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and behaviour table and the sales quantity is compared in the rule definition with user single target. Verify the user who meets the rule definition is awarded with points.

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and behaviour table and the sales value is compared in the rule definition with user single target. Verify the user who meets the rule definition is awarded with points.

    @adminui @SIT @preloadedSales @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales uploaded for a product present in products table and behaviour table and when two measure is present where one is comparing the both the product and behavior sales quantity and one is comparing behaviour sales value in the rule definition with single user target. Verify the user who meets the rule definition is awarded with points.


    #sales claim

    # selling organization primary user can claim
    # claim approval and after approval points are awarded
    # claim challenged and approved and points awarded
    # claim auto approved, points rewarded
    # claim challenged and claimed by more than one person and no resolution made, at the eOD claimed one auto approved and points awarded


    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales can be uploaded by admin, participant user can able to see the sales and claim the sales

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales can be claimed by the participant user and points are awarded to the user

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales can be claimed by the participant 1 and challenged by the participant 2, when challenge is resolved, points are awarded to participant 1

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales can be claimed by the participant 1 and challenged by the participant 2, when challenge is resolved, points are awarded to participant 2 and reverted from participant 1

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales can be claimed by the participant 1 and challenged by multiple participants, when challenge is resolved, points are awarded to the right user and reverted from the wrong user

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales with multiple organizations, where the participant from different organization cannot claim the different organization sales

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify sales claimer as buyer where the participant can able to claim the sales based on organization and other organization sales cannot be claimed

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales cannot be claimed after the sales claim end date

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uploaded sales is claimed by the participant and a challenge is raised by another participant, where the challenge cannot be resolved within the challenge end date

    @adminui @SIT @salesClaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales data cannot be displayed to the excluded user in the promotion


    #Invoice claim

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice form can be configured by the admin and the participant user can able to see the invoice form and submit the invoices

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice file cannot be more than the configured size and should only accept the configured file types and it should not exceeds the configured limit

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured line items are displayed in the invoice form and the participant user can able to submit the invoice form

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice form can be submitted by the participant user and the points are awarded to the user when it is approved

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice form can be submitted by the participant user and the points are not awarded to the user when it is rejected

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the rejected invoice can be resubmitted by the participant user and the points are awarded to the user when it is approved

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice form can be resubmitted only once by the participant user

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the invoice date should be within the configured date range and when the invoice does not fall within the configured date range, the invoice form should be rejected

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the excluded user cannot do invoice claim

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points are reversed for the participant user when a wrong approval is made by the approver

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Super approver can able to approve and the points are awarded to the participant

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify when L1 approver rejects the sales claim and super approver approves it, the points are awarded to the participant

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sales claim can be searched by applying filters

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the queued sales approvels can be searched by applying filters

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the promotion has dynamic audience and the user is added to the audience and the user can able to claim the sales

    @adminui @SIT @invoiceclaim @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the promotion has dynamic audience and the user is removed from the audience and the user cannot able to claim the sales

    #Promotion Based

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Admin creates a SM promotion with eligible audience.Then creates a view and a measure with the input data from the view. Verify whether the points are awarded to the eligible users who meets the target value

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Admin creates a Multiple measure promotion with Eligible audience. Then creates a view & multiple measures with the input data from the view. Verify whether the points are awarded to the eligible users who meets the target value mentioned in those two measures

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Admin creates a SM promotion with eligible audience and exludes a user from the eligible audience. Then creates a view & multiple measures with the input data from the view. Verify whether the points are not awarded to the eligible users who meets the target value

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Admin creates a MM promotion with 2 different views & then creates 2 different measures based on the two views. Verify whether the points are awarded only to the eligible users who meets the target value prescribed in each measure

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Admin creates a DPD promotion with eligible audience, then uploads the DPD file and then creates a measure with the input data from the view. Verify whether the points are awarded to the users entered in the DPD file who meets the target value

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are awarded to users who meet the target value in the measure for all kinds of promotions when the trigger is set to "Manual" and banking type as 'Transactioanl -> Scheduled'

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are awarded to users who meet the target value in the measure for all kinds of promotions when the trigger is set to "Scheduled" and banking type as 'Transactioanl -> Manual'

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are awarded to users who meet the target value in the measure for all kinds of promotions when the trigger is set to 'Event based' and banking type as ''Transactioanl -> Automatic'

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if the points are automatically banked to the users bank account when the banking is set as Automatic under both Transactional wise and batch wise banking

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if the points are deposited at the specified time when the banking is set as Scheduled under both Transactional wise and batch wise banking

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if the points are banked to the users only when user manually hits the create batch button when the banking is set as Manual under both Transactional wise and batch wise banking

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are awarded to all the users who meet the target value in the measure according to the usertarget uploaded in the SM promotion.

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are awarded to all the users of the organization , when a particular organization achieves the target value in the measure according to the organization target uploaded by the admin in the SM promotion.

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are not awarded to the users who do not meet the target value as in user target upload file

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are not awarded to the users of the organization who do not meet the target value as in Organization target upload file

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are not awarded more than the value entered in 'Max for participants' field for a user when Payout capping is enabled in a promotion

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Check if points are not awarded more than the value entered in 'Max for measure' field for a measure when Payout capping is enabled in a promotion

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points reversal when a wrong sales data is uploaded for a user and points are banked for that user. Admin reverse the points by updating the sales record for that user where the reversal happends after metric run

    @adminui @SIT @promotion @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the participant chose target1 but failed to achieve it. The admin uploaded a sales file exceeding the target, banking points. Later, an updated file with correct data was uploaded, triggering a reversal. Ensure the metric reflects this update.

# --------------------------------------------------------------

# #CMS

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the user is able to login to the application and naviagte to the pages and create a new page with the slug and can view the page in the platform site and verify the page is created

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the content are created in the strapi and verify the content is displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the content are created in the strapi and add the program and audience in the strapi for the particular article and verify the content is displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the category are created in the strapi and add the program and audience in the strapi for the particular article and verify the content is displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the articles are mampped to the category and verify the content is displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the transaltions articles are created in the strapi and verify the content is displayed in the platform site for the particular language

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the transaltions articles are created in the strapi and verify the content is displayed in the platform site for the particular language and verify the content is displayed in the platform site for the particular language

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the pages are cretaed in the admin site and verify the content is displayed in the platform site for the particular page

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the widget content is created in the admin site and verify the widget content is displayed in the platform site for the particular widget in the home page

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the widget content is created in the admin site and verify the widget content is displayed in the platform site for the particular widget in the home page and verify the content is displayed in the platform site for the particular widget in group 1

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the widget content is created in the admin site and verify the widget content is displayed in the platform site for the particular widget in the home page and verify the content is displayed in the platform site for the particular widget in group 2

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the widget content is created in the admin site and verify the widget content is displayed in the platform site for the particular widget in the home page and verify the content is displayed in the platform site for the particular widget in group 3

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the images and text are created in the admin site and verify the images and text are displayed in the platform site for the particualr pages

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the images and text are created in the admin site and verify the images and text are displayed in the platform site for the particualr pages and verify the images and text are displayed in the platform site for the particualr pages

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the content pages with the conatiner, grid and columns are created in the admin site and verify the content pages with the conatiner , grid and columns are displayed in the platform site for the particualr pages

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the content pages with the conatiner, grid and columns all the widget are created in the admin site and verify the  widget content pages are displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the content page with the content page should be configured in the menus and the content page will be displyed to the audience mapped to the content page

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the admin user create a main menu for all the pages and verify the main menu is displayed in the platform site

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the admin user create a main menu with level 1 sub menu for the pages and verify the main menu is displayed in the platform site and verify the main menu and sub-menu 1 is displayed in the platform site for the particular audience

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the admin user create a main menu with level 2 sub menu for the pages and verify the main menu is displayed in the platform site and verify the main menu and sub-menu 2 is displayed in the platform site for the particular audience and verify the main menu and sub-menu is displayed in the platform site for the particular audience

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the admin user create a main menu with the menu link and verify the main menu contents are displyed in the platform site for the particular audience

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the menu transaltions are created in the admin site for the menus and verify the menu transaltions contents are displayed in the platform site for the particular language

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the page type is created in the admin site for the menus and verify the page type is displayed in the platform site for the particular pages

# @adminui @SIT @cms @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the widget content is created in the admin site for the homepage and verify the widget content is displayed in the platform site for the particular widget in the home page

# #   menu based

# @adminui @SIT @menuBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify promotion creation creates the page in the platform site which is accessible only by the eligible audience

# @adminui @SIT @menuBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the Admin user creates the page using page builder and configures the audience and verify the page is accessible only to that audience

# @adminui @SIT @menuBased @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the admin user creates the cms based page and configure it in menu and verify the menu is accessible only to the audience mapped to the page

# # point banking

# @adminui @SIT @pointBanking @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Verify the points are getting deposited on the scheduled time for banking schedule configuration promotion and participant can able to see the notification for the new point deposite. Verify user can able to see that message in the point statement

# @adminui @SIT @pointBanking @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# Scenario: Veirfy the admin user can able to create a batch for the points computed in the promotion which have manual banking. Verify user can bank points to those transactions and verify the participant user can able to see that points being added to his /her account

# # # others

# # @adminui @SIT @others @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# # Scenario: Verify platform user can able to see the content in the platform site in the language selected in the platform site

# # @adminui @SIT @others @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# # Scenario: Verify the admin user can able to integrate a catalog and verify the platform user can navigate to the catalog via sso and verify the points for the user is shown up same in platform portal and in catalog site

# # @adminui @SIT @others @Scenario @special @business @positive @reviewed @superadmin @notupdated @notautomated
# # Scenario: Verify the platform user can update his/her profile and verify the user becomes eligible for a promotion based upon the updated profile. (Note: view creation and rule creation will use the user profile attribute as a eligibility for the user)