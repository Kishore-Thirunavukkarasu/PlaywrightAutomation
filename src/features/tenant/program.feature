Feature: Program Management
    Includes Create a new program for a tenant
    Testing all possibility of creating and viewing a program for a tenant


    # created by  = Ruthrakkanth
    # reviewed by = Ruthrakkanth
    # updated by  = Ruthrakkanth
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/tenantid/program/programid/settings/programdetails/

    Background:
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create program in existing tenant
        When User creates a program for "existing" tenant
        When User enters all the mandatory information in program create page
        When User clicks on "Save" button in program create page
        Then "Successful" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a active tenant
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is created
        When Navigated to the Program Page
        Then Verify the program name is displayed

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a in-active tenant
        When Verify the Tenant is In-Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User clicks on the "Submit" button in program create page
        Then Verify the Program should not be created
        When "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for Setup pending tenant
        When Verify the Tenant is setup pending
        When User verifies whether the "New Program" button is present
        Then "New Program" button should not displayed
        When "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for Active tenant by skipping some mandatory fields
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User skips the mandatory fields - Contact, Settings and Data
        When User clicks on the Submit button
        Then Verify the Program should not be created
        When "Error" message shown up


    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a tenant and cancel the program creation
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters  mandatory fields - Contact, Settings and Data
        When User clicks on the "Cancel" button in program create page
        Then Verify the Program is not created

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a tenant without Program Name
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters  mandatory fields - Contact, Settings and Data
        When User clicks on the "Submit" button without Program Name
        Then Verify the Program is not created

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a tenant with Existing Program Name
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Existing Program Name
        When User enters the Domain, App code and other mandatory data
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload the Program Branding image with different size
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Branding details
        When User uploads the Program Branding image with different size
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uplaod Program branding image with different format
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Branding details
        When User uploads the Program Branding image with different format
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Choose the primary colour Background and Text Color and verify it
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Branding details
        When User selects the primary colour Background and Text Color
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is created
        When Navigated to the Program Page
        Then Verify the program name is displayed
        When Verify the primary colour Background and Text Color

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Choose the secondary colour Background and Text Colour and verify it
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Branding details
        When User selects the secondary colour Background and Text Colour
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is created
        When Navigated to the Program Page
        Then Verify the program name is displayed
        When Verify the secondary colour Background and Text Colour

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add multiple languages and verify they are added
        Then Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User selects the multiple languages
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is created

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete the languages
        Then Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User selects the multiple languages
        When User clicks on the "Delete" button in program create page
        Then Verify the languages are deleted

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add existing languages and verified they are not added
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User selects the existing languages
        When User clicks on the "Submit" button in program create page
        Then Verify the existing languages are not added

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Select the existing languages and verify they are removed
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User selects the existing languages
        When User clicks on the "Delete" button in program create page
        Then Verify the existing languages are removed

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Enable the FIFO Banking and verify it is enabled
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User clicks on the Points Expiry tab
        When User enables the FIFO Banking
        When User clicks on the "Submit" button in program create page
        Then Verify the FIFO Banking is enabled

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Show expiration date in point summary
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User clicks on the Points Expiry tab
        When User enables the Show expiration date in point summary
        When User clicks on the "Submit" button in program create page
        Then Verify the Show expiration date in point summary is enabled

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify expiration type can be set to never expire
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        Then Verify the New Program page is displayed
        When User clicks on the Points Expiry tab
        When User selects the expiration type
        When User clicks on the "Submit" button in program create page
        Then Verify the expiration type is set to never expire

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the expiry period value can be set
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User clicks on the Points Expiry tab
        When User enters the expiry period value
        When User clicks on the "Submit" button in program create page
        Then Verify the expiry period value is set

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program creation without logo
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User clicks on the "Submit" button in program create page
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program creation with invalid logo size
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User uploads the Program logo with invalid size
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program creation with invalid logo format
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User uploads the Program logo with invalid format
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program creation with duplicate appcode
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When user enters the existing app code
        When User enters all the other mandatory data
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program creation with duplicate domain
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When user enters the duplicate domain
        When User enters all the other mandatory data
        When User clicks on the "Submit" button in program create page
        Then Verify the Program is not created
        Then "Error" message shown up

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify click on cancel while creating the program
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters the Program Name, Domain, App code
        When User enters all the other mandatory data
        When User clicks on the "Cancel" button in program create page
        Then Verify the Program is not created

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the data present in any of the tabs in the Edit program flow
        When User clicks on the "Submit" button in Edit Program page
        Then Verify the program details got updated successfully.

    @adminui @tenant @ @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program & click on Cancel
        When Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the data present in any of the tabs in the Edit program flow
        When User clicks on the "Cancel" button in Edit Program page
        Then Verify the program details doesnt gets updated.

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program with invalid values
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the data present in any of the tabs with invalid values
        When User clicks on the "Submit" button in Edit Program page
        Then "Error" message shown up

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program with blank values
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the data by leaving some mandatory fields as blank
        When User clicks on the "Submit" button in Edit Program page
        Then "Error" message shown up

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify by removing the logo while updating the program
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User removes the logo
        When User clicks on the "Submit" button in Edit Program page
        Then "Error" message shown up

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify by updating the duplicate app code while updating the program
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updates the app code with the existing app code
        When User clicks on the "Submit" button in Edit Program page
        Then "Error" message shown up

    @adminui @tenant @TNT008ProgramStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program as Inactive
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the program status as Inactive
        When User clicks on the "Submit" button in Edit Program page
        Then Verify that the program status is set as Inactive.

    @adminui @tenant @TNT008ProgramStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the Inactive Program to Active
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the program status as Active
        When User clicks on the "Submit" button in Edit Program page
        Then Verify that the program status is set as Active.

    @adminui @tenant @TNT008ProgramStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the Program as Inactive/Active and click on Cancel
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User updated the program status as Inactive/Active
        When User clicks on the "Cancel" button in Edit Program page
        Then Verify that the program status remains default and its unchanged.



    @adminui @tenant @TNT009AddCountriesToProgram @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a tenant with country
        Then Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the New Program page is displayed
        When User enters the Program Name, Domain, App code & other mandatory fields
        When User clicks on the Country tab
        When User clicks on the Add Country button
        When User selects the Country
        Then Verify the selected country is displayed
        When User clicks on the "Submit" button in Create Program page
        Then Verify the Program is created
        When Navigated to the Program Page
        Then Verify the program name is displayed

    @adminui @tenant @TNT009AddCountriesToProgram @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Remove Country from the existing program in a tenant
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        When User clicks on the Country tab
        When User clicks on delete icon near the Country name
        When User clicks on the "Submit" button in Create Program page
        Then "Error" message shown up

    @adminui @tenant @TNT009AddCountriesToProgram @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add multiple Country to a existing program in a tenant
        Then Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program Setup"
        When User clicks on "Program settings" submenu
        When User clicks on "Edit Program"
        When User clicks on the Country tab
        When User clicks on Add Country button
        When User selects the Country
        Then Verify the selected country is displayed
        When User clicks on the "Submit" button in Create Program page
        Then Verify the program gets updated with the program information


    @adminui @tenant @TNT010ListThePrograms @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Choose a program from the list of programs
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "Hamburger menu"
        Then Verify the list of programs is displayed
        When User selects a program from the list
        Then Verify the selected program is displayed

    @adminui @tenant @TNT010ListThePrograms @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Click on Programs and verify the list of programs for Inactive tenant
        When Verify the Tenant is In-Active
        Then User is on the Tenant Page
        When User clicks on the "Hamburger button"
        Then Verify the list of programs is displayed


    @adminui @tenant @TNT010ListThePrograms @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create a new program for a tenant and switch between multiple programs
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "New Program"
        Then Verify the New Program page is displayed
        When User enters the mandatory fields
        When User clicks on the "Submit" button in Create Program page
        Then Verify the Program is created
        When Navigated back to the Program Page
        Then Verify the newly created program name is displayed
        When User clicks on the Programs button
        Then Verify the list of programs is displayed
        When User selects a program from the list
        Then Verify the selected program is displayed


    @adminui @tenant @TNT010ListThePrograms @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Click on Programs and user lands on the most recently updated program
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "Programs" button
        Then Verify the user gets landed on the Recently updated program

    @adminui @tenant @TNT010ListThePrograms @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Click on Programs and validate whether user is directed to anyother program which is not recently updated
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "Programs" button
        Then Verify whether the user gets landed on program which is not recently updated one

    @adminui @tenant @TNT010ListThePrograms @system @form @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: User doesnt have access to the recently updated program
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "Programs" button
        When User doesnt have access to the most recently updated program
        Then User should land on recently updated program for which the user has access

    @adminui @tenant @TNT010ListThePrograms @system @form @functional @negative @reviewed @tenantadmin @updated @notautomated
    Scenario: Validate the scenario whether user gets landed on the program for which he doesnt have access
        When Verify the Tenant is Active
        Then User is on the Tenant Page
        When User clicks on the "Programs" button
        When User doesnt have access to the any of the recently updated program
        Then Verify whether user gets landed on any program for which he doesnt have the access


    @adminui @tenant @TNT010ListThePrograms @system @form @functional @negative @reviewed @tenantadmin @updated @notautomated
    Scenario: Validate the scenario whether user doesnt have access to any of the programs
        When User is on the Tenant Page
        Then Verify the Tenant is Active
        When User clicks on the Programs button
        When User doesnt have access to any of the programs
        Then Error message should be thrown to the user that access is required

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether user is able to see the Reward setup in Program edit flow
        When Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        When Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        When User should be able to see the Reward Section


    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether user is able to add New Catalogue Reference
        When Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        When Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        When User clicks on Rewards setup
        Then User click on Add button
        When User enters valid input data for the mandatory fields in Add New Catalogue Reference screen
        When User click on Submit button
        Then Success message is shown

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether created catalogue reference are displayed under Rewards setup tab
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters all the other mandatory data and clicks on Rewards setup
        Then User click on Add button
        When User enters valid input data for the mandatory fields in Add New Catalogue Reference screen
        When User click on Submit button
        Then Success message is shown
        Then All the created Catalogue reference should be displayed under the rewards tab

    @adminui @tenant @TNT007UpdateProgram @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether user is able to edit the catalogue reference
        When Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        When Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        When Edit Program page is displayed
        When User clicks on Rewards tab and edit the data present under Catalogue reference
        Then Click on Submit button
        Then Success message is displayed and the changes should be saved.

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether Defaults section is present in Create Program page
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User should be able to find the Defaults section next to the Language section

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate the fields present in Defaults section
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User should be able to find the Defaults section next to the Language section
        Then User should be able to see the following fields: Default language, Default timezone, Default Currency
        Then All the above fields should be marked as mandatory

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether user is able to create program without Default section
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters data for all the mandatory fields, sections except Default section
        Then User clicks on Submit button
        Then Error should be thrown

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @negative @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate the scenario when user enters all the mandatory fields/sections and skips a field under Default section
        When Verify the Tenant is Active
        When User clicks on the "New Program" button from the tenant
        Then Verify the "Create Program" page is displayed
        When User enters data for all the mandatory fields and leaves a field in Default section
        Then User clicks on Submit button
        Then Error should be thrown

    @adminui @tenant @TNT006CreateProgramUnderTenant @system @form @functional @positive @reviewed @tenantadmin @notupdated @notautomated
    Scenario: Validate whether user is able to update Default section
        When Verify the Tenant is Active
        When User clicks on the "Programs" button from the tenant
        Then Verify the Program page is displayed
        When User clicks on "Program settings"
        When User clicks on "Edit Program"
        Then Edit Program page is displayed
        When User clicks on Default section
        When User makes some changes and clicks on Submit button
        Then Success message is displayed







