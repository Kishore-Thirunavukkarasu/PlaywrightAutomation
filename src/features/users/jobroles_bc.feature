Feature: Jobroles Test cases for BC

    Background: Jobroles Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Job Roles" submenu
        Then Verify the "Job Roles" is displayed


    @adminui @users @jobroles @navigation @form @functional @smoke @inprogress @superadmin
    Scenario: Create new jobroles for BC
        # When User click on the add jobrole
        # Then Verify the jobrole form is displayed
        # When User enters all the mandatory fields in the form when jobrole is <value>
        # When User click on add button in jobrole form page
        # Then Jobrole created successfully message shown up
        # Then Created jobrole should be displayed in the list of jobroles
        #Examples:
        When BC Create a new jobroles for users
            | value     |
            | BCJobrole |
