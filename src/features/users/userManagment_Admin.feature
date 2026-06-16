Feature: User Management - Through Form, Upload, and Self Registration

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Kadarkarai Selvam
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(TenantId/program/(ProgramId)/users/

    #USR044AudienceSpecificRegistrationForm - Need Discussion

    Background: User Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed

    @adminui @users @USR017ListView @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify navigation to user list when there is no users
        When User is on the participants page
        Then Verify "Get started" link is displayed
        Then Count of users should be displayed
        Then Count of users should be "0"

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user by entering all the mandatory fields in forms
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding a new user by entering all fields in the form
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding a new user by entering no values in fields in the form
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR017ListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to User page with few users
        When User is on the participants page
        Then Verify list of users should be displayed
        Then count of users should be displayed
        Then Add user button should be displayed

    @adminui @users @USR017ListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to User page with few users and search for user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User search for valid user
        Then Verify list of users should be displayed with search results

    @adminui @users @USR017ListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to User page with few users and search for invalid user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User search for invalid user
        Then Verify list of users should be displayed with no search results

    @adminui @users @USR017ListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: View list of users
        When User is on the participants page
        Then Verify list of users should be displayed
        Then Count of users should be displayed
        Then Count of users matches with the list of users displayed

    @adminui @users @USR003ByAdmin @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sorting user by username
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on sort button in "username" column
        Then list of users should be sorted by "username" in Ascending order
        When User click on sort button in "username" column
        Then list of users should be sorted by "username" in Descending order

    @adminui @users @USR003ByAdmin @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sorting user by Email
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on sort button in "Email" column
        Then list of users should be sorted by "Email" in Ascending order
        When User click on sort button in "Email" column
        Then list of users should be sorted by "Email" in Descending order

    @adminui @users @USR003ByAdmin @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sorting user by Status
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on sort button in "Status" column
        Then list of users should be sorted by "Status" in Ascending order
        When User click on sort button in "Status" column
        Then list of users should be sorted by "Status" in Descending order

    @adminui @users @USR003ByAdmin @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sorting user by Role
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on sort button in "Role" column
        Then list of users should be sorted by "Role" in Ascending order
        When User click on sort button in "Role" column
        Then list of users should be sorted by "Role" in Descending order

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user by entering all the mandatory fields in forms
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field validations like length, type respective to created user form
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User enters the fields with invalid data
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user without entering all the mandatory fields in forms
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User removes the "Username" from the user form
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with invalid data format
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form with invalid data format
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with different program
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Enter the form details and click on cancel button
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Close" button in user form
        Then User should be navigated to the user list page
        Then User should not be created

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Enter the form details and click on Reset button
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Reset" button in user form
        Then User form should be reset

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with existing username
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User enters the existing "Username" in the user form
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with existing email
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User enters the existing "Email" in the user form
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with existing phone number
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User enters the existing "Phone Number" in the user form
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to see the account details of the platform user
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayed
        When user click on account details
        Then account details overlay should be displayed

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to see the account activation status
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayed
        Then Account activation status should be displayed

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to see the pending account bank details of the platform user
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayedg
        Then account status should be displayed as "pending"

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to see the active account bank details of the platform user
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayed
        Then account status should be displayed as "created" and the account number

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to see the account locked status of the platform user with locked status
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayed
        Then account status should be displayed as "locked"
        Then unlock button should be enabled

    @adminui @users @USR028ChooseUniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to unlock the account
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        Then user is created successfully
        When User click on the elipsis from the selected user
        Then Account details should be displayed
        Then account locked status should be displayed as "locked"
        When User click on unlock button
        Then account locked status should be displayed as "not locked"

    @adminui @users @USR029LoginMethods @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with sso enabled
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users
        Then Verify the user can login with sso

    @adminui @users @USR029LoginMethods @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a new user with sso disabled
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users
        Then Verify the user cannot login with sso

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user from user list page
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with existing username
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User enters the existing "Username" in the edit user form
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with existing email
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User enters the existing "Email" in the edit user form
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with existing phone number
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User enters the existing "Phone Number" in the edit user form
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with invalid data format
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details with invalid data
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with missing mandatory details
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details with missing mandatory details
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with enabling sso
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details with enabling sso
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up
        Then User should be able to login with sso

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit user with disabling sso
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details with disabling sso
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up
        Then User should not be able to login with sso

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding user jobrole information
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User adds the jobrole
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding more than one jobrole
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User adds multiple jobroles
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding image to user
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User adds the image
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Created user should be displayed in the list of users

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding image to user with invalid image format
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User adds the image with invalid image format
        When User clicks on "Create User" button in user form
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Updating image to user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user image
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR003ByAdmin @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete a user image
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User delete the user image
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Updating image to user with invalid image format
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user image with invalid image format
        When User clicks on "Edit User" button in user form
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add user detail page verification
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add User page showing configured page
        When User is on the participants page
        Then Verify list of users should be displayed
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed

    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the user jobrole
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user jobrole
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up


    # # ####################################upload scenario###################################################

    @adminui @users @USR003ByAdmin @navigation @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Download template csv file in user page
        When User click on Download template
        Then csv file should be downloaded

    @adminui @users @USR003ByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file in user page
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then User list should be filtered based on template filter
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in user upload
        Then "Successful" message shown up
        Then Uploaded users should be displayed in the participants list page

    @adminui @users @USR003ByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Cancel upload csv file in user page
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Cancel" button in user upload
        Then Upload file popup should be closed

    @adminui @users @USR003ByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Drag and Drop in upload csv file in user page
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        When User drag and drop the file in the Upload CSV File section
        Then The file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then User list should be filtered based on template filter
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in user upload
        Then "Successful" message shown up
        Then Uploaded users should be displayed in the participants list page

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file in user page with invalid file format
        When User click on upload csv badge
        When User click on the template dropdown
        When User Choose the template for the "Users" csv file
        When User uploads the invalid file in the Upload CSV File section
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload the users csv file with different column data type
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        When User uploads the file with different column data type in the Upload CSV File section for "Users"
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete the uploaded users csv file
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Delete" button in user upload
        Then The file should be deleted

    @adminui @users @USR003ByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Cancel the Users creation after uploading the csv file
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then User list should be filtered based on template filter
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Cancel" button in user upload
        Then Uploaded users should not be displayed in the participants list page

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file with missing mandatory columns
        When User enters the data with missing of mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file with missing mandatory field values
        When User enters the data with missing of mandatory fields in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file with missing in non mandatory fields
        When User enters the all the mandatory columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Successful" message shown up
        Then Uploaded users should be displayed in the participants list page

    @adminui @users @USR003ByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload csv file with additional column fields
        When User enters the all the mandatory columns with additional columns in the csv file for "Users"
        Then Upload csv badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with matching data
        When User enters the all the mandatory columns in the csv file with matching field along with updated data for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user details
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Successful" message shown up
        Then The users are updated successfully and displayed in the participants list page

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the user <status> through file upload
        When User enters the all the mandatory columns in the csv file with matching field along with <status> for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user status
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Successful" message shown up
        Then The users are updated successfully and displayed in the participants list page
        Examples:
            | status   |
            | active   |
            | inactive |

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with different column data type
        When User enters the all the mandatory columns in the csv file with matching field along with updated different datatype for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user details
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with missing mandatory columns
        When User enters the data with missing of mandatory columns in the csv file with matching field for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user details
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with missing mandatory field values
        When User enters the data with missing of mandatory fields in the csv file with matching field for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user details
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with additional column fields
        When User enters the all the mandatory columns with additional columns in the csv file with matching field for "Users"
        When User click on upload csv badge
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users" to update the user details
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in user upload
        Then "Error" message shown up

    @adminui @users @USR039ViewEditProfileUpload @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the user details through file upload with invalid file format
        When User click on upload csv badge
        When User click on the template dropdown
        When User Choose the template for the "Users" csv file
        When User uploads the invalid file in the Upload CSV File section
        Then Invalid file format message should be displayed

    # impersonate for admin user should not occur, need to add this scenario
    # participant and client user have similar approach on impersonation

    @adminui @users @USR002ByManager @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin to grand the self registration page access only to specific audiences
        When User clicks on "Program Setup"
        When User clicks on "Login settings" submenu
        When Admin configures the self registration page access only to specific audiences
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User enters all the mandatory fields in the self registration form
        When User clicks on "Submit" button in user upload
        Then User should able to see the success message
        Then User should able to see the homepage once approval is done

    @adminui @users @USR002ByManager @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user from an audience who doesn't have access to self registration form cannot able to create users through it
        When User who doesn't have permission to access the self registration form
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should not able to see the login screen
        When User clicks on the self registration button
        Then User should not able to see the self registration form

    @adminui @users @USR006BypassActivation @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Admin can able to byepass the activation step for SSO users so that they will login directly after registration
        When User clicks on "Program Setup"
        When User clicks on "Login settings" submenu
        When Admin configures and bypassing the activation step for SSO users
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User registers and login with SSO
        Then User should able to see the homepage directly

    @platformui @users @USR006BypassActivation @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the non bypassed SSO users should not able to login directly after registration
        When User clicks on "Program Setup"
        When User clicks on "Login settings" submenu
        When Admin configures and bypassing the activation step for SSO users
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User registers and login with SSO
        Then User should not able to see the homepage directly

    @platformui @users @USR007TriggerActivationNotification @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification is triggered with activation code for user who registered and activation is required
        When User clicks on "Program Setup"
        When User clicks on "Login settings" submenu
        When Admin configures the activation step for SSO users
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User registers and login with SSO
        Then User should able to see the activation code in the notification

    @platformui @users @USR007TriggerActivationNotification @integration @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification is not triggered with activation code for user who registered and activation is not required
        When User clicks on "Program Setup"
        When User clicks on "Login settings" submenu
        When Admin configures the activation step for SSO users
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User registers and login with SSO
        Then User should not able to see the activation code in the notification

    @platformui @users @USR008ConfigureStepsinActivationFlow @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validates the admin can configure the activation flow steps after registration
        When Admin configures the activation flow steps
        When User can configure the activation form preview, security Q&A, T&C Checkbox, Promotional notification consent Checkbox
        Then User should able to activate after the flow steps are completed

    @platformui @users @USR009DisplayRegistrationInformation @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to preview the registered information before activation
        When Admin configures the activation flow steps
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User enters all the mandatory fields in the self registration form
        Then User should able to preview the registered information before activation

    @platformui @users @USR009DisplayRegistrationInformation @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to enter the security Q&A before activation
        When Admin configures the activation flow steps
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User enters all the mandatory fields in the self registration form
        Then User should able to enter the security Q&A before activation

    @platformui @users @USR010CaptureSecurityQuestion @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to capture the security Q&A for platform user
        When Admin configures the activation flow steps
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User enters all the mandatory fields in the self registration form
        Then User registered successfully
        When User enters the security Q&A
        Then Verify the security Q&A is captured for the user

    @platformui @users @USR012SetPasswordSSO @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify password is not captured when user tries to login through SSO
        When Admin configures the activation flow steps
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with SSO
        Then User should not able to see the password field
        Then Verify the password is not captured for the user

    @platformui @users @USR013GetConsent @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to see T&C and Promotional notification consent before activation
        When Admin configures the activation flow steps
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        When User enters all the mandatory fields in the self registration form
        Then User should able to see the T&C and Promotional notification consent before activation

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using first name
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "first name" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using last name
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "last name" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using username
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "username" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using email
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "email" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using tier
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "tier" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using jobrole
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "jobrole" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using organization name
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "organization name" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR018FilterListView @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to filter the users in the list using organization code
        When User is on the participants page
        Then Verify list of users should be displayed
        When User clicks on the filter button
        When User enters the "organization code" in the filter
        Then User should able to see the filtered users in the list

    @adminui @users @USR019ViewParticipantsUserDetails @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can view the details of participant users
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        When User clicks on the "View" button from the user elipsis
        Then User should able to see the details of the selected user

    @adminui @users @USR021ChangeHistoryRespecttoUserProfile @navigation @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when any changes in the user profile information will be logged with timestamp
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details
        When User clicks on "Edit User" button in user form
        Then User should able to see the changes in the user profile information with timestamp

    @adminui @users @USR021ChangeHistoryRespecttoUserProfile @navigation @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the log should capture the previous value, new value, updated by and timestamp
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the user details
        When User clicks on "Edit User" button in user form
        Then User should able to see the previous value, new value, updated by and timestamp in the log

    @adminui @users @USR022ChangeHistoryRespecttoOrg @navigation @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when any changes respect to organization of the user will be logged with timestamp
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the organization of the user
        When User clicks on "Edit User" button in user form
        Then User should able to see the changes in the organization of the user with timestamp

    @adminui @users @USR023ChangeHistoryRespecttoJobrole @navigation @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when any changes respect to jobrole of the user will be logged with timestamp
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When User updates the jobrole of the user
        When User clicks on "Edit User" button in user form
        Then User should able to see the changes in the jobrole of the user with timestamp

    @adminui @users @USR023ChangeHistoryRespecttoPrimaryOrgJobrole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user needs to have a primary organization and jobrole
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User assigns to primary organization and jobrole
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then User should able to see the primary organization and jobrole of the user

    @adminui @users @USR024SecondaryOrganization @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can be mapped to multiple organizations through seperate file upload
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User assigns to multiple organizations
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then User should able to see the user is mapped to multiple organizations

    @adminui @users @USR024SecondaryJobrole @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can be mapped to multiple jobroles through seperate file upload
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User assigns to multiple jobroles
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then User should able to see the user is mapped to multiple jobroles

    @adminui @users @USR025OrgJobroleMapping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can have different jobroles in different organizations
        When User is on the participants page
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User assigns to different jobroles in different organizations
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then User should able to see the user is mapped to different jobroles in different organizations

    @adminui @users @USR025OrgJobroleMapping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can have different jobroles in different organizations with start date and end date of jobrole
        When User is on the participants page
        Then Verify list of users should be displayed
        When User try to create a new participant user
        Then User should able to see the user is mapped to different jobroles in different organizations with start date and end date of jobrole

    @adminui @users @USR029PasswordConfigurationPolicy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the password validation rules for the users
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User click on edit form
        Then User can able to see the password field in the form
        Then Verify the user can able to configure the rules for password field

    @platformui @users @USR032ConfirmEmailMobileorBoth @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to verify the email address through OTP
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        When New user is registered
        When User enters the email address
        When User verifies the email address through OTP
        Then verify the otp is sent to the email address
        When User enters the otp
        Then User should able to verify the email address successfully

    @platformui @users @USR032ConfirmEmailMobileorBoth @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to verify the mobile number through OTP
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        When New user is registered
        When User enters the mobile number
        When User verifies the mobile number through OTP
        Then verify the otp is sent to the mobile number
        When User enters the otp
        Then User should able to verify the mobile number successfully

    @adminui @users @USR033CapturingConsent @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure one or more check box elements that should appear at the end of form
        When Admin User configures one or more consent checkbox
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        Then User should able to see the consent checkbox at the end of the form
        Then Verify platform user is not able to submit the form without checking the consent checkbox

    @adminui @users @USR033CapturingConsent @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure mandatory consent checkbox
        When Admin User configures mandatory consent checkbox
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        Then User should able to see the mandatory consent checkbox at the end of the form
        Then Verify platform user is not able to submit the form without checking the mandatory consent checkbox

    @adminui @users @USR033CapturingConsent @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure optional consent checkbox
        When Admin User configures optional consent checkbox
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the self registration form
        Then User should able to see the optional consent checkbox at the end of the form
        Then Verify platform user is able to submit the form without checking the optional consent checkbox

    @platformui @users @USR034Captcha @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform site should have captcha that should be verified to prevent automated registration or spam
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the captcha
        When User enters the captcha
        Then After successful captcha verification
        Then User should able to see the self registration form

    @platformui @users @USR034Captcha @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the spam user should not able to continue without verifying the captcha
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the captcha
        When User enters the invalid captcha
        Then After unsuccessful captcha verification
        Then User should not able to see the self registration form

    @platformui @users @USR034Captcha @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user should not able to continue by entering the invalid captcha
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User clicks on the self registration button
        Then User should able to see the captcha
        When User enters the invalid captcha
        Then After unsuccessful captcha verification
        Then User should not able to see the self registration form

    @adminui @users @USR035ChangeUsername @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can only able to edit the username of participant user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Username"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @platformui @users @USR035ChangeUsername @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user cannot able to change the username
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the success message
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should not able to change the username

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the email can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Email"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the mobile number can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Mobile number"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Program"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the country can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Country"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the timezone can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Timezone"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the language can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Language"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the status can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Status"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the gender can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "gender"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the jobrole can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Jobrole"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the organization can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Organization"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @adminui @users @USR020EditParticipantsUserDetails @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the title can be edited by the admin for the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User click on the elipsis from the selected user
        Then Edit, Delete should be displayed
        When User clicks on the "Edit" button from the user elipsis
        Then User "edit" overlay should be displayed
        When Admin User updates the "Title"
        When User clicks on "Edit User" button in user form
        Then "Successful" message shown up

    @platformui @users @USR038ViewEditProfile @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to view and edit the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should able to edit the profile details

    @platformui @users @USR038ViewEditProfile @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to edit the email address in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        When User edits the email address
        Then User should able to see the updated email address

    @platformui @users @USR038ViewEditProfile @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to edit the mobile number in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        When User edits the mobile number
        Then User should able to see the updated mobile number

    @platformui @users @USR038ViewEditProfile @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user cannot able to edit the jobrole in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should not able to edit the jobrole

    @platformui @users @USR038ViewEditProfile @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user cannot able to edit the organization in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should not able to edit the organization

    @platformui @users @USR038ViewEditProfile @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user cannot able to edit the country in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should not able to edit the country

    @platformui @users @USR038ViewEditProfile @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user cannot able to edit the timezone in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the edit button
        Then User should able to see the edit profile form
        Then User should not able to edit the timezone

    @platformui @users @USR038ViewEditProfile @integration @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to view the user details in the profile details
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details

    @platformui @users @USR039ViewEditProfileUpload @integration @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the platform user can able to view and download the user details at the time of registration
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User login with valid credentials
        When User clicks on the login button
        Then User should able to see the homepage
        Then User should able to see the profile button
        When User clicks on the profile button
        Then User should able to see the profile details
        When User clicks on the download button
        Then User should able to download the user details

    @adminui @users @USR037PIIInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can flag certain fields of user in registration form as PII and such data must be handled in a more secure way
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the data is handled in a more secure way

    @adminui @users @USR037PIIInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can flag certain documents uploaded by user as PII and such data must be handled in a more secure way
        When User can able to flag certain documents uploaded by user as PII
        Then Verify the data is handled in a more secure way

    @adminui @users @USR037PIIInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the secured data should not be shared with any third party
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the secured data should not be shared with any third party

    @adminui @users @USR037PIIInformation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the secured data should not be stored without encryption in the database
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the secured data should not be stored without encryption in the database

    @adminui @users @USR037PIIInformation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the secured data should not be stored in the logs
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the secured data should not be stored in the logs

    @adminui @users @USR037PIIInformation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the secured data should not be accessed by any unauthorized user
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the secured data should not be accessed by any unauthorized user

    @adminui @users @USR037PIIInformation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the secured data cannot able to share
        When User can able to flag certain fields of user in registration form as PII
        Then Verify the secured data cannot able to share

    @adminui @users @USR040HierarchyManagerDashboard @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Hierarchy managers will be able to view dashboard showing registrations and activations for their hierarchy
        When User is a hierarchy manager
        Then User should able to view the dashboard showing registrations and activations for their hierarchy

    @adminui @users @USR043NotificationUser @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the notification for Registration form submission
        When User click on "Communications"
        When User click on the "Notification" submenu
        Then Verify the "Notification" page is displayed
        When Verify the user can able to configure the event based notification for Registration form submission
        Then Verify the notification is configured successfully

    @adminui @users @USR043NotificationUser @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the notification for Approval of Registration form submission
        When User click on "Communications"
        When User click on the "Notification" submenu
        Then Verify the "Notification" page is displayed
        When Verify the user can able to configure the event based notification for Approval of Registration form submission
        Then Verify the notification is configured successfully

    @adminui @users @USR043NotificationUser @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the notification for Rejection of Registration form submission
        When User click on "Communications"
        When User click on the "Notification" submenu
        Then Verify the "Notification" page is displayed
        When Verify the user can able to configure the event based notification for Rejection of Registration form submission
        Then Verify the notification is configured successfully

    @adminui @users @USR043NotificationUser @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the notification for Activation message triggers
        When User click on "Communications"
        When User click on the "Notification" submenu
        Then Verify the "Notification" page is displayed
        When Verify the user can able to configure the event based notification for Activation message triggers
        Then Verify the notification is configured successfully

    @adminui @users @USR045CountrySpecificRegistrationForm @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the user registration form based on the country
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the user form
        When User configures the user registration form based on the country
        Then Verify the user registration form is configured successfully based on the country

    @platformui @users @USR045CountrySpecificRegistrationForm @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the configured user registration form should be displayed based on the country
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User selects the self registration button
        Then User should able to see the user registration form based on the country

    @platformui @users @USR045CountrySpecificRegistrationForm @integration @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user should not able to see the user registration form configured for different country
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User selects the self registration button
        Then User should not able to see the user registration form configured for different country

    @adminui @users @USR046ViewHierarchyUserList @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the client users can be viewed seperately
        When User is on the participants page
        Then Verify list of users should be displayed
        When User filters the client users
        Then User should able to see the client users seperately

    @adminui @users @USR049RegistrationWorkflows @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the registration workflows of self registration form
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the self registration form
        When User configures the registration workflows
        Then Verify the registration workflows is configured successfully

    @adminui @users @USR049RegistrationWorkflows @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the registration workflows of file upload
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the file upload form
        When User configures the registration workflows
        Then Verify the registration workflows is configured successfully

    @adminui @users @USR049RegistrationWorkflows @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the login method as SSO
        When User click on "Program Setup"
        When User click on the "Login Settings" submenu
        Then Verify the "Login Settings" page is displayed
        When User configures the login method as SSO
        Then Verify the login method is configured successfully

    @adminui @users @USR049RegistrationWorkflows @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the login method as OTP
        When User click on "Program Setup"
        When User click on the "Login Settings" submenu
        Then Verify the "Login Settings" page is displayed
        When User configures the login method as OTP
        Then Verify the login method is configured successfully

    @adminui @users @USR049RegistrationWorkflows @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure the login method as OTP and Password
        When User click on "Program Setup"
        When User click on the "Login Settings" submenu
        Then Verify the "Login Settings" page is displayed
        When User configures the login method as OTP and Password
        Then Verify the login method is configured successfully

    @adminui @users @USR050RegistrationWorkflowsModify @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to modify the registration form
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the registration form
        When User modifies the registration form
        Then Verify the registration form is modified successfully

    @adminui @users @USR050RegistrationWorkflowsModify @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to modify the activation form
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the activation form
        When User modifies the activation form
        Then Verify the activation form is modified successfully

    @platformui @users @USR050RegistrationWorkflowsModify @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to modify the edit profile form in platform site
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the edit profile form
        When User modifies the edit profile form
        Then Verify the edit profile form is modified successfully in platform site

    @adminui @users @USR050RegistrationWorkflowsModify @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to modify the edit profile by admin form
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed
        When User selects the edit profile by admin form
        When User modifies the edit profile by admin form
        Then Verify the edit profile by admin form is modified successfully

    @adminui @users @USR050RegistrationWorkflowsModify @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to modify the user upload by admin form
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User modifies the user upload workflow
        Then Verify the user upload workflow is modified successfully

    @adminui @users @USR051RegistrationWorkflowsCopy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to copy the registration workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User copies the registration workflow
        Then Verify the registration workflow is copied successfully

    @adminui @users @USR051RegistrationWorkflowsCopy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to copy the activation workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User copies the activation workflow
        Then Verify the activation workflow is copied successfully

    @adminui @users @USR051RegistrationWorkflowsCopy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to copy the edit profile workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User copies the edit profile workflow
        Then Verify the edit profile workflow is copied successfully

    @adminui @users @USR051RegistrationWorkflowsCopy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to copy the edit profile by admin workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User copies the edit profile by admin workflow
        Then Verify the edit profile by admin workflow is copied successfully

    @adminui @users @USR051RegistrationWorkflowsCopy @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to copy the user upload by admin workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder" submenu
        Then Verify the "Workflow Builder" page is displayed
        When User selects the user workflow
        When User copies the user upload by admin workflow
        Then Verify the user upload by admin workflow is copied successfully

    @adminui @users @USR052ChangeinUserMetadataAdd @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the new field cannot be created for metadata when there are existing users in the tabel
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to add a field to the tabel which has existing data
        Then User should not able to add the field

    @adminui @users @USR052ChangeinUserMetadataAdd @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the new field can be created for metadata there is a default value assigned to that field
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to add a field to the tabel which has default value assigned
        Then User should able to add the field

    @adminui @users @USR052ChangeinUserMetadataAdd @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the new field can be created for metadata when there is no default value assigned to that field
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to add a field to the tabel which has no default value assigned
        Then User should able to add the field

    @adminui @users @USR053ChangeinUserMetadataEdit @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the existing field cannot be edited for metadata when there are existing users in the tabel
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to edit a field to the tabel which has existing data
        Then User should not able to edit the field

    @adminui @users @USR053ChangeinUserMetadataEdit @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the existing field can be edited for metadata when the field is a unique field
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to edit a field to the tabel which is a unique field
        Then User should able to edit the field

    @adminui @users @USR053ChangeinUserMetadataEdit @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the existing field can be edited for metadata when the field is a non unique field
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to edit a field to the tabel which is a non unique field
        Then User should able to edit the field

    @adminui @users @USR054ChangeinUserMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin with metadata section when admin changes an encrypted field from non-mandatory to mandatory for an ongoing program where there is old data
        When User click on "Foundation Tools"
        When User click on the "Scehma Builder" submenu
        Then Verify the "Schema Builder" page is displayed
        When User selects the user table
        When User tries to change an encrypted field from non-mandatory to mandatory for an ongoing program where there is old data
        Then User should able to change the field

    @adminui @users @USR055RegistrationSource @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to view the registration source of a user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the registration source of the user

    @adminui @users @USR055RegistrationSource @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to view the registration source of a user as self registration
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the registration source of the user as self registration

    @adminui @users @USR055RegistrationSource @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to view the registration source of a user as file upload in admin
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the registration source of the user as file upload in admin

    @adminui @users @USR055RegistrationSource @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to view the registration source of a user as manually creating the user in admin
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the registration source of the user as manually creating the user in admin

    @adminui @users @USR057RegistrationAdditionalInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture other addition registration information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the additional registration information of the user

    @adminui @users @USR057RegistrationAdditionalInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture the browser information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the browser information of the user

    @adminui @users @USR057RegistrationAdditionalInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture the OS information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the OS information of the user

    @adminui @users @USR057RegistrationAdditionalInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture the device information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the device information of the user

    @adminui @users @USR057RegistrationAdditionalInformation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture the IP Address information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the IP Address information of the user

    @adminui @users @USR057RegistrationAdditionalInformation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to capture the Lat-Long information of the user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        Then User should able to see the Lat-Long information of the user

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to impersonate a user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        Then Verify the user cannot able to login to platform site

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to see the configured menu upon impersonation
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        When admin login with the impersonated user credentials
        Then Verify the admin can able to see the configured menu

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to redeem by impersonating a user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        When admin login with the impersonated user credentials
        When admin tries to redeem
        Then Verify the admin cannot able to redeem

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to view the profile by impersonating a user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        When admin login with the impersonated user credentials
        When admin tries to view the profile
        Then Verify the admin cannot able to view the profile

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to edit the profile by impersonating a user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        When admin login with the impersonated user credentials
        When admin tries to edit the profile
        Then Verify the admin cannot able to edit the profile

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to impersonate the inactive user
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the inactive user from the list
        When User tries to impersonate the inactive user
        Then Verify the admin cannot able to impersonate the inactive user

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to impersonate the user who is not activated
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user who is not activated from the list
        When User tries to impersonate the user who is not activated
        Then Verify the admin cannot able to impersonate the user who is not activated

    @adminui @users @USR058LoginImpersonateUser @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin cannot able to impersonate the user who is not approved
        When User is on the participants page
        Then Verify list of users should be displayed
        When User selects the user who is not approved from the list
        When User tries to impersonate the user who is not approved
        Then Verify the admin cannot able to impersonate the user who is not approved

    @adminui @users @USR059LoginValidationForSpaces @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the spaces should be trimmed for all the fields in the login form
        When User is on the participants page
        When User clicks on the login button
        When User enters the spaces with values in the fields
        Then Verify the spaces are trimmed for all the fields

    @adminui @users @USR059LoginValidationForSpaces @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the spaces should be trimmed for all the fields in the user form
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form with space before and after the value
        When User clicks on "Create User" button in user form
        Then "Success" message shown up
        Then Verify the spaces are trimmed for all the fields

    @platformui @users @USR059LoginValidationForSpaces @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the spaces should be trimmed for all the fields in the self registration form
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User selects the self registration button
        When User enters the spaces with values in the fields
        Then Verify the spaces are trimmed for all the fields

    @adminui @users @USR060LoginViaImpersonating @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login attempts should be logged for the admin
        When User launches platform application
        When User is on the platform site
        When User Admin user tries to login to platform site
        When User enters the valid credentials
        Then Verify the login attempts are logged for the admin

    @platformui @users @USR060LoginViaImpersonating @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login attempts should be logged for the platform user
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the login attempts are logged for the platform user

    @adminui @users @USR060LoginViaImpersonating @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login attempts should be logged for the admin when login via impersonation
        When User clicks on the users tab
        When User selects the user from the list
        When User impersonate the platform user
        Then Verify the platform user is impersonated
        When admin login with the impersonated user credentials
        Then Verify the login attempts are logged for the admin

    @adminui @users @USR060LoginViaImpersonating @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login method should be logged for the admin
        When User launches platform application
        When User is on the platform site
        When User Admin user tries to login to platform site
        When User enters the valid credentials
        Then Verify the login method is logged for the admin

    @platformui @users @USR061LoginSource @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login method should be logged for the platform user
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the login method is logged for the platform user

    @platformui @users @USR061LoginSource @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login method should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the login method is captured when participant logged in on platform portal

    @platformui @users @USR061LoginSource @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the login method should be captured when participant logged in on mobile app
        When User is on the mobile app
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the login method is captured when participant logged in on mobile app

    @platformui @users @USR061LoginAdditionalInformation @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the other information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the other information is captured when participant logged in on platform portal

    @platformui @users @USR061LoginAdditionalInformation @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the browser information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the browser information is captured when participant logged in on platform portal

    @platformui @users @USR061LoginAdditionalInformation @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the OS information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the OS information is captured when participant logged in on platform portal

    @platformui @users @USR061LoginAdditionalInformation @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the device information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the device information is captured when participant logged in on platform portal

    @platformui @users @USR061LoginAdditionalInformation @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the IP Address information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the IP Address information is captured when participant logged in on platform portal

    @platformui @users @USR061LoginAdditionalInformation @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Lat-Long information should be captured when participant logged in on platform portal
        When User launches platform application
        When User is on the platform site
        When User enters the appcode for the specific program
        Then User should able to see the login screen
        When User enters the valid credentials
        Then Verify the Lat-Long information is captured when participant logged in on platform portal


    @adminui @users @USR003ByAdmin @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify by adding user where user schema and form is updated with more than one param
        Given adds more than one param to user schema
        Given adds more than one param to user form
        When User click on "Users"
        When User click on the "Add User" button
        Then Verify the "Add User" form is displayed
        When User enters the valid user details
        When User clicks on the "Create User" button
        Then Verify the user is added successfully

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via self registration and completed the registration via activation code
        #Given admin site is configured with self registration form
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When user navigate to the "Self Registration" platform
        When user enters "valid" details in the self registration form
        When user clicks on the submit button in selfregistration
        Then "Successful" message shown up in platform
        When Quering the user for "self registration" from the table through query engine
        When Get the activation code and insert it to the valid data of "self registration"
        When user navigate to the "User Activation" platform
        When user enters the "self registration" username and "valid" activation code in platform
        When user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then Preview activation form is shown up
        When user completes the activation form
        When user enters the password and confirm password
        When user click on submit in password activation
        #Then "Successful" message shown up in platform
        When Platform user logout
        When Platform "self registration" user login
        Then Verify "home page" is displayed in platform
        When User Logout from the platform site

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via admin creation and completed the registration via activation code
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User clicks on Create User button in user form
        # Then "Successful" message shown up
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When Quering the user for "admin creation" from the table through query engine
        When Get the activation code and insert it to the valid data of "admin creation"
        When user navigate to the "User Activation" platform
        When user enters the "admin creation" username and "valid" activation code in platform
        When user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then Preview activation form is shown up
        When user completes the activation form
        When user enters the password and confirm password
        When user click on submit in password activation
        When Platform user logout
        When Platform "admin creation" user login
        Then Verify "home page" is displayed in platform
        When User Logout from the platform site

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via user upload and completed the registration via activation code
        When User enters all the mandatory columns in the csv file for "Users"
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When Quering the user for "user upload" from the table through query engine
        When Get the activation code and insert it to the valid data of "user upload"
        When user navigate to the "User Activation" platform
        When user enters the "user upload" username and "valid" activation code in platform
        When user click on submit in account activation
        #Then "Successful" message shown up in platform
        Then Preview activation form is shown up
        When user completes the activation form
        When user enters the password and confirm password
        When user click on submit in password activation
        When Platform user logout
        When Platform "user upload" user login
        Then Verify "home page" is displayed in platform
        When User Logout from the platform site



# What will happen if user is unlocked