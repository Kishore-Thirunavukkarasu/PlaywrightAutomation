

Feature: Claim Form Configuration

        # created by  = Kishore Thirunavukkarasu
        # reviewed by =
        # updated by  = Ruthra
        # project url =


        #Form Settings

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be configured

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the multiple components/fields can be added to configure the claim form

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @list @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim forms are displayed in the claim form list page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @search @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be searched in the claim form list page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @list @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim name, claim requires invoice, status are displayed in the claim form list page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the three dots have view, edit, disable options in the claim form

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the new claim form can be created by clicking the Add button in the claim form list page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the basic details can be configured for the claim form

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be created with the mandatory fields

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form cannot be created without any one of the mandatory fields

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "claim requires invoice" checkbox can be checked when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "claim requires invoice" checkbox can be checked when it is pre-loaded sales claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the default language for title and description can be displayed in the claim form configuration page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the multiple languages for form title can be entered by clicked on the multiple language button

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the multiple languages for form description can be entered by on the multiple language button

        @platformui @claimFormConfiguration_common @CMF007ClaimStatus @system @form @functional @positive @reviewed @platformuser @updated @notautomated
        Scenario: Verify when the claim is configured as active, it should displayed in the platform site

        @platformui @claimFormConfiguration_common @CMF007ClaimStatus @system @form @functional @negative @reviewed @platformuser @updated @notautomated
        Scenario: Verify when the claim is configured as inactive, it should not displayed in the platform site

        @adminui @claimFormConfiguration_common @CMF002ClaimSettings @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify navigating to next menu section in the claim form configuration page will save the current section and navigate to next section

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the cancel button will discard the changes made in the claim form configuration page

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the total number of files can be configured by admin for the claim form when it is <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant cannot able to upload the files more than the configured number of files for <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        @adminui @claimFormConfiguration_common @CMF024ConfigDocumentInvoice @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the file type can be configured by admin for the claim form when it is <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        @platformui @claimFormConfiguration_common @CMF024ConfigDocumentInvoice @integration @configure @functional @positive @reviewed @platformuser @updated @notautomated
        Scenario: Verify the multiple file types can be configured by admin for the claim form when it is <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        @platformui @claimFormConfiguration_common @CMF024ConfigDocumentInvoice @integration @configure @functional @positive @reviewed @platformuser @updated @notautomated
        Scenario: Verify the participant can able to upload the file types configured by admin when it is <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        @platformui @claimFormConfiguration_common @CMF024ConfigDocumentInvoice @integration @configure @functional @positive @reviewed @platformuser @updated @notautomated
        Scenario: Verify the participant cannot able to upload the file types not configured by admin when it is <claim> claim
                Examples:
                        | claim    |
                        | invoice  |
                        | evidence |

        #CMF024ConfigDocumentInvoice
        @adminui @claimFormConfiguration_common @CMF051Document_Config @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the file size can be configured by admin for the claim form

        @adminui @claimFormConfiguration_common @CMF051Document_Config @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant can able to upload the file size less than the configured file size for the claim form

        @adminui @claimFormConfiguration_common @CMF051Document_Config @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant cannot able to upload the file size greater than the configured file size for the claim form

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for claiming" can be entered while configuring the claim form

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for approvals" can be entered while configuring the claim form

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for challenges" can be entered while configuring the claim form when it is preloaded sales claim

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for challenge resolutions" can be entered while configuring the claim form when it is preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for challenge resolutions" can be entered while configuring the claim form when it is preloaded sales claim

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days after the date of sale for challenge resolutions" can be entered while configuring the claim form when it is preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale setting can be configured by admin for the claim form when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale setting as claimer as buyer can be configured by admin for the claim form when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale setting as claimer as seller can be configured by admin for the claim form when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify when sale setting has 'claimer as buyer', then admin can specify hierarchy, hierarchy level and hierarchy nodes for displaying organisations against selling organisation when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify when sale setting has 'claimer as buyer', then admin can specify filters based on organisation attribute for filtering organisations to be displayed in selling organisation field when it is invoice claim

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale setting claimer as Buyer and sale type can be configured by selecting from the dropdown for the claim form

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale setting claimer as seller and sale type can be configured by selecting from the dropdown for the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be enabled and configured for the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim submit notification can be enabled

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant will receive the notification for the claim submission when it is configured in the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim status update notification can be enabled

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant will receive the notification for the claim status update when it is configured in the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim approval notification can be enabled and configured with cron expressions

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant will receive the notification for the claim approval when it is configured in the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the No Claim Submit Notification can be enabled and configured with cron expressions

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the participant will receive the notification for the no claim submission when it is configured in the claim form

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim submit notification can be disabled and participant will not receive any notification

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim status update notification can be disabled and participant will not receive any notification

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim approval notification can be disabled and participant will not receive any notification

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the No Claim Submit Notification can be disabled and participant will not receive any notification

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the Claim notification can be disabled and participant will not receive any notification

        @adminui @claimFormConfiguration_common @CMF039Claim_Deadline_Behaviour @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "Last date for claiming" specified in the promotion-measure can be greater than the promotion end date

        #Product

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be configured by the combination of products and sales tables

        @adminui @claimFormConfiguration_common @CMF010CreateFormpreloadedsales @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form agaist the product from the product group configured to that promotion

        @adminui @claimFormConfiguration_common @CMF010CreateFormpreloadedsales @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form against the product from the product group which is not configured to that promotion

        @adminui @claimFormConfiguration_common @CMF010CreateFormpreloadedsales @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the products associated with usereligible and active promotions will be visible in the claim form

        @adminui @claimFormConfiguration_common @CMF010CreateFormpreloadedsales @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the products not associated with usereligible and active promotions will not be visible in the claim form

        @adminui @claimFormConfiguration_common @CMF008Same_ClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the same claim form is used for two different product based promotions

        @adminui @claimFormConfiguration_common @CMF008Same_ClaimForm @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the audience from the promotion can claim using the same claim form for the product based promotion

        #Claim based on preloaded sales without selling user

        @adminui @claimFormConfiguration_common @CMF010CreateFormpreloadedsales @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the preloaded sales claim form can be created and configured to the promotion

        @adminui @claimFormConfiguration_common @CMF011ConfigureFields_preloadedSales @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the preloaded sales claim has the mandatory fields as Sales Identifier, Sales Date, Product Identifier, Quantity, Value

        @adminui @claimFormConfiguration_common @CMF013ConfigureDeadline_preloadedSales @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days from date of sale for challenge resolutions" is greater than "days from date of sale for challenges"

        @adminui @claimFormConfiguration_common @CMF013ConfigureDeadline_preloadedSales @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the "days from date of sale for challenge resolutions" is greater than "days from date of sale for claims"

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured specifically for the claim form for the preloaded sales claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured in multiple languages for the claim form for the preloaded sales claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured and triggered to the user for the preloaded sales claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured in multiple languages for the preloaded sales claim

        #Invoice Claim

        @adminui @claimFormConfiguration_common @CMF020InvoiceBased_ClaimForm @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the invoice claim form can be created and configured to the promotion

        @adminui @claimFormConfiguration_common @CMF031ProductSearch @system @search @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify those products will be available in the product dropdown which are associated with users active and eligible promotions

        @adminui @claimFormConfiguration_common @CMF031ProductSearch @system @search @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the product from the dropdown cannot show offline products in the invoice claim form

        @adminui @claimFormConfiguration_common @CMF025ClaimFormEligibility @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the invoice claim can be done by uploading the invoice file

        @adminui @claimFormConfiguration_common @CMF021InvoiceBasedClaimFormOnlyOne @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the only one claim for claim form can be configured to a promotion measure, it can be either invoice claim form or preloaded sales claim form, but only one

        @adminui @claimFormConfiguration_common @CMF021InvoiceBasedClaimFormOnlyOne @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify different promotion measures can have different claim forms associated with them

        #CMF030DocumentConfig
        @adminui @claimFormConfiguration_common @CMF022FieldFromTableInvoice @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the invoice claim file has the mandatory fields as Sales Identifier, Sales Date, Product Identifier, Quantity, Value

        #CMF030DocumentConfig
        @adminui @claimFormConfiguration_common @CMF023FormConfiguration_Deadlines @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the deadlines claiming and claim approvals can be configured for the invoice claim

        @adminui @claimFormConfiguration_common @CMF023FormConfiguration_Deadlines @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify "days from date of sale for approvals" is greater than "days from date of sale for claiming"

        @adminui @claimFormConfiguration_common @CMF023FormConfiguration_Deadlines @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify "days from date of sale for approvals" cannot be lesser than  "days from date of sale for claiming"

        @adminui @claimFormConfiguration_common @CMF033Claim_Approval @system @form @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sales cannot be captured in the sales table when it is not approved by the approver for the invoice claim

        @adminui @claimFormConfiguration_common @CMF033Claim_Approval @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sales can be captured in the sales table when it is approved by the approver for the invoice claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured specifically for the invoice claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured in multiple languages for the invoice claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured and triggered to the user for the invoice claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured in multiple languages for the invoice claim

        @adminui @claimFormConfiguration_common @CMF028SaleTypeConfig @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the sale type can be configured for the invoice claim form

        #Behaviour

        @adminui @claimFormConfiguration_common @CMF036BehaviourExecutionMetadata @system @form @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the promotion can be created based on the different behaviours

        @adminui @claimFormConfiguration_common @CMF036BehaviourExecutionMetadata @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the behaviours associated with usereligible and active promotion are visible in the claim form

        @adminui @claimFormConfiguration_common @CMF036BehaviourExecutionMetadata @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the behaviours associated with ineligible promotions are not visible in the claim form

        @adminui @claimFormConfiguration_common @CMF036BehaviourExecutionMetadata @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the behaviours associated with inactive promotion will not be visible in claim form even though user is eligible for the promotion

        @adminui @claimFormConfiguration_common @CMF040ClaimFormEligibilityAccess @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the same claim form is used for two different behaviour based promotions

        #CMF047ClaimFormConfigBehaviour
        @adminui @claimFormConfiguration_common @CMF037Config_BehaviourClaimForm @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be configured by the combination of behaviour and execution tables

        #Pre-loaded behaviour data at organization level

        @adminui @claimFormConfiguration_common @CMF036BehaviourExecutionMetadata @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the preloaded behaviour claim can be configured to organization level

        @adminui @claimFormConfiguration_common @CMF037Config_BehaviourClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the only one claim form can be configured to the promotion based on the behaviour

        @adminui @claimFormConfiguration_common @CMF043ClaimForm_ActionsDeadline @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the resolution date can be configured for the preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured specifically for the claim form for the preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured in multiple languages for the claim form for the preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured and triggered to the user for the preloaded behaviour claim

        @adminui @claimFormConfiguration_common @CMF005Claim_Notifications @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim related notification can be configured in multiple languages for the preloaded behaviour claim

        #No Execution data

        @adminui @claimFormConfiguration_common @CMF046Behaviour_ExecutionMetadata_EvidenceBased @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the admin can configure the metadata to hold claim information for behaviour claim

        @adminui @claimFormConfiguration_common @CMF046Behaviour_ExecutionMetadata_EvidenceBased @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the events can be configured to the evidence claim

        @adminui @claimFormConfiguration_common @CMF054ClaimForm_Actions @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form can be configured with mandatory fields Behaviour Date, Behaviour Identifier, Evidence

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured specifically for the evidence claim

        @adminui @claimFormConfiguration_common @CMF004HelpContent @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the helpcontent can be configured in multiple languages for the evidence claim



        #Form Fields
        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the added parent and child tables are displayed in the view creation for claim form fields configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify all the columns are displayed from the table in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the columns can be selected from the table in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @scenario @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify multiple columns can be selected from the different tables in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @scenario @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the field type is displayed on selecting the column in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @scenario @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the field type can be configured according to form field in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify table name gets displayed on selecting the column name

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the column name can be changed in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the display name can be added in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the display name can be configured in multiple languages in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the placeholder name can be added in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the placeholder can be configured in multiple languages in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the styles can be configured for the column in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim form is displayed with the configured style

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the validations can be added to the columns in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify multiple validations can be added to the columns in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the validations can be removed from the columns in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the validation <type> with value and message can be added to the columns in the view creation for claim form configuration
        Examples:
                        | type     |
                        | required |
                        | pattern  |
                        | length   |

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @special @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the selected column only displayed in the claim form with configured field type and validations

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @delete @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the selected column can be deleted/removed in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF001FormBuilderClaimForm @system @delete @functional @negative @reviewed @superadmin @updated @notautomated
        Scenario: Verify the table can be deleted/removed in the view creation for claim form configuration

        @adminui @claimFormConfiguration_common @CMF006ClaimAuditLogs @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim logs can be maintained for the promotion

        @adminui @claimFormConfiguration_common @CMF006ClaimAuditLogs @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
        Scenario: Verify the claim logs can be maintained for all the status change during the claim process
