Feature: Static Audience Creation

       # created by  = Ruthrakkanth
       # reviewed by =
       # updated by  = Kisore Thirunavukkarasu
       # project url = https://qa.phoenix-np-in.channelsmart.net/{tenantid}/program/{programid}/users/groups/static/

       Background: Audience Page Navigation
              Given User launches admin application
              When "SuperAdmin" login to "Admin" application
              When Navigate to Tenant list page
              Then Tenant list page will be displayed with "All" tenant
              When Search the "existing" tenant
              When Choose the "existing" tenant
              When User clicks on the "Program" button from the tenant
              #When User selects the "Program1" from the program list
              Then Verify the user is on the program landing page
              When User click on "Partner Hub"
              When User click on the "Audience" submenu
              Then Verify the "Audience" page is displayed


       @adminui @audience @ADN001ViewAudiences @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Navigate to Audience page with no audience
              When User is on the Audience page
              Then Verify no audience group is displayed

       @adminui @audience @ADN001ViewAudiences @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Navigate to Audience page with audience
              When User is on the Audience page
              Then Verify the list of audience is displayed
              Then Verify the Number of audience list matches the total count

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Navigate to Audience page and search for audience with valid value
              When User is on the Audience page
              When User search for audience with valid value
              Then List of Audience should be displayed

       @adminui @audience @ADN002SearchAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Navigate to Audience page and search for audience with invalid value
              When User is on the Audience page
              When User search for audience with invalid value
              Then List of Audience should not be displayed

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Search for audience group with valid name
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with valid name
              Then Verify Audience group should be displayed

       @adminui @audience @ADN002SearchAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Search for audience group with invalid name
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with invalid name
              Then Verify Audience group should not be displayed

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Sorting audience by Group Name
              When User is on the Audience page
              Then Verify the list of "audience" is displayed
              When User click on sort button in "Group Name" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by "Group Name" in Ascending order
              When User click on sort button in "Group Name" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by "Group Name" in Descending order

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Sorting audience by Description
              When User is on the Audience page
              Then Verify the list of "audience" is displayed
              When User click on sort button in "Description" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by "Description" in Ascending order
              When User click on sort button in "Description" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by "Description" in Descending order

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Sorting audience by Type
              When User is on the Audience page
              Then Verify the list of "audience" is displayed
              When User click on sort button in "Type" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by Type in Ascending order
              When User click on sort button in "Type" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by Type in Descending order

       @adminui @audience @ADN002SearchAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Sorting audience by Status
              When User is on the Audience page
              Then Verify the list of "audience" is displayed
              When User click on sort button in "Status" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by Status in Ascending order
              When User click on sort button in "Status" column in "Audience" screen
              Then Verify the list of "audience" should be sorted by Status in Descending order

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Create a new static audience group
              When User is on the Audience page
              When User click on the 'Create New Group'
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              Then Add user manually badge should be displayed
              Then Upload csv badge should be displayed for static audience
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a "valid" user
              Then Verify the searched user is displayed in the list
              When Selects the user from the list
              When User click on Add Selected button
              Then Verify the selected user is displayed in the new static audience list
              When User click on "Submit" button
              Then "Successful" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
       Scenario: Create a new static audience group as <audienceGroup> with <user> users
              When User is on the Audience page
              When User click on the Create New Group
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When Enter the mandatory details for <audienceGroup> creation
              Then Add user manually badge should be displayed
              Then Upload csv badge should be displayed for static audience
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a <user> user
              When Selects the user from the list
              When User click on Add Selected button
              Then Verify the selected user is displayed in the new static audience list
              When User click on "Submit" button
              Then "Successful" message shown up
              Examples:
                     | audienceGroup  | user                   |
                     | Super Approval | self registration user |
                     | L1 Approval    | admin user             |
                     | L2 Approval    | uploaded user          |


       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Create a new static audience group without mandatory details
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User remove any mandatory details
              When User click on "Submit" button
              Then "Error" message shown up


       @adminui @audience @ADN002SearchAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Search for a deleted/inactive user in static audience group
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              Then Add user manually badge should be displayed
              Then Upload csv badge should be displayed for static audience
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a deleted/inactive user
              Then Verify the user is not getting displayed in the list

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario:  Verify the deleted/inactive user from the static audience group
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              Then Add user manually badge should be displayed
              Then Upload csv badge should be displayed for static audience
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a valid user in audience list
              Then Verify the searched user is displayed in the list
              When Selects the user from the list
              When User click on "Add Selected" button
              Then Verify the selected user is displayed in the new static audience list
              When User click on "Submit" button
              Then "Successful" message shown up
              Then Verify the new static audience group is displayed in the list
              Then Verify the audience group status as "Active"
              When User is made as inactive
              Then Verify the user is not displayed in the static audience list

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Verify the Cancel button functionality
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User click on "Cancel" button
              Then Verify the user is navigated back to the Audience page
              Then Verify the new static audience group is not created

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Edit a static audience group
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              Then Verify the Edit and Delete options are displayed
              When User click on "Edit" option
              Then Verify the Edit static audience group page is displayed
              When User edit the mandatory details for "Static Audience"
              When User click on "Submit" button
              Then "Successful" message shown up

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Add a new user to the Existing static audience group
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              Then Verify the Edit and Delete options are displayed
              When User click on "Edit" option
              Then Verify the Edit static audience group page is displayed
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a "valid" user
              Then Verify the searched user is displayed in the list
              When Selects the user from the list
              When User click on "Add Selected" button
              Then Verify the selected user is displayed in the new static audience list
              When User click on "Submit" button
              Then "Successful" message shown up

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Remove an user from the Existing static audience group
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              Then Verify the Edit and Delete options are displayed
              When User click on "Edit" option
              Then Verify the Edit static audience group page is displayed
              When User click on the elipsis button in user list
              Then Verify the Delete option is displayed
              When User click on "Delete" option
              Then Verify the user is removed from the static audience list
              When User click on "Submit" button
              Then "Successful" message shown up

       @adminui @audience @ADN018EditStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Delete a static audience group
              When User is on the Audience page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              Then Verify the Edit and Delete options are displayed
              When User click on "Delete" option
              Then Verify the Delete static audience group confirmation dialog is displayed
              When User click on "Confirm" button
              Then "Successful" message shown up
              Then Verify the static audience group is not displayed in the list

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Verify the user side panel with list of users
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              Then Verify the list of users is displayed with user details
              When User counts the number of users
              Then Verify the count of users in the audience side panel matches the user count

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
       Scenario: Verify the user side panel not contains the inactive users
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a deleted/inactive user
              Then Verify the user is not displayed in the list

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
       Scenario: Verify the user side panel search with valid user
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a valid user
              Then Verify the user has been displayed in the list


       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
       Scenario: Verify the user side panel search with invalid user
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then User is on the "Static :Create New Group" page from Audience
              When User enters the mandatory details for "Static Audience" creation
              When User click on Start from Add Users Manually
              Then Verify the side panel is displayed with search users, list of users
              When User search for a invalid user
              Then Verify the user has not been displayed in the list

       #Upload Method

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Download template csv file in static audience group
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User click on the "Download Template csv file"
              Then "Successful" message shown up
              Then verify the template file contains the valid column values for audience

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Upload a csv file to create a new static audience group with mandatory columns
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Successful" message shown up
              Then Verify the new static audience group is displayed in the list
              Then Verify the audience group status as "Active"

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload a csv file to create a new static audience group with missing columns
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with missing of mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
       Scenario: Verify a csv file to create a new static audience group with missing rows
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with missing of mandatory rows in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Error" message shown up
              Then Verify the invalid audience are not created

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Verify a csv file to create a new static audience group with missing fields value
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with missing of mandatory fields value in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Error" message shown up
              Then Verify the invalid audience are not created

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Verify a csv file to create a new static audience group with invalid data
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the invalid data in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Error" message shown up
              Then Verify the invalid audience are not created

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Verify a csv file to create a new static audience group with invalid datatype
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the invalid datatype in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on upload csv badge in static audience
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Error" message shown up
              Then Verify the invalid audience are not created

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Cancel upload csv file in static audience group
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the mandatory details for "Static Audience" creation
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When User click on "Cancel" button
              Then Verify the user is navigated back to the Audience page
              Then Verify the new static audience group is not created

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Drag and drop csv file to create a new static audience group
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User drag and drop the csv file for "Static Audience"
              Then Verify the file should be uploaded and displayed
              When User click on the "Submit" button
              Then "Successful" message shown up
              Then Verify the new static audience group is displayed in the list
              Then Verify the audience group status as "Active"

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload csv file in static audience group with invalid format
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file with invalid format for "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload csv file in static audience group with duplicate users
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file with duplicate users for "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload csv file in static audience group by selecting different template
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the different template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Delete the uploaded static audience csv file
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When User click on "Delete" button
              Then Verify the uploaded csv file is deleted

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload the static audience csv file with missing mandatory columns
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with missing of mandatory columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload the static audience csv file with additional columns
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with additional columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload the static audience csv file with deleted/inactive users
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with deleted/inactive users in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload the static audience csv file with change in file name
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with change in file name in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Upload the static audience csv file with values greater than the maximum length
              When User is on the Audience page
              When User click on the "Create New Group"
              Then Verify the "Static Audience" is displayed
              When User clicks on the "Static Audience"
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters the data with values greater than the maximum length in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience csv file by removing users
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with removing user record in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Successful" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience csv file by adding users
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with added user record in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Successful" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience csv file by adding deleted/inactive users
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with updated deleted/inactive user record in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience group by adding existing user
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with existing user record in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience group by invalid data
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with invalid data in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience group by invalid datatype
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with invalid datatype in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience group by missing columns
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with missing columns in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN017CreateStaticAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
       Scenario: Update the static audience group by missing fields
              When User is on the Audience page
              When User clicks on "Create New Group" button
              When User selects "Static" Audience
              Then Verify the "Static :Create New Group" create new group is displayed
              When User enters the mandatory details for "Static Audience" creation
              When User enters all the mandatory columns with missing fields in the csv file for "Static Audience"
              Then Upload csv badge should be displayed for static audience
              When User click on "upload csv badge"
              When User Choose the template for the "Static Audience" csv file
              When Upload the csv file "Static Audience"
              Then "Error" message shown up

       @adminui @audience @ADN019DownloadStaticAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: Download Static Audience Group
              When User is on the Audience Page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              When User click on "Download" option
              Then "Successful" message shown up
              Then Verify the static audience group file is downloaded

       @adminui @audience @ADN001ViewAudiences @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
       Scenario: View Audience Group
              When User is on the Audience Page
              Then Verify the list of audience is displayed
              When User search for a audience group with "audience name"
              Then Verify the audience group is displayed in the list
              When User click on the elipsis button in audience group
              When User click on "View" option
              Then Verify the static audience group details are displayed









