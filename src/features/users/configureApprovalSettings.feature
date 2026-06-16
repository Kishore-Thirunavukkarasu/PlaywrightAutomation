Feature: Configure approval settings

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/{tenantid}/program/{programid}/approvals/


    Background: Approval settings navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participant approvals" submenu
        Then Verify the "Approval settings" is displayed

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Configure the open approval
        When User turns on the Enable toggle
        When User selects the jobroles for user approval
        When User selects the "Pre-Approved" status
        When User click on add "level 1"
        When User selects "Open Approval" as approval type for "level 1"
        When User select the approver audience for "level 1"
        When User selects the approved and rejected status for "level 1"
        When User enters the auto approval days for "level 1"
        When User click on add "level 2"
        When User selects "Open Approval" as approval type for "level 2"
        When User select the approver audience for "level 2"
        When User selects the approved and rejected status for "level 2"
        When User enters the auto approval days for "level 2"
        When User selects the audience for Super Approver
        When User selects the notification check boxes
        When User click on Submit button in User Approver settings
        Then "Successful" message shown up
