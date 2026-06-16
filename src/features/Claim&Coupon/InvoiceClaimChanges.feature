Feature: Invoice Claim Line Wise Approval and Rejection

    # created by  = Kishore Gunasekaran
    # reviewed by =
    # updated by  =
    # project url =

    Background:
        Given the user is logged in to the Sub Dealer Claim system
        And the organization hierarchy is configured as:
            | City    | State      |
            | Chennai | Tamil Nadu |
            | CBE     | Tamil Nadu |
            | Kerala  | Kerala     |

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Submit sub dealer claim based on buying organization
        Given claim approval setting is configured as "Hierarchy Based on Buying Org"
        And sub dealer belongs to "Org 1"
        When the sub dealer submits a claim with:
            | Buying Org  | Org 1 (CBE)     |
            | Selling Org | Org 2 (Chennai) |
        Then the claim should be created successfully
        And the claim status should be "Submitted"

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Buying org city dealer sees the claim
        Given claim approval setting is "Hierarchy Based on Buying Org"
        And a claim "Sub 1" is submitted with buying org "CBE"
        When dealer from "Org 11" with location "CBE" opens approval page
        Then the claim "Sub 1" should be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Selling org city dealer cannot see the claim
        Given claim approval setting is "Hierarchy Based on Buying Org"
        And a claim "Sub 1" exists with selling org "Chennai"
        When dealer from "Org 10" with location "Chennai" opens approval page
        Then the claim "Sub 1" should not be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Buying org parent state dealer sees the claim
        Given claim approval setting is "Hierarchy Based on Buying Org"
        And a claim "Sub 1" is submitted under buying org "CBE"
        When dealer from "Org 12" with location "Tamil Nadu" opens approval page
        Then the claim "Sub 1" should be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Submit sub dealer claim based on selling organization
        Given claim approval setting is configured as "Hierarchy Based on Selling Org"
        And sub dealer belongs to "Org 1"
        When the sub dealer submits a claim with:
            | Buying Org  | Org 1 (CBE)     |
            | Selling Org | Org 2 (Chennai) |
        Then the claim should be created successfully
        And the claim status should be "Pending Approval"

    ## Scenario: Dealer from selling org city can view the claim
    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Selling org city dealer sees the claim
        Given claim approval setting is "Hierarchy Based on Selling Org"
        And a claim "Sub 1" exists with selling org "Chennai"
        When dealer from "Org 10" with location "Chennai" opens approval page
        Then the claim "Sub 1" should be visible

    ## Scenario: Dealer from buying org city cannot view the claim
    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Buying org city dealer cannot see selling-org-based claim
        Given claim approval setting is "Hierarchy Based on Selling Org"
        And a claim "Sub 1" exists with selling org "Chennai"
        When dealer from "Org 11" with location "CBE" opens approval page
        Then the claim "Sub 1" should not be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Selling org parent state dealer sees the claim
        Given claim approval setting is "Hierarchy Based on Selling Org"
        And a claim "Sub 1" exists with selling org "Chennai"
        When dealer from "Org 12" with location "Tamil Nadu" opens approval page
        Then the claim "Sub 1" should be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Unrelated state dealer cannot see the claim
        Given claim approval setting is "Hierarchy Based on Selling Org"
        And a claim "Sub 1" exists with selling org "Chennai"
        When dealer from "Org 13" with location "Kerala" opens approval page
        Then the claim "Sub 1" should not be visible

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Unauthorized dealer tries to access claim
        Given claim approval setting is "Hierarchy Based on Buying Org"
        And a claim "Sub 1" exists
        When an unauthorized dealer accesses the claim using direct URL
        Then access should be denied
        And an authorization error message should be displayed

    ## Scenario: Approval configuration change affects only new claims
    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Approval configuration change applies to new claims only
        Given an existing claim was created with approval based on "Buying Org"
        When the approval configuration is changed to "Selling Org"
        And a new claim is submitted
        Then the existing claim should follow "Buying Org" hierarchy
        And the new claim should follow "Selling Org" hierarchy

    # Line Wise Approval and Rejection in the Invoice Claim
    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to add the invoice For single line items for a product

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie for multiple line items for different Products

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie for the same Product with different line items with differnet quantity

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invoice with differet dates for the multiple line items

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie with different dates for the multiple line items with different Products

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can approve the single invoice and reject multiple invocie

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verfify we can able to reject the entire line wise invoice in the line item wise

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to approve the entire line item wise invocie claim for the submitted invoice

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to re-submit the rejected invocie again for the PArticular line item wise

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to rejected invocie can be re-submitted again and made it as approval

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invocie can be re-submitted and we can able to reject the invoice again

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invoice n number of times for the re-submitted invocie

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to Approve the invoice for the single / multiple line items

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invoice for the single / multiple line items

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error validation for the single line items in the submission Page

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error Validation for the multiple line items in the submission Page

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filters in the Approval Pages for the Single and Multiple line items wise for the invoice claim

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filter in the History Page for the single and multiple line items wise for the invoice claim

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the end to end flow for the line item wise submission and approval

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the end to end flow for the rejection and re-submit flow

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the end to end for the invoice claim approval Process

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the line items names are per the Configuration

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Veify the line items name as per the configuration in the submission and the history, Approval Pages

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the dates Configuration in the invoice claim submission as per the configuration

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configuration for the seller as buyer

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configuration claimer as buyer

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim apporval settings based on the buyer organisation

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim approval settings based on the selling organisation

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the radio button in the claim form configuration for the fields

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to add the invoice For single line items for a product in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie for multiple line items for different Products in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie for the same Product with different line items with differnet quantity in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invoice with differet dates for the multiple line items in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to submit the invocie with different dates for the multiple line items with different Products in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can approve the single invoice and reject multiple invocie in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verfify we can able to reject the entire line wise invoice in the line item wise in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to approve the entire line item wise invocie claim for the submitted invoice in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to re-submit the rejected invocie again for the PArticular line item wise in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to rejected invocie can be re-submitted again and made it as approval flow in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invocie can be re-submitted and we can able to reject the invoice again flow in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invoice n number of times for the re-submitted invocie claim in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to Approve the invoice for the single / multiple line items in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify we can able to reject the invoice for the single / multiple line items in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error validation for the single line items in the submission Page in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error Validation for the multiple line items in the submission Page in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filters in the Approval Pages for the Single and Multiple line items wise for the invoice claim in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filter in the History Page for the single and multiple line items wise for the invoice claim in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the line items fields name as per the configuration in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the line items fields name as per the Configuration in the Approval Page

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verif the line items fields name as per the configuration in the history Page for each line items

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the line items fields name as per the configuration in the approval Page for the single and Muliple line items

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the mobile alignments for the apporval and the history Pages

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the End to End Functionality for the Submission and the Approval Flow are working in the mobile app

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the look with the organisation for the invocie claim approval

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by unchecking the look with in the organisation for the invoice claim approval

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by selling organisation in the hiearchy filter in the promotions for the claim form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by the buying organisation in the hiearchy filter in the promotions for the claim form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the different Condition in the claim form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Conditions In in the claim form like static form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Approver job role as the Configuration, Approval user can able to see the invoice Submitted data

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Approver job role look with in the job roles

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the super approver for the invoice claim Approver

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the open Approval For the invoice claim approval

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Additional Configuration add criteria For functions Contains in the claim form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the additional Configuraion add criteria For Function IN in the claim form

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filters in the Approval Pages

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Filters in the history Page

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Combination for the filters in the history and approval pages

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the approver with the same organisation can able to approver the submitted invocie claim

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the approver from different organisation cannot able to approver the submitted invoice claim

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the End the End flow for the invoice Claim submission module

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reject and re-submit flow end to end flow for the invoice claim

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the look with the organisation flow for the approval flow

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the look with in organisation is disabled for the apporval flow

    @adminui @ClaimFormConfiguration_Common @invoiceUpdated @system @post @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the End to End for the Appoval Flow





