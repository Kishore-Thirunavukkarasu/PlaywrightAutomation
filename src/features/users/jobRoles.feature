Feature: User Jobroles

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background: Jobroles Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        # When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Job Roles" submenu
        Then Verify the "Job Roles" is displayed

    @adminui @users @jobroles @navigation @form @functional @smoke @inprogress @superadmin
    Scenario: Create new jobroles
        # When User click on the add jobrole
        # Then Verify the jobrole form is displayed
        # When User enters all the mandatory fields in the form when jobrole is <value>
        # When User click on add button in jobrole form page
        # Then Jobrole created successfully message shown up
        # Then Created jobrole should be displayed in the list of jobroles
        #Examples:
        When Create a new jobroles for users
            | value          |
            | SuperAdmin     |
            | L1Approver     |
            | L2Approver     |
            | GeneralUser    |
            | UserApproval   |
            | NoUserApproval |

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Create a new jobrole without <fields>
        When User click on the add jobrole
        Then Verify the jobrole form is displayed
        When User enters all the mandatory fields in jobrole form
        When User removes the <fields> in jobrole form
        When User click on add button in jobrole form page
        Then Verify the error message is displayed
        Then Verify the jobrole is not created
        Examples:
            | fields      |
            | name        |
            | description |
            | level       |

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Cancel the jobrole creation
        When User click on the add jobrole
        Then Verify the jobrole form is displayed
        When User enters all the mandatory fields in jobrole form
        When User click on cancel button in jobrole form page
        Then Verify the user is on the jobrole page
        Then Verify the jobrole is not created

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Search for a jobrole with <jobrole> data
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User search for a Jobrole with <jobrole> data
        Then Verify the jobrole with <jobrole> data is displayed
        Examples:
            | jobrole |
            | valid   |
            | invalid |

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Verify the jobrole count
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        Then Verify the jobrole count is displayed
        Then Verify the list of jobroles count is equal to the jobrole count

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Verify the jobrole page with list of jobroles
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Jobroles can be sorted by name
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User clicks on the sort button in name column
        Then Verify the jobroles are sorted by name in ascending order
        When User clicks on the sort button in name column
        Then Verify the jobroles are sorted by name in descending order

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Jobroles can be sorted by description
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User clicks on the sort button in description column
        Then Verify the jobroles are sorted by description in ascending order
        When User clicks on the sort button in description column
        Then Verify the jobroles are sorted by description in descending order

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Jobroles can be sorted by level
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User clicks on the sort button in level column
        Then Verify the jobroles are sorted by level in ascending order
        When User clicks on the sort button in level column
        Then Verify the jobroles are sorted by level in descending order

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Edit the Jobrole
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User search for a Jobrole "Software Engineer"
        Then Verify the jobrole "Software Engineer" is displayed
        When User clicks on the three dots in jobrole
        Then Verify the Edit is displayed
        When User click on the edit button
        When User edits the mandatory fields
        When User click on the save button
        Then Jobrole updated successfully message shown up
        Then Updated jobrole should be displayed in the list of jobroles

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: Cancel the Jobrole while edit
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User search for a Jobrole "Software Engineer"
        Then Verify the jobrole "Software Engineer" is displayed
        When User clicks on the three dots in jobrole
        Then Verify the Edit is displayed
        When User click on the edit button
        When User edits the mandatory fields
        When User click on the cancel button
        Then Verify the user is on the jobrole page
        Then Verify the jobrole is not updated

    @adminui @users @jobroles @navigation @form @functional @positive @inprogress @superadmin
    Scenario: View the Jobrole
        When User is on the jobrole page
        Then Verify the list of jobroles are displayed
        When User search for a Jobrole "Software Engineer"
        Then Verify the jobrole "Software Engineer" is displayed
        When User clicks on the three dots in jobrole
        Then Verify the View is displayed
        When User click on the view button
        Then Verify the jobrole details are displayed

