Feature: Status Test cases for BC

    Background: Status Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "status" submenu
        Then Verify the "status" page is displayed


    @adminui @users @status @system @crud @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline: BC Verify user can create status
        # When User clicks on create status button
        # When User enters status name <value>
        # When User enters status description
        # When User clicks on save button in status popup
        # Then User can able to see the status created successfully
        #Examples:
        When BC Create a new status for users
            | value    |
            | BCStatus |
