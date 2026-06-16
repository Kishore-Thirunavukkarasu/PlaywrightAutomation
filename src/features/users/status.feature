Feature: User Status

    Background: Hierarchy Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program" from the program list
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "status" submenu
        Then Verify the "status" page is displayed

    @adminui @users @status @navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify super admin can navigate to status page when there is no status present
        Then User can not able to see the list of status

    @adminui @users @status @navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify super admin can navigate to status page when there is status created already
        Then User can able to see the list of status

    @adminui @users @status @navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify tenant admin can navigate to status page
        Then User can able to see the list of status

    @adminui @users @status @system @search @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching status
        When User search for status
        Then User can able to see the status

    @adminui @users @status @system @crud @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify navigate to create status
        When User clicks on create status button
        Then User can able to see the create status page


    @adminui @users @status @system @crud @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline: Verify user can create status
        # When User clicks on create status button
        # When User enters status name <value>
        # When User enters status description
        # When User clicks on save button in status popup
        # Then User can able to see the status created successfully
        #Examples:
        When Create a new status for users
            | value       |
            | Registered  |
            | L1 Approved |
            | L2 Approved |
            | L1 Rejected |
            | L2 Rejected |

    @adminui @users @status @system @crud @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can edit status
        When User clicks on edit status button
        When User enters status name
        When User enters status description
        When User clicks on save button in status popup
        Then User can able to see the status updated successfully

    @adminui @users @status @system @crud @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can delete status
        When User clicks on delete status button
        Then User can able to see the status deleted successfully

    @adminui @users @status @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can make status as default when there is no default status
        When User clicks on make default status button
        Then User can able to see the status made as default successfully

    @adminui @users @status @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can make status as default when there is already default status
        When User clicks on make default status button
        Then User can able to see the status made as default successfully

    @adminui @users @status @system @crud @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create status without status name
        When User clicks on create status button
        When User enters status description
        When User clicks on save button in status popup
        Then status should not be created
        Then user can able to see the status not created message

    @adminui @users @status @system @crud @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create status without status description
        When User clicks on create status button
        When User enters status name
        When User clicks on save button in status popup
        Then User can able to see the status created successfully

    @adminui @users @status @system @crud @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can disable the status
        When User clicks on disable status button
        Then User can able to see the status disabled successfully