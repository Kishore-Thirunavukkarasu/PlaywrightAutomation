Feature: User Management - Backwards Compatibility (BC) Smoke Scenarios

    Background: User Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing_bc" tenant
        When Choose the "existing_bc" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via self registration and completed the registration via activation code
        #Given admin site is configured with self registration form
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC user navigate to the "Self Registration" platform
        When BC user enters "valid" details in the self registration form
        When BC user clicks on the submit button in selfregistration
        Then BC "Successful" message shown up in platform
        When BC Quering the user for "self registration" from the table through query engine
        When BC user navigate to the "User Activation" platform
        When BC user enters the "self registration" username and "valid" activation code in platform
        When BC user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then BC Preview activation form is shown up
        When BC user completes the activation form
        When BC user enters the password and confirm password
        When BC user click on submit in password activation
        #Then "Successful" message shown up in platform
        When BC Platform user logout
        When BC Platform "self registration" user login
        Then BC Verify "home page" is displayed in platform
        When BC User Logout from the platform site

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via admin creation and completed the registration via activation code
        When BC User click on add user to create a new user
        Then BC User form should be displayed
        When BC User enters all the mandatory fields in user form
        When BC User clicks on Create User button in user form
        # Then "Successful" message shown up
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Quering the user for "admin creation" from the table through query engine
        When BC user navigate to the "User Activation" platform
        When BC user enters the "admin creation" username and "valid" activation code in platform
        When BC user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then BC Preview activation form is shown up
        When BC user completes the activation form
        When BC user enters the password and confirm password
        When BC user click on submit in password activation
        When BC Platform user logout
        When BC Platform "admin creation" user login
        Then BC Verify "home page" is displayed in platform
        When BC User Logout from the platform site

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via user upload and completed the registration via activation code
        When BC User enters all the mandatory columns in the csv file for "Users"
        When BC User click on upload button
        When BC User Choose the template for the "Users" csv file
        When BC Upload the csv file "Users"
        Then BC Verify the file should be uploaded and displayed
        When BC User click on "Submit" button in Upload file page
        Then BC "Successful" message shown up for file upload
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Quering the user for "user upload" from the table through query engine
        When BC user navigate to the "User Activation" platform
        When BC user enters the "user upload" username and "valid" activation code in platform
        When BC user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then BC Preview activation form is shown up
        When BC user completes the activation form
        When BC user enters the password and confirm password
        When BC user click on submit in password activation
        When BC Platform user logout
        When BC Platform "user upload" user login
        Then BC Verify "home page" is displayed in platform
        When BC User Logout from the platform site
