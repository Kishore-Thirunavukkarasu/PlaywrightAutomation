Feature: User Approval Flow


    # created by  = Ruthrakkanth
    # reviewed by = Kadarkarai
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

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user with access can access user approval page
        When User lands on the Approval settings page
        Then User should be able to see the Approval settings page

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user without access cannot access user approval page
        Given User launches admin application
        When "nonaccessuser" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participant approvals" submenu
        Then Verify the "Approval settings" is not displayed
        When User lands on the Approval settings page
        Then User should not be able to see the Approval settings page

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user approval settings page when clicked on Edit
        When User lands on the Approval settings page
        When User clicks on the "Edit" in approval settings
        Then User should be able to see the Enable toggle button defaulted to Off state
        Then User should be able to see two drops downs : Default Approved Status and Activated status

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can able to enable the approval settings page
        When User lands on the Approval settings page
        When User clicks on the "Edit" in approval settings
        Then User should be able to see the Enable toggle button
        When user click on the Enable button
        Then User should be able to enable the approval settings
        Then approval settings page should be visible to the user

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the fields when the user approval is enabled
        When User lands on the Approval settings page
        When User clicks on the "Edit" in approval settings
        Then Default approved status and Activated status drop down should be displayed
        When User clicks on Enable button
        Then Additional fields such as Job Roles, Initial Registration Status, Level 1, Level2, Super Approver, Approver Notification, Approver Result Notification, Remind after fields should be displayed

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the options displayed in JobRoles dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User should see all the Values that are created in the Job Roles screen getting populated with the dropdown

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the job role value with inactive job role
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User should see all the job role values
        When User inactivates the job role
        Then User should not see the inactive job role in the dropdown

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user can add one jobrole in JobRoles dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User should be able to add one jobrole in the Job Roles screen

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add multiple jobRoles in JobRoles dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User can add multiple jobroles in the Job Roles screen

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user cannot add the same jobRole multiple times in JobRoles dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User should not be able to add the jobrole that is already selected.

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify by adding and removing the job roles in the job role dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the JobRoles dropdown
        Then User should be able to add the job roles
        When User removes the job roles
        Then User should be able to remove the job roles

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether only the users whose job roles are added in Approval settings are taken through the Approvalflow
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        Then Only the users whose job roles are selected will go through the Approval flow

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify users job role tries to register and approval settings contains that job role
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        Then Only the users whose job roles are selected will go through the Approval flow
        Then Users with other job roles should not go through the Approval flow

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify users with multiple job role tries to register and approval settings contains one of the job role
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        Then Only the users whose job roles are selected will go through the Approval flow
        Then Users with multiple job roles tries to register and approval settings contains one of the job role
        Then User should go through the Approval flow

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when approval is not enabled
        When User lands on the Approval settings page
        When Enable button is set to Off
        Then Participant registration status will be set to the value provided in Default Approved Status field
        Then The Participants will get login details with which they can login and activate the account

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all created hierarchies are displayed in the Hierarchy dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the Hierarchy dropdown
        Then User should see all the Hierarchies that are created in the Hierarchy screen

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the levels are showing as per selected hierarchy dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Hierarchy name from the dropdown
        Then User should see the Levels that are created under the selected hierarchy

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the hierarchy nodes are displayed as per selected hierarchy and level dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Hierarchy name, Level from the dropdown
        Then User should see the Nodes that are created under the selected hierarchy and level

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to select particular hierarchy, Level and node for approval flow
        When User lands on the Approval settings page
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add more than one hierarchy, level and node for approval flow
        When User lands on the Approval settings page
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can delete one hierarchy in the approval configuration
        When User lands on the Approval settings page
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully
        When User deletes the hierarchy
        Then User should be able to delete the hierarchy

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add more than one hierarchy node in a single hierarchy in approval configuration
        When User lands on the Approval settings page
        When User selects Hierarchy name, level and Node from the dropdown
        When user selects more than one node in the hierarchy node dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully
        When User adds more than one node in the hierarchy
        Then User should be able to add more than one node in the hierarchy

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user tries to register with a hierarchy where that hierarchy is configured in approval flow
        When User lands on the Approval settings page
        When user enables the approval settings
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully
        When User tries to register with the hierarchy that is added in the Approval settings page
        Then User should go through the Approval flow

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user tries to register with a hierarchy where that hierarchy is not configured in approval flow
        When User lands on the Approval settings page
        When user enables the approval settings
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully
        When User tries to register with the hierarchy that is not added in the Approval settings page
        Then User should not go through the Approval flow

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user tries to register with a hierarchy where that hierarchy is one of the configured hierarchy in the approval flow
        When User lands on the Approval settings page
        When user enables the approval settings
        When User selects Hierarchy name, level and Node from the dropdown
        When User enters all the other mandatory information
        When User click on Submit
        Then User should be able to submit it Successfully
        When User tries to register with the hierarchy that is one of the configured hierarchy in the Approval settings page
        Then User should go through the Approval flow

    # @adminui @userapproval @USA005ApprovalTypeAudience @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user can configure approval for specific dynamic audience
    #     When User lands on the Approval settings page
    #     When User selects the dynamic audience group from Hierarchy
    #     When User enters all the other mandatory information
    #     When User click on Submit
    #     Then Registration request from the particular audience group will require approval
    #     Then Rest will be processed immediately

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify  for the user registered who is configured with approval default status
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        Then User should be able to see the Approval settings page
        When User tries to register
        Then User should be able to register Successfully
        Then User status should be the pre approval default status

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when approval settings are configured and when user tries to register which will not be going to approval status
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        Then User should be able to see the Approval settings page
        When User tries to register
        Then User should be able to register Successfully
        Then User should not contain the pre approval default status

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding level 1 approval
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        When User clicks on Level 1
        Then User should be able to add Level 1 approval

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding Level 2 Approval
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        When User clicks on Level 2
        Then User should be able to add Level 2 approval

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify removing level 1 approval
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        When User clicks on Level 1
        Then User should be able to remove Level 1 approval

    @adminui @userapproval @USA001ProgramAccess @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify removing Level 2 approval
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles - multiple select
        When User clicks on Level 2
        Then User should be able to remove Level 2 approval

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify approval type field under Level 1 and Level 2
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown
        Then Drop down should consists of two options - Open Approval and Hierarchical Approval

    @adminui @userapproval @USA005ApprovalTypeAudience @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when Open approval type is selected for Level 1
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on Level 1
        Then User selects Open Approval option
        Then All users belonging to specific audience group will be able to approve claims irrespective of the Hierarchichical boundary

    @adminui @userapproval @USA005ApprovalTypeAudience @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when Open approval type is selected for Level 2
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on Level 2
        Then User selects Open Approval option
        Then All users belonging to specific audience group will be able to approve claims irrespective of the Hierarchichical boundary

    @adminui @userapproval @USA005ApprovalTypeAudience @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user selects the open approval type
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown
        Then User selects Open Approval
        Then approver audience should be displayed
        Then rejection and approval status should be displayed
        Then auto approval days should be displayed

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers and approved by approver audience
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown
        Then User selects Open Approval
        Then approver audience should be displayed
        When User registers with the job role for approval configuration
        When User should be approved by the approver audience
        Then user status should be updated as per the approval status

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers and rejected by approver audience
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown
        Then User selects Open Approval
        Then approver audience should be displayed
        When User registers with the job role for approval configuration
        When User should be rejected by the approver audience
        Then user status should be updated as per the rejection status

    @adminui @userapproval @USA005ApprovalTypeAudience @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers with open approval type
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When user click on add level 1
        When User click on the Approval type drop dropdown
        Then User selects Open Approval
        Then approver audience should be displayed

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers with open approval type have the approver approved
        When User lands on the Approval settings page
        Then Verify the approval settings in enabled
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When user navigate to the "Self Registration" platform
        When user enters "Approved user" details in the self registration form
        When user clicks on the submit button in selfregistration
        Then "Successful" message shown up in platform
        When User navigates to login screen in platform site
        When "L1 Approver" login with valid credentials in platform site
        Then Verify the "UserApproval" menu is displayed in platform site
        When Approver click on the "UserApproval" menu from menu tab
        Then Verify the pending approval user list
        When "L1 Approver" "approves" the user
        When "L1 Approver" logs out from platform site
        # When User enters the valid appcode for the specific program
        When "L2 Approver" login with valid credentials in platform site
        Then Verify the "UserApproval" menu is displayed in platform site
        When Approver click on the "UserApproval" menu from menu tab
        Then Verify the pending approval user list
        When "L2 Approver" "approves" the user
        When "L2 Approver" logs out from platform site
        When Quering the user for "Approval user" from the table through query engine
        When Get the activation code and insert it to the valid data of "Approval user"
        # When User enters the valid appcode for the specific program
        When User Click on Account Activation Button
        When User enters the "Approval" username and activation code in platform
        When user click on submit in account activation
        Then Preview activation form is shown up
        When "Approver" user completes the activation form
        When user enters the password and confirm password
        When user click on submit in password activation
        #Then "Successful" message shown up in platform
        When User Logout from the platform site

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers with open approval type have the approver rejected
        When User lands on the Approval settings page
        Then Verify the approval settings in enabled
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When user navigate to the "Self Registration" platform
        When user enters "Reject user" details in the self registration form
        When user clicks on the submit button in selfregistration
        Then "Successful" message shown up in platform
        When User navigates to login screen in platform site
        When "L1 Approver" login with valid credentials in platform site
        Then Verify the "UserApproval" menu is displayed in platform site
        When Approver click on the "UserApproval" menu from menu tab
        Then Verify the pending approval user list
        When "L1 Approver" "rejects" the user
        When "L1 Approver" logs out from platform site
        When Quering the user for "Reject user" from the table through query engine
        Then Verify the quried data should not have activation code

    @adminui @userapproval @USA007SuperApprover @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 is not approved
        When User lands on the Approval settings page
        Then Verify the approval settings in enabled
        When User launches platform application
        When User enters the valid appcode for the specific program
        Then User should able to see the login screen
        When user navigate to the "Self Registration" platform
        When user enters "SuperApproval user" details in the self registration form
        When user clicks on the submit button in selfregistration
        Then "Successful" message shown up in platform
        When User navigates to login screen in platform site
        When "Super Approver" login with valid credentials in platform site
        Then Verify the "UserApproval" menu is displayed in platform site
        When Approver click on the "UserApproval" menu from menu tab
        Then Verify the pending approval user list
        When "Super Approver" "approves" the user
        When "Super Approver" logs out from platform site
        When Quering the user for "SuperApproval user" from the table through query engine
        When Get the activation code and insert it to the valid data of "SuperApproval user"
        # When User enters the valid appcode for the specific program
        When User Click on Account Activation Button
        When User enters the "SuperApproval" username and activation code in platform
        When user click on submit in account activation
        Then Preview activation form is shown up
        When "SuperApprover" user completes the activation form
        When user enters the password and confirm password
        When user click on submit in password activation
        #Then "Successful" message shown up in platform
        When User Logout from the platform site

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers when hierarchy approval is configured and job role is specified.
        When user lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Hierarchy name, level and Node from the dropdown
        When User selects the Job Roles - multiple select
        When User registers Successfully
        Then approval should be went to the users who have the job role
        When User approves the request
        Then User status should be updated as per the approval status

    @adminui @userapproval @USA005ApprovalTypeAudience @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user registers when hierarchy approval is configured and job role is specified with approval
        When user lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Hierarchy name, level and Node from the dropdown
        When User selects the Job Roles - multiple select
        When User registers Successfully
        Then approval should be went to the users who have the job role
        When User rejects the request
        Then User status should be updated as per the rejection status

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether Hierarchy field shows up when user selects Hierarchical approval type
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on any Level 1 / Level 2
        Then User selects Hierarchical Approval
        Then Hierarchy field should show up

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the values that are displayed in the Hierarchy dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on any Level 1 / Level 2
        Then User selects Hierarchical Approval
        Then Hierarchy field should show up.
        Then Hierarchy drop down should contain only the Root Hierarchy i.e Level 0 node

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether Hierarchy field doesnt show up when user selects Open approval under Level 1
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on Level 1
        Then User selects Open Approval
        Then Hierarchy field should not show up

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether Hierarchy field doesnt show up when user selects Open approval under Level 2
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown on Level 2
        Then User selects Open Approval
        Then Hierarchy field should not show up

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when Hierarchical approval type is selected for Level 1 / Level 2
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on the Approval type drop dropdown
        Then User selects Hierarchical Approval
        Then User belonging to the hierarchical boundary of requestors organization can only approve the claim

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the L1 approver when L2 approver is present
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User has configured L1 approver
        Then User has configured L2 approver
        When User deletes the L1 approver
        Then User should be thrown with error
        Then Verify the L1 approver cannot be deleted when L2approver is present

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the L2 approver
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User has configured L1 approver
        Then User has configured L2 approvergfndh
        When User deletes the L2 approver
        Then User should be allowed to delete the L2 approver

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify L1 Approval can be added
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User should be able to set the Approval settings
        When User click on Level 1 button
        Then User should be able to configure Approval type, Approval Audience, User status when approved, User status when Rejected & Auto approval days for L1

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify L2 Approval can be added
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User should be able to set the Approval settings
        When User click on Level 2 button
        Then User should be able to configure Approval type, Approval Audience, User status when approved, User status when Rejected & Auto approval days for L2

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add Level 1 & Level 2 approval
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User clicks on Level 1 and configure the fields present under Level 1
        When User clicks on Level 2 and configure the fields present under Level 2
        Then User click on Submit button
        Then User should be able to add Level 1 & Level 2 Approval.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can configure 2 levels of approval where each level can be based on Job Role
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User clicks on Level 1
        When User configures the fields under Level 1 for Hierarchical Approval based on Job role
        When User  clicks on Level 2
        When User configures the fields under Level 2 for Hierarchical Approval based on Job role
        Then User click on Submit button
        Then User should be able to add Level 1 & Level 2 Approval based on Job Role.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can configure 2 levels of approval where each level can be based on Audience
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User clicks on Level 1
        When User configures the fields under Level 1 for Open Approval based on Audience
        When User clicks on Level 2
        When User configures the fields under Level 2 for Open Approval based on Audience
        Then User click on Submit button
        Then User should be able to add Level 1 & Level 2 Approval based on Audience.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can configure 2 levels of approval where each level can be based on Audience and JobRole
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on Level 1
        When User configures the fields under Level 1 for Open Approval based on Audience
        When User clicks on Level 2
        When User configures the fields under Level 2 for Hierarchical Approval based on Audience
        Then User click on Submit buttonn
        Then User should be able to add Level 1 & Level 2 Approval based on Audience and JobRole.

    @adminui @userapproval @USA006ApprovalLevel @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Auto Approval scenario for Level 1
        When User lands on the Approval settings page
        When User has set 4 as a value in Auto Approval days field for Level 1
        When L1 approver has not approved the User registration reqest
        When The User request has been pending for more than 4 days
        Then User request should be automatically approved and will be set to the value defined in 'User status when Approved' field under Level 1

    @adminui @userapproval @USA006ApprovalLevel @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Auto Approval scenario for Level 2
        When User lands on the Approval settings page
        When User has set 4 as a value in Auto Approval days field for Level 1
        When L1 approver has not approved the User registration reqest
        When The User request has been pending for more than 4 days
        Then User request should be automatically approved and will be set to the value defined in 'User status when Approved' field under Level 1

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when L1 is auto approval and L2 is present, verify the registration status is changed to waiting for L2 approval
        When User lands on the Approval settings page
        When User sets the Enable button to ON
        Then User selects the input for Job Roles, Initial Registration status
        When User configures level 1 with Auto approval days as 5
        When User selects Approver audience group in Level 2
        Then After 5 days, the Registration request should be auto-approved for Level 1 and moved to the next Approval Level L2

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the same user can be mapped for L1 and L2 approval
        When User lands on the Approval settings page
        When User is a part of L1 and L2 approval audience group
        Then User can be allowed to approve/reject L1,L2 queues.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user mapped for both L1 and L2 approval, gets same request twice
        When User lands on the Approval settings page
        When User is a part of L1 and L2 approval audience group
        Then L1 and L2 approval queue should be distinct
        Then User should be able to see the same request twice - one in each respective queue listed in 'My Approval- Registrations' page

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when L1 is auto approval and L2 is not present, verify the assignee status is changed to approved
        When User lands on the Approval settings page
        When User sets the Enable button to ON
        Then User selects the input for Job Roles, Initial Registration status
        When User configures only - level 1 with Auto approval days as 5
        Then After 5 days, the Registration request should be auto-approved and the status should be changed to Approved

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether Super approver can approve the request which is auto-approved on L1 and waiting for L2
        When User lands on the Approval settings page
        When User sets the Enable button to ON
        Then User selects the input for Job Roles, Initial Registration status
        When User configures level 1 with Auto approval days as 5
        When User selects Approver audience group in Level 2
        Then After 5 days, the Registration request should be auto-approved
        Then Status should be changed to waiting for L2
        Then Super approver can approve the claim and status should be changed as Approved.

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L2 is not approved
        When User lands on the Approval settings page
        When There is a pending registration request awaiting L2 approval
        When L2 approvers have not yet approved the request
        Then Super approver approves the registration request
        Then the status of the claim should be changed to approved

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 and L2 are rejected
        When User lands on the Approval settings page
        When L1 approvers have rejected registration request
        When L2 approvers have rejected registration request
        Then Super tries to approves the registration request
        Then Super Approver should be able to approve the request rejected by L1 and L2

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can reject the user request when L1 and L2 are approved
        When User lands on the Approval settings page
        When User claim has surpassed L1 approval
        When User claim has surpassed L2 approval
        Then Verify Super approver can reject the claim
        Then Super Approver will not be able to reject the claim approved by L1 and L2

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the status in Initial Registration Status dropdown
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User clicks on the Initial Registration status drop dropdown
        Then User should see all the Values that are created in the Status screen

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Rejection status and Approval status cannot be same
        When User lands on the Approval settings page
        When User configures the Level 1 and Level 2 approval levels
        Then User cannot assign same value for User Status when approved & User Status when Rejected fields.

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Initial Registration status, Default approved status, Approval status & Rejection status cannot be same
        When User lands on the Approval settings page
        When User configures the Level 1 and Level 2 approval levels
        Then User cannot assign same value for Initial Registration status, Default approved status, Approval status & Rejection status

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the status of the users whose job roles are not added in Approval settings page
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User unselects certain Job Roles
        Then User whose job roles are removed, will be set to the value set in Default approved Status field

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the initial status of the users whose job roles are added in Approval settings
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects certain Job Roles under Job Roles dropdown
        Then User tries to register through the Registration link
        Then the Initial status of the users whose job roles are added in JobRoles dropdown should be set to the value mapped in Initial Registration Status field
        Then User whose job roles are removed, will be set to the default value set in Default approved Status field

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add Level 1 approval alone
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User clicks on Level 1
        When User configure the fields present under Level 1
        Then User click on Submit button
        Then User should be able to add Level 1 Approval alone

    # @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user can add Level 2 approval alone
    #     When User lands on the Approval settings page
    #     When User turn on the Enable toggle
    #     Then User sets the JobRoles and Initial Registration status
    #     When User clicks on Level 2
    #     When User configure the fields present under Level 2
    #     Then User click on Submit button
    #     Then User should not be able to add Level 2 Approval alone

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can assign specific user statuses for Level 1 approval and rejection
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User should clicks on Level 1 and configure the fields
        Then User should be able to select specific status for Level1 Approval
        Then User should be able to select specific status for Level1 Rejection,

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can assign specific user statuses for Level 2 approval and rejection
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User should clicks on Level 2 and configure the fields
        Then User should be able to select specific status for Level2 Approval
        Then User should be able to select specific status for Level2 Rejection


    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can add Super Approver without adding Level 1 & Level 2 approver
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        Then User sets the JobRoles and Initial Registration status
        When User click on Super Approver dropdown and Selects the approver
        Then User click on Submit button
        Then User should be able to add Super Approver without selecting L1 and L2 approver


    @adminui @userapproval @USA008UserStatuses @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to select the same value for User status for Approval and Rejection fields
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User click on Level 1
        Then User sets the value for 'User status when Approved' field
        Then User sets the same value for 'User status when Rejected' field
        Then User should not be allowed to select the same status for both the fields


    @adminui @userapproval @USA010ApprovalPage @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether 'My approval-Registrations' page is displayed for the eligible users in web application
        When User lands on the Approval settings page
        When User is in Audience group which is a part of L1 and L2 approver group
        Then User should be able to see the 'My approval-Registrations' page in Web application


    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the registration approval settings
        When User lands on the Approval settings page
        When User click on Edit
        When User makes few changes with the approval settings page
        Then User click on Submit button
        Then Success message is displayed

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where admin sets the Level 1, Level 2 approver along with Super approver in Approval settings page
        When User lands on the Approval settings page
        When User click on Edit
        When User selects Default Approved Status, Activated Status, Job Roles, Initial Registratin status
        When User clicks on Level 1
        Then User configures the fields in it
        When User clicks on Level 2
        Then User configures the fields in it
        When User Selects the Super Approver and enables the notification settings
        Then User click on Submit button
        Then User should be able to create the approver configuration Successfully.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin is able to set Level 1 along with Super approver in Approval settings page
        When User lands on the Approval settings page
        When User click on Edit
        When User selects Default Approved Status, Activated Status, Job Roles, Initial Registratin status
        When User clicks on Level 1
        Then User configures the fields in it
        When User Selects the Super Approver and enables the notification settings
        Then User click on Submit button
        Then User should be able to create the approver configuration Successfully.

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where admin sets the Level 1, Level 2 approver along with Super approver & navigates to another page
        When User click on Edit
        When User selects Default Approved Status, Activated Status, Job Roles, Initial Registratin status
        When User clicks on Level 1
        Then User configures the fields in it
        When User clicks on Level 2
        Then User configures the fields in it
        When User Selects the Super Approver and enables the notification settings
        Then User navigates to another page
        Then Registration approval settings should not be configured

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the status of the Registration request which is auto-approved on Level 1

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the status of the Registration request which is auto-approved on Level 2

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the registration request can be approved by L1 and rejected by L2 approver

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the registration request can be rejected by L1 and approved by L2 approver

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomatedautomated
    Scenario: Verify notification is trigged when approved in L1

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is trigged when rejected in L1

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is trigged when approved in L2

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is trigged when rejected in L2

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is triggered when L1 is auto approved

    @adminui @userapproval @USA006ApprovalLevel @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is triggered when L2 is auto approved

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 and L2 are pending to approve

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 is approved and L2 approval is pending

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 is auto approved and L2 approval is pending

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can approve the registration request when L1 is auto approved and L2 is rejected

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can reject the registration request when L1 is approved and L2 is pending

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can reject the registration request when L1 is auto approved and L2 is pending

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super approver can reject the registration request when both L1 and L2 are pending to approve

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is triggered when super approver approves the request

    @adminui @userapproval @USA007SuperApprover @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification is triggered when super approver rejects the request

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super admin rejection after L2 is rejected

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super admin approval after L2 is rejected

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super admin rejection after L2 is approved

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify super admin approval after L2 is approved

    @adminui @userapproval @USA008UserStatuses @integration @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is registered for approval configuration and before user is approved, user status is made as inactive
        When User lands on the Approval settings page
        When User turn on the Enable toggle
        When User selects the Job Roles in approval settings
        When user click on save button in approval settings
        When user tries to register in the job role configured for approval settings
        When Admin user updates the user status as inactive
        Then User status should not change after auto approval days

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is of Open Approval type and L2 is of Hierarchical Approval type
        When User lands on the Approval settings page
        When Approval type of Level 1 is set to Open
        Then All Audience group members can do first level of approval
        When Approval type of Level 2 is set to Hierarchical
        Then The claim will be routed to user associated with respective organization hierarchal boundary and specified job role

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is of Open Approval type and L2 is of Hierarchical Approval type

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is of Hierarchical approval and L2 is of Open Approval type


    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is configured for Hierarcical type with Auto Approval & L2 is of Open Approval type

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is configured for Hierarcical Approval & L2 is of Open Approval with Auto Approval

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where both L1 & L2 is configured for Auto Approval

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is configured for Hierarchical Approval with Auto Approval & L2 is configured for Hierarchical approval with Auto Approval

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where L1 is configured for Open Approval with Auto Approval & L2 is configured for Open approval with Auto Approval

    @adminui @userapproval @USA004ApprovalTypeHierarchyJobRole @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether login credentials are sent for the approved users

    @adminui @userapproval @USA008UserStatuses @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin configured the valid recurrence pattern in approval settings

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can enable the notification settings for user approval

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin can disable the notification settings for user rejection

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can set the recurrence pattern for the notification settings

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary contains the count of pending approvals in L1
        When Pending approvals are present in L1
        Then pending approval count should be sent to the L1 approver

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary contains the count of pending approvals in L2
        When Pending approvals are present in L2
        Then pending approval count should be sent to the L2 approver

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary contains the count of pending approvals where L1 is auto approved
        When L1 is auto approved and L2 is pending
        Then L1 auto approved count should be removed from the L1Summary
        Then L2 pending count should be added to the summary L2Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary contains the count of pending approvals where L2 is auto approved
        When L1 is approved and L2 is auto approved
        Then L2 auto approved count should be removed from the L2Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary contains the count of pending approvals where L1 is auto approved and L2 is auto approved
        When L1 is auto approved and L2 is auto approved
        Then L1 auto approved count should be removed from the L1Summary
        Then L2 auto approved count should be removed from the L2Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary where L1 approval is approved by super admin
        When L1 is approved by super admin
        Then L1 pending count should be removed from the L1Summary
        Then L2 pending count should be added to the L2Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary where L2 approval is approved by super admin
        When L2 is approved by super admin
        Then L2 pending count should be removed from the L2Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary where L1 approval is rejected by super admin
        When L1 is rejected by super admin
        Then L1 pending count should be removed from the L1Summary

    @adminui @userapproval @USA011ApprovalNotification @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify notification summary where L2 approval is rejected by super admin
        When L2 is rejected by super admin
        Then L2 pending count should be removed from the L2Summary


    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to enter the appcode and navigate to the login page

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Register user button is displayed in the login page when admin enables signup method in Phoenix admin

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to register in the login page

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to login with the registered credentials

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user activation code is being sent to the registered email id/Mobile when user registers through Mobile application

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user registered through mobile application is reflected in Participants users in the Admin site

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Activation option is not shown to the user without configuring it in the Admin site

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to activate the account using the activation code sent to the registered email id/Mobile

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to activate the account using the activation code sent to the registered email id/Mobile

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to approve the registration request in mobile application

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to reject the registration request in mobile application

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether 'My approval-Registrations' page is displayed for user who is not eligible
        When User lands on the Approval settings page
        When User does not belong to the Audience group which is a part of L1 and L2 approver group
        Then User should not see the 'My approval-Registrations' page in Web/Mobile application

    @mobile @userapproval @USA010ApprovalPage @integration @achievo @functional @npositive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the Registration approvers is able to see My Approvals- Registration page in mobile application
        When User lands on the Approval settings page
        When User is in Audience group which is a part of L1 and L2 approver group
        Then User should be able to see the 'My approval-Registrations' page in Mobile application