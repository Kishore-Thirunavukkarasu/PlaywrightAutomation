Feature: Claim against products and behaviours for the users in platform site

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    #CMF026ClaimFormProductEligibility
    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify users can view claim form of eligible promotions in menu till "last date of claiming" specified in promotion-measure configuration plus 1 day

    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify users cannot view claim form of eligible promotions in menu after "last date of claiming" plus 1 day

    #CMF026ClaimFormProductEligibility
    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify users cannot view claim form of non-eligible promotions in menu

    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify users can view claim form that is associated with promotions where user is in the eligible audience

    #CMF026ClaimFormProductEligibility
    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify users cannot view claim form that is associated with promotions where user is not in the eligible audience

    #CMF026ClaimFormProductEligibility
    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the eligible audience of a promotion can access and submit claim form associated with promotion-measure from menu

    #CMF026ClaimFormProductEligibility
    @platformui @claimFormConfiguration_product @CMF014FormEligibility @integration @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the non-eligible audience of a promotion cannot access or submit claim form associated with promotion-measure from menu

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @Scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that a promotion measure can have only one claim form, which can be a behaviour claim form or a product sales claim form

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @Scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that different measures of a promotion can have same claim form

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @Scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that different measures of a promotion can have different claim form

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that a claim form can be for a product group or for a behaviour group, not both

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify a product can be part of one product group only

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify each product group will have a product table (parent table) and a sales table (child table)

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify one product group can have multiple claim forms

    @platformui @claimFormConfiguration_product @CMF009CombinationofProductandBehaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that same sale can be claimed by two different job roles via invoice claim/preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF032AddSameProductMultipleTimes @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the same product cannot be added multiple times in the claim form

    #Products
    #Claim based on preloaded sales without selling user

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the sale can be claimed before the claim date for the preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the sale cannot be claimed after the claim date for the preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify user can only see sales belonging to their organisation in the preloaded sales claim form

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify user cannot see sales belonging to other organisations in the preloaded sales claim form

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the sale can be challenged within specified days from date of sale, for preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the sale cannot be challenged after specified days from date of sale, for preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the challenges are resolved before the resolution date for the preloaded sales claim

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify resolving audience can see unclaimed, claimed and challenged sales

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify challenge reason entered by challenger is displayed to resolver in the approval page

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify resolving audience can resolve challenges by awarding the claim to claimer or challenger and specifying reason for the decision

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify challenge resolution reason appears in the remarks section and can be viewed by claimer and challenger

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify resolving audience cannot resolve a challenged claim after days specified in "days from date of sale for challenge resolutions"

    @platformui @claimFormConfiguration_product @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the challenges when not resolved before the resolution date for the preloaded sales claim, points will be rewarded to the claimer not to the challenger
    #The original claimer can be considered as the selling user when the challenge is not resolved

    @platformui @claimFormConfiguration_product @CMF014FormEligibility @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim forms of promotions will not be visible in the menu after "last date for claiming" plus 1 day, even if user is eligible for the promotion

    @platformui @claimFormConfiguration_product @CMF014FormEligibility @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be achieved/claimed by the user when admin uploads the sales data

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the initial claim status as "Unclaimed" for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Claimed" after sale has been claimed by eligible user

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Challenge" after the challenge is raised for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Resolved" after the challenge is resolved for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF010CreateForm_preloadedsales @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user id is recorder in the sales table when an user starts claiming for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF005ClaimNotification @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered upon every claim status change for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF005ClaimNotification @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify summary notification has been triggered to resolver as per cron to communicate pending challenge resolutions

    @platformui @claimFormConfiguration_product @CMF005ClaimNotification @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered when banking is done successfully for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that claims in "Claimed" status will be considered for point computation & banking by promotion

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be challenged by the user before the "days after date of sale for challenge" for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be challenged by the user after the "days after date of sale for challenge" for the preloaded sales

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reward should be retained back from the claimed user when the challenge is resolved and the challenged user owns it

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reward cannot be reatined back from the claimed user when the challenge is resolved and the claimed user owns it

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the status become Claimed the moment a sale is claimed by eligible user

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user will see only those products in preloaded sales claim which fall under eligible products of eligible promotions

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user will not see those products in preloaded sales claim which are not part of user eligible promotions

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Preloaded sales claim form will be responsive for various screen sizes


    #Invoice Claim

    @platformui @claimFormConfiguration_product @CMF022FieldFromTable_Invoice @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim form cannot be submitted without filling up all mandatory fields and uploading of file

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the multiple invoice files can be uploaded for the invoice claim

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that a claim cannot be submitted if it includes more files than the "Max number of files" limit specified in claim form configuration

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that in sale date field in invoice claim form, the dates which are selectable is based on the value specified in "Days after date of sale for claiming" (Claim Form configuration)

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify claim cannot be submitted if invoice number specified already exists in the program (already submitted by this user or other user)

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be done by uploading the configured file type for the invoice claim

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be done by uploading the file other than the configured file type for the invoice claim

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be done by uploading the invoice file more than the configured file size for the invoice claim

    @platformui @claimFormConfiguration_product @CMF020InvoiceBasedClaimForm @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be done by uploading the invoice file within the configured file size for the invoice claim

    @platformui @claimFormConfiguration_product @CMF024ConfigDocument_Invoice @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the prompted message when the upload file size exceeds the configured file size for the invoice claim

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim forms of promotions will be visible in menu till "last date of claiming" plus 1 day

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim forms of promotions will not be visible in menu after "last date of claiming plus 1 day"

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify admin can specify date and time for "Last Date for claiming" in promotion-measure configuration

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify program default time-zone will be considered for "last date for claiming" and promotion rules will trigger till "last date of claiming" plus 1 day

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the sales claimed by the participant cannot be approved by the approver after the "date of approval" for the invoice claim
    #If not approved, then approver will not be able to take any action on that claim after the deadline and sales captured in that claim will not be updated in sales table

    @platformui @claimFormConfiguration_product @CMF033ClaimApproval @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim can be rejected by the approver

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim can be resubmitted by the participant after the rejection by the approver

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim can be resubmitted by the participant before the "last date for claiming" configured in promotion

    @platformui @claimFormConfiguration_product @CMF023FormConfigurationandDeadlines @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim cannot be resubmitted by the participant after the "last date for claiming" configured in promotion

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim can be approved by the approver after the resubmission by the participant

    @platformui @claimFormConfiguration_product @CMF033ClaimApproval @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the invoice claim can be rejected by the approver after the resubmission by the participant

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the resubmission can be done multiple times when it is rejected by the approver for the invoice claim

    @platformui @claimFormConfiguration_product @CMF005ClaimNotification @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered upon every claim status change for the invoice claim

    @platformui @claimFormConfiguration_product @CMF005ClaimNotification @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered when banking is done successfully for the invoice claim

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that only claims in "Approved" status is considered by promotion for point computation and banking

    @platformui @claimFormConfiguration_product @CMF015ClaimandChallengeWindow @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Claimed" after the successful submission of claim

    @platformui @claimFormConfiguration_product @CMF033ClaimApproval @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Approved" when the approver approves the invoice for the invoice claim

    @platformui @claimFormConfiguration_product @CMF033ClaimApproval @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Rejected" when the approver rejects the invoice for the invoice claim

    @platformui @claimFormConfiguration_product @CMF016ResolutionandResubmissionWindow @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Resubmitted" when the participant resubmits the invoice for the invoice claim

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when claim is approved and "Consider Claimer as Buyer" is enabled, then claimer organisation should be updated as Buyer Organisation in sales table

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when claim is approved and "Consider Claimer as Buyer" is enabled, then Sale Type specified in Sale Settings is updated in Sale Type field in sales table

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when "Consider Claimer as Buyer" is enabled, then user will be able to select a selling organisation (from where he purchased) at the time of invoice claim

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: When "Consider Claimer as Buyer" is enabled, identify the hierarchy node in selling organization configuration corresponding to claimer organization. Then, display all organizations mapped to that node and its below nodes

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Filter the list of organisations from above based on organisation attributes as per selling organisation configuration

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when claim is approved and "Consider Claimer as Seller" is enabled, then claimer organisation should be updated as Seller Organisation in sales table

    @platformui @claimFormConfiguration_product @CMF027ConfigClaimForm @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when claim is approved and "Consider Claimer as Seller" is enabled, then Sale Type specified in Sale Settings is updated in Sale Type field in sales table

    @platformui @claimFormConfiguration_product @CMF034ClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim history can be maintained for the invoice claim

    @platformui @claimFormConfiguration_product @CMF034ClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim history can be viewed by the participants for the invoice claim

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim history can be filtered by the participants for the invoice claim

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim history can be filtered by the participants for the invoice claim based on invoice number, date of sale, date of claim, SKU and Status

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user will be able to challenge a rejection by specifying a reason for challenge. The claim status will be come "Challenged" and approver can see reason for challenge under "Remarks" section. Approver can approve or reject challenged claims

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user will see only those products in product dropdown in invoice claim form which fall under eligible products of eligible promotions

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user will not see those products in product dropdown in invoice claim form which are not part of user eligible promotions

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify in invoice claim form, user can search for products based on any product attribute

    @platformui @claimFormConfiguration_product @CMF035FilterClaimHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify Invoice claim form will be responsive for various screen sizes


    #Behaviour

    # Partner Collaboration
    # Training:Co-marketing Campaign
    # Lead Generation
    # Recognize Customer Centricity and Focus
    # Case Study Production
    # Advocacy
    # Event Attendance
    # Usage of Vendor Supported Technology or Adoption of Processes
    # Customer Retention
    # Demos or installations

    @platformui @claimFormConfiguration_behaviour @CMF041ClaimFormBehaviourEligibility @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify users can view those behaviour claim forms in menu which are associated with their eligible promotions

    @platformui @claimFormConfiguration_behaviour @CMF041ClaimFormBehaviourEligibility @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify users cannot view those behaviour claim forms in menu which are associated with promotions they are not eligible to participate

    @platformui @claimFormConfiguration_behaviour @CMF041ClaimFormBehaviourEligibility @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify a behaviour can be part of one behaviour group only

    @platformui @claimFormConfiguration_behaviour @CMF041ClaimFormBehaviourEligibility @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify each behaviour group will have a behaviour table (parent table) and a behaviour execution table (child table)

    @platformui @claimFormConfiguration_behaviour @CMF041ClaimFormBehaviourEligibility @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify one behaviour group can have multiple claim forms

    #Pre-loaded behaviour data at organization level

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that in the menu users can see preloaded behaviour claim form associated with user eligible behaviour-based promotions

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify that in the menu users cannot see preloaded behaviour claim form associated with promotions where user is not eligible

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify in the preloaded behaviour claim form, only those behaviours will be displayed and available for claiming which fall under user eligible promotion

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify in the preloaded behaviour claim form, behaviours which are not part of user  eligible promotion will not be displayed and wont be available for claiming

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the behaviour can be challenged within specified "days from date of sale for challenges", for preloaded behaviours claim

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the behaviour cannot be challenged after specified "days from date of sale for challenges", for preloaded behaviours claim

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify that in the preloaded claim form, users can only see behaviour data for user organisation

    @platformui @claimFormConfiguration_behaviour @CMF008SameClaimForm @system @list @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify that in the preloaded claim form, users cannot see behaviour data for other organisations

    @platformui @claimFormConfiguration_behaviour @CMF037ConfigBehaviourClaimForm @system @list @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the uploaded behaviour can be selected and claimed by the user in the assigned organization level

    @platformui @claimFormConfiguration_behaviour @CMF039ClaimDeadline_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the behaviour can be claimed before the claim date for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF039ClaimDeadline_Behaviour @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the behaviour cannot be claimed after the claim date for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify "days from date of sale for challenges" has to be greater than or equal to "days from date of sale for claims" for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify "days from date of sale for challenge resolutions" has to be greater than or equal to "days from date of sale for claims" for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify "days from date of sale for challenge resolutions" has to be greater than or equal to "days from date of sale for challenges" for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify resolver cannot resolve challenges after the "number of days from date of sale for challenge resolutions" is elapsed for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify resolver can resolve challenges only within the number of days from date of behaviour for challenge resolutions which is specified in claim form

    @platformui @claimFormConfiguration_behaviour @CMF043ClaimFormActionsDeadline @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the challenges when not resolved before the resolution date for the preloaded behaviour claim, points will be rewarded to the claimer not to the challenger
    #The original claimer can be considered as the selling user when the challenge is not resolved

    @platformui @claimFormConfiguration_behaviour @CMF039ClaimDeadline_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be done any time before the number of days specified for "days from date of sale for claiming" for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be done after the number of days specified for "days from date of sale for claiming" for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered upon every claim status change for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the summary notification is been triggered to resolver as per a schedule to give count of claims to be resolved for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered when banking is done successfully for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Claimed" after it is claimed by a user for the preloaded behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Challenge" after the challenge is raised for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Resolved" after the challenge is resolved for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the banking has been done after the successful claim for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF045ClaimApproval_Open_Participants @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the resolving audience can see unclaimed, claimed and challenged behaviours

    @platformui @claimFormConfiguration_behaviour @CMF015ClaimandChallengeWindow_Behaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be challenged by the user before the "days after date of sale for challenge" for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF015ClaimandChallengeWindow_Behaviour @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be challenged by the user after the "days after date of sale for challenge" for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF016ResolutionandResubmissionWindow_Behaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reward should be retained back from the claimed user when the challenge is resolved and the challenged user owns it for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF016ResolutionandResubmissionWindow_Behaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reward cannot be reatined back from the claimed user when the challenge is resolved and the claimed user owns it for the preloaded behaviour

    @platformui @claimFormConfiguration_behaviour @CMF015ClaimandChallengeWindow_Behaviour @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the status become Claimed the moment a behaviour is claimed by eligible user



    #No Execution data


    @platformui @claimFormConfiguration_behaviour @CMF054ClaimFormActions @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim form can be submitted by the participant with the mandatory fields for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF054ClaimFormActions @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim form cannot be submitted by the participant without the mandatory fields for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF053ClaimBehaviourEligibility @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the eligible participants can view and select the available events

    @platformui @claimFormConfiguration_behaviour @CMF053ClaimBehaviourEligibility @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the non-eligible participants cannot view and select the available events

    @platformui @claimFormConfiguration_behaviour @CMF052ClaimFormEligibilityPermission @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the events assigned at the organization level and the users from the same organization can see the events

    @platformui @claimFormConfiguration_behaviour @CMF052ClaimFormEligibilityPermission @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify when the events assigned at the organization level and the users from the different organization cannot see the events

    @platformui @claimFormConfiguration_behaviour @CMF052ClaimFormEligibilityPermission @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events can be selected and claimed by uploading the evidence document by the user in the assigned organization level

    @platformui @claimFormConfiguration_behaviour @CMF048ClaimFormConfigEvidenceBased @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events can be selected and not claimed without uploading the evidence document by the user in the assigned organization level

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the date of attendance can be recorded for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @configure @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the evidence file type can be configured by admin

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @configure @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the multiple evidence files for multiple events can be uploaded for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @configure @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the total number of evidence files to be uploaded can be configured by admin for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the even claim can be uploaded multiple times when it is rejected

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be done by uploading the configured file type for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be done by uploading the file other than the configured file type for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the claim cannot be done by uploading the evidence file more than the configured file size for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF051DocumentConfig @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim can be done by uploading the evidence file within the configured file size for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF046BehaviourExecutionMetadata_EvidenceBased @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the prompted message when the upload file size exceeds the configured file size for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF050ConfigClaimDeadlines @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the evidence upload can be done before the "the "last date for claiming" configured in promotion for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF050ConfigClaimDeadlines @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the evidence upload cannot be done after the "last date for claiming" configured in promotion for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claimed by the participant can be approved by the approver before the buffer days from the event date for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the events claimed by the participant cannot be approved by the approver after the buffer days from the event date for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the events claimed by the participant cannot be approved by the approver after the end of buffer days for the behaviour claim
    #If not approved, then approver will not be able to take any action on that claim after the deadline and events captured in that claim will not be updated in sales table

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the events cannot be captured in the behaviours table when it is not approved by the approver for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events can be captured in the behaviours table when it is approved by the approver for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim can be rejected by the approver for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim can be resubmitted by the participant after it is rejection by the approver for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF050ConfigClaimDeadlines @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim can be resubmitted by the participant before the "last date for claiming" of resubmission for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF050ConfigClaimDeadlines @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim cannot be resubmitted by the participant after the "last date for claiming" of resubmission for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim can be approved by the approver after the resubmission by the participant for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the events claim can be rejected by the approver after the resubmission by the participant for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF058ClaimApprove_Hierarchy @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the resubmission count for the events claim that has been rejected by the approver for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim related notification can be configured and triggered to the user for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim related notification can be configured in multiple languages for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered upon every claim status change for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF005ClaimNotification_Behaviour @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the notification has been triggered when banking is done successfully for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the banking has been done after the successful claim for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the initial claim status as "Unclaimed" for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Approved" when the approver approves the evidence for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Rejected" when the approver rejects the evidence for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim status as "Resubmitted" when the participant resubmits the evidence for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF055ApproverPageAction @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the status changed to "Claimed" once the user claim is done for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF056HistoryClaim @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the history of the claim can be viewed by the participant for the behaviour claim

    @platformui @claimFormConfiguration_behaviour @CMF057FilterHistory @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the history of the claim can be filtered by the participant for the behaviour claim


    #Updated test cases
    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the promotion has dynamic audience and when the audience is refreshed, the claim menu for the old users cannot be displayed and he should not able to make a claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the single sales claim by configuring in the claim form

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user from multiple jobroles cannot able to claim the same sales when it is single sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the multiple claims can be configured in the claim form by selecting the "Allow parallel claims by different Job Roles" checkbox for sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify multiple jobroles can claim the same sales for multiple sales claims

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users from same jobrole cannot able to claim the same sales when it is multiple sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the deadlines are based on the reference date that will configured in the claim form

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user cannot able to claim after the number of days configured in the claim form with reference to the reference date

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the approver cannot able to approve the claim after the number of days configured in the claim form with reference to the reference date

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the challenges cannot be raised after the number of days configured in the claim form with reference to the reference date

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the resolver cannot able to resolve the challenges after the number of days configured in the claim form with reference to the reference date

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify considering "Claimer as seller" where the unique identifier and selling organization are configured for sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: When "Consider Claimer as Seller" then the claim form will be depends on the selling organization for sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the "Claimer as Buyer" where the unique identifier and both selling and buying organization are configured for sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: When "Consider Claimer as Buyer" then the claim form will be depends on the buying organization for sales claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify adding the form fields from the parent table which will only be utilized in filters

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the parent columns can be made as filter in history page and approval page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the columns to be displayed for claim can be choosed from child table

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the selected fields from the child table are displayed in the sales claim page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Show in Approval page" checkbox is selected for the fields so that the specific field is displayed in approval page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Show in Approval page" checkbox is not selected for the fields so that the specific field is not displayed in approval page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Reference to Parent table" checkbox is selected for the fields so that the specific field will be refered to parent table

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the parent table can be selected along with label and value

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Available as filter in Claim History and Claim Approval page" checkbox is selected for the fields so that the specific field is displayed in claim history and claim approval page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the filter type can be choosed from the dropdown when "Available as filter in Claim History and Claim Approval page" checkbox is selected

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when dropdown or autocomplete is selected in filter and query the selected model with label and value will displays the vales in sales claim filter

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when dropdown or autocomplete is selected in filter and business is choosed so the datas are displayed based on the available values from promotion related to that sales claim in filter

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Show in Invoice Submission page" checkbox is selected for the field so that the specific field is displayed in invoice claim form submission page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Show in Invoice Submission page" checkbox is not selected so that the specific field is not displayed in invoice claim form submission page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when the "Show in History page" checkbox is selected for the field so that the specific field is displayed in invoice claim form history page

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the validation "Required" is choosed for the specific field then the invoice claim form should not be submitted without entering that field

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the validation "Pattern" is choosed so that the values in the invoice claim form should follow particular pattern

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the validation "Min Length" is choosed so that the values in the invoice claim form should have that min length of characters

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the validation "Max Length" is choosed so that the values in the invoice claim form should not more than the max length of characters

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the validation "Length" is choosed so that the values in the invoice claim form should be within the specific length

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim form should have atleast one field mapped as "Reference to parent table"

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the display name for fields can be added in multiple languages

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim form can be displayed in multiple languages based on localization

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify choosing "Claimer as Buyer" and configuring the selling organization hierarchy so that the configured selling organization only will be displayed in the list for invoice claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify choosing "Claimer as Buyer" and configuring the selling organization hierarchy with conditions so that the configured selling organization only will be displayed in the list based on the given condition for invoice claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify multiple conditions can be added for the selling organization hierarchy for invoice claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claim form cannot be displayed after the "Last Date for Claiming" for promotion

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the Approval type as hierarchy where the user can approve the claim based on the hierarchy flow of the claimer organization

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the Approval type as hierarchy where the user cannot approve the claim which is not belongs to his hierarchical flow

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the Approval type as hierarchy where the users from that hierarchy node and parent node of that particular organization only can able to approve and the users from the child hierarchy flow of that organization cannot able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users who has configured the jobrole as primary jobrole from that organization hierarchy can only approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users who has configured the jobrole as primary jobrole from that organization hierarchy of child nodes cannot approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users who has configured the jobrole as primary jobrole but from different organization hierarchies cannot able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users have multiple organization who comes under the specific organization hierarchy can able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the users who doesn't have the configured jobrole as primary jobrole cannot able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when "Look within Organization" is selected, the approver from the same organization and from the same hierarchy flow only can able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when "Look within Organization" is selected, the approver from the other organization and from the same hierarchy flow cannot able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify when "Look within Organization" is selected, the approver from the same organization and from the same hierarchy flow with child nodes cannot able to approve the claim

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the Approver type as open approval where the audience in it belongs to dynamic audience group and when the audience refresh is made then the menu for the user should not be displayed for removed old users and they cannot able to approve the claims

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the claims are invalid if it is not approved within the deadline

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the challenges are invalid if it is not resolved within the deadline

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the multiple click on submit button should not create a duplicate record

    @adminui @claimFormConfiguration_common @claims @system @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the multiple click on approval should not create duplicate record
