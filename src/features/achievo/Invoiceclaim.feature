Feature: Invoice Claim Organization field as autosuggest in claim form

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the autosuggest for the organisation field in the invoice claim

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Autosuggest for organization field
        Given the user is logged into the application
        And the user navigates to the invoice claim page
        When the user starts typing into the organization field
        Then a list of suggested organizations should appear in the organisation field
        And the suggested organizations should match the input text
        When the user selects an organization from the autosuggest list
        Then the selected organization should be populated in the organization field

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Organisation is mapped to the selected level in the Participant hierarchy in the admin site

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Organisation mapped to selected level and below in participant's hierarchy

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Organisation is mapped to the Participant's Organisations in the admin site

    # Invoice claim history page: Status "Resubmitted" in  status filter

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the submitted status of the invoice claim
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim
        And the user navigates to the invoice claim history page filter
        When the user click on 'submitted' status
        And the user click on apply
        Then the results based on the status submitted will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the challenged status of the invoice claim
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim page
        And the user navigates to the invoice claim history page filter
        When the user click on 'challenged' status
        And the user click on apply
        Then the results based on the status submitted will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the approved status of the invoice claim
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim page
        And the user navigates to the invoice claim history page filter
        When the user click on 'approved' status
        And the user click on apply
        Then the results based on the status approved will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the rejected status of the invoice claim
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim page
        And the user navigates to the invoice claim history page filter
        When the user click on 'rejected' status
        And the user click on apply
        Then the results based on the status rejected will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the resubmitted status in the invoice claim
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim page
        And the user navigates to the invoice claim history page filter
        When the user click on 'resubmitted' status
        And the user click on apply
        Then the results based on the status resubmitted will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with search by SKU in the Drop-down
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim page
        And the user navigates to the invoice claim history page filter
        When the user click on 'search by SKU' status
        And the user click on apply
        Then the results based on the status search ny SKU will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with search by invoice number
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim
        And the user navigates to the invoice claim history page filter
        When the user click on 'Search by invoice number' status
        And the user click on apply
        Then the results based on the Search by invocie number will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the month of sale (month)
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim
        And the user navigates to the invoice claim history page filter
        When the user click on 'month of sale' status
        And the user click on apply
        Then the results based on the month of sale will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the month of claim (month)
        Given the user is logged into the mobile application
        And the user navigates to the invoice claim
        And the user navigates to the invoice claim history page filter
        When the user click on 'month of claim' status
        And the user click on apply
        Then the results based on the month of claim will be shown

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify with the combinations of the status and invoice number

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify with the combinations of the status,invoice number,Product

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the combinations of the status, invoice,product,month of sale,month of claim

    ## Invoice claim history page: Option to "challenge" rejection and option to "re-sumbit" when rejected

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice is rejected by the approver user, the participant user from the same organisation can able to resubmit the invoice
        Given the user is logged into the mobile application
        And the participant user navigates to the invoice claim
        And submit the invoice
        Then the approver user can able to approver or reject the invoice claimed by the participant user
        Then if invoice is rejected by the approver user with the reject reason
        Then the Participant user can able to resubmit the same invoice

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice is rejected by the approver user, the participant user from the same organisation can able to challenge the invoice
        Given the user is logged into the mobile application
        And the participant user navigates to the invoice claim
        And submit the invoice
        Then the approver user can able to reject the invoice claimed by the participant user
        Then if invoice is rejected by the approver user
        Then the participant user will received the status message with rejected reason
        Then the Participant user can able to challenge the invoice with reason with challenge message

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice is rejected by the approver user with the rejected reason
        Given the user is logged into the mobile application
        And the participant user navigates to the invoice claim
        And submit the invoice
        Then the approver user can able to approver or reject the invoice claimed by the participant user
        Then if invoice is rejected by the approver user with the reject reason

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice is resubmitt by the Participant user
        Given the user is logged into the mobile application
        And the participant user navigates to the invoice claim
        And submit the invoice
        # Then the approver user can able to reject the invoice claimed by the participant user
        Then the invoice is rejected by the approver user
        Then the participant user will received the status message with rejected reason
        Then the Participant user can able to resubmit the invoice in the history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice is challenged by the participant user,the approver user challenge the invoice the invoice with challenge reason

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verfiy the rejected invoice is challenged with message (reason for the challenge in the pop-up) by the participant user, again to the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice is resubmitt by the Participant user with change in the data in the invoice, again to the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice is resubmitt by the Participant user with no change in the data in the invoice, again to the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the remarks message for the challenge in the invoice history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the remarks mesage for the challenge in the invoice in the invocie claimed page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the download of the invocie in the history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the status of the invoice is changed from submitted to approved

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the status of the invoice is changed from submitted to rejected

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the status of the invoice is changed from rejected to challenged (after challenge the invoice)

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with multiple product can be challenged

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with muliplt product can be re-submitted

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with single product can be challenged

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with single product can able to re-submitted

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the re-submit all the data are inserted in the re-submit page


    # Invoice claim history page: rejection reason when an SKU is rejected by approver

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected icon invoice in the history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the text are boundary for the reject reason in the history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the reject reason are shown in the pop-up

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the reject invoice in the history page

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice shown with the error reason message

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the rejected invoice shown with no error season message

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the status of the invoice after the rejection

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the reject reason can be space alone in the text area

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice claim in bulk approval for the reject

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice claim in bulk approval for the approval

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the download of the invoice in the approval screen

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the first time challenge message will be shown in the 'Remarks'

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the status of the invoice

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with multiple product can be approved

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with multiple product can be rejected

    # Invoice claim history page:The graph is always showing value by default, some programs may not have value, it could be only qty. There shuld be an option to toggle the graph between qty and value.

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the invoice history page with the value

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the invoice history page with the quantity

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph for both valve and quantity with the toggle button

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph is shown with the default 'value'

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with the value with in multipleproduct

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with the quantity with in multiple product

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with the quantity with organisation

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with the value with organisation

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page for years in drop-down

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page month wise data from default to quantity

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with value with month wise data

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page with quantity with month wise data

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page from value to quantity (values should change in month wise )

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the graph in the history page quantity to value (values should changein month wise)

    # Invoice claim approval: invoices with multiple SKUs are grouped together in the UI, but approver can either approve all or reject all. Approver cannot approve/reject SKU wise

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the multiple invoice can be approved all by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the multiple invoice can be rejected all by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: verify the invoice with single product can be approved by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with single product can be rejected by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the multiple invoice can be rejected all with the reject reason by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with single product can be rejected with the reject reason by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with sku1 & sku2 can be approved all by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invoice with sku1 and sku2 can be rejected all by the approver user

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario:verify the multiple invoice can be approved all by the approver user in the bulk approval

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the multiple invoice can be rejected all by the approver user in the bulk approval

    # Invoice claim approval: when  participant user challenges a rejected claim, approver should see the status as challenged and should be able to approve/reject.

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim, approver user should see the status as challenged

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim, approver user can able to approver the claim

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim, approver user can able to reject the claim again

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim, approver user can able to approver the claim with status as challenged

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim for multiple products, approver user can able to approver the claim for multiple SKU's

    @mobile @achievo @AchievoInvoiceClaim @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the participant user challenge the rejected claim for multiple products,  approver user can able to reject the claim for multiple SKU's