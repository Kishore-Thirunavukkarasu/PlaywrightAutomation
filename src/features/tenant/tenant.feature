Feature: Tenant Management
    # It includes create, edit, list, delete, and search tenant

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Kadarkarai Selvam
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/tenant/

    Background:
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
    # Given Navigate to Tenant list page.

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @notupdated @automated
    Scenario: Validate whether user is able to login with SSO
        When Navigate to Tenant list page
        When User clicks on Click Here option available below the Sign in button
        Then User should be able to login to the application successfully

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @smoke @reviewed @superadmin @updated @automated
    Scenario: Create tenant
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @positive @reviewed @notautomated @updated @notautomated
    Scenario: Create, Retrieve, Edit and View tenant
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant
        When Navigate to Tenant list page
        When User search the "valid" tenant
        Then Verify Tenant is displayed in the list
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User updates the mandatory field in tenant edit page
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant status as "Setup Pending"
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User removes the Tenant Name
        When User clicks on the "Save" button in tenant create page
        Then Verify the tenant status is "Setup Pending"

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant status as "Active"
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "Save" button in tenant create page
        Then Verify the tenant status is "Active"

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant status as "Inactive"
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "Save" button in tenant create page
        When User click on the edit button from the tenant
        When User change the status of the tenant to "Inactive"
        When User clicks on the "Save" button in tenant edit page
        Then Verify the tenant status is "Inactive"

    @adminui @tenant @TNT003ListTenants @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant list in badge view
        When Navigate to Tenant list page
        When User clicks on the badge view
        Then Verify the tenant list is displayed in badge view

    @adminui @tenant @TNT003ListTenants @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant list in list view
        When Navigate to Tenant list page
        When User clicks on the list view
        Then Verify the tenant list is displayed in list view

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by filtering with status "Setup Pending"
        When Navigate to Tenant list page
        When User clicks on the status dropdown
        When Select the status "Setup Pending"
        Then Verify the tenant list is displayed with status "Setup Pending"

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by filtering with status "All"
        When Navigate to Tenant list page
        When User clicks on the status dropdown
        When Select the status "All"
        Then Verify the tenant list is displayed with status "All"

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by filtering with status "Active"
        When Navigate to Tenant list page
        When User clicks on the status dropdown
        When Select the status "Active"
        Then Verify the tenant list is displayed with status "Active"

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by filtering with status "Inactive"
        When Navigate to Tenant list page
        When User clicks on the status dropdown
        When Select the status "Inactive"
        Then Verify the tenant list is displayed with status "Inactive"

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by searching with valid tenant name and verify it is displayed
        When Navigate to Tenant list page
        When User search the "valid" tenant
        Then Verify Tenant is displayed in the list

    @adminui @tenant @TNT003ListTenants @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by searching with invalid tenant name and verify it is not displayed
        When Navigate to Tenant list page
        When Search the invalid tenant
        Then Verify Tenant is not displayed in the list

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list by searching with values and filtering with status
        When Navigate to Tenant list page
        When User search the "valid" tenant
        Then Verify the tenant list is displayed with the search value
        When User clicks on the status dropdown
        Then Select the status from the dropdown
        Then Verify the tenant status is displayed

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant list should show 16 tenant
        When Navigate to Tenant list page
        Then Verify the tenant list is displayed with 16 tenants

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify scrolling to the tenant list shows more than 1
        When Navigate to Tenant list page
        When Scroll in the Tenant list page
        Then Verify the list contains more than 16 tenants

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant badge contains tenant value
        When Navigate to Tenant list page
        When Verify any status tenant single badge
        Then Verify the tenant badge contains tenant Name
        Then Verify the tenant badge contains tenant Status
        Then Veriyf the tenant badge contains tenant image

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant badge contains the three dots menu for setup pending tenant
        When Navigate to Tenant list page
        When Verify setup pending tenant single badge
        When user clicks on the three dots menu
        Then Verify the tenant badge menu contains "Edit" option

    @adminui @tenant @TNT003ListTenants @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant badge contains the three dots menu for active tenant
        When Navigate to Tenant list page
        When Verify active tenant single badge
        When user clicks on the three dots menu
        Then Verify the tenant badge menu contains "Edit" option
        Then Verify the tenant badge menu contains "New Program" option
        Then Verify the tenant badge menu contains "Programs" option
        Then Verify the tenant badge menu contains "Settings" option

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with duplicate name
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User enters the duplicate tenant name
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with duplicate code
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User enters the duplicate tenant code
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can edit the tenant code
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify user is able to edit the tenant code
        Then Tenant code field should be disabled


    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with duplicate url
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User enters the duplicate tenant url
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with duplicate website
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User enters the duplicate tenant website
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with mandatory information
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant without mandatory information
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User removes the Tenant Name
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant with company logo
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User uploads the company logo
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant without company logo
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User removes the company logo
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating a tenant by removing mandatory information
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User removes the mandatory fields
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating a tenant by adding non mandatory information
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User adds the non mandatory fields
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating a tenant with duplicate tenant name and code
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User enters the duplicate tenant name
        When User enters the duplicate code
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating a tenant with duplicate url
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User enters the duplicate url
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated with allowed fields
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User updates the values of allowed fields
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated with non allowed fields
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User updates the values of non allowed fields
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated without company logo
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User removes the company logo
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated by adding more than one contact person
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User Clicks on the Contact Person tab
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated by removing the tenant contact person
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User Clicks on the Contact Person tab
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User clicks on the remove button
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated by adding a tenant key
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT004ModifyTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant can be updated by removing the tenant key
        When Navigate to Tenant list page
        When Search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        Then Verify the tenant edit page is displayed
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        When User clicks on the remove button
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant creation by adding Contact person details
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User Clicks on the Contact Person tab
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by adding more than one contact person details
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User Clicks on the Contact Person tab
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by adding same email and phone number in contact person details
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User Clicks on the Contact Person tab
        When User Clicks on the Add Contact button
        When User enters the mandatory fields with contact details
        When User Clicks on the Add Contact button
        When User enters same email and phone number
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant creation without contact person details
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User removes the contact person details
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant creation by generating a key
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant creation generating a key and Created on date
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        Then Verify the Created on date is displayed
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by adding an duplicate label for the key
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the duplicate label to tenant Key
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by copying the key
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User should able to see the duplicate key
        When User clicks on the copy button
        Then Verify the key is copied successfully

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify multiple keys can be generated for a tenant
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        Then Verify the Created on date is displayed
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by removing the key
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User should able to see only one duplicate key
        When User clicks on the remove button
        When User clicks on the "Save" button in tenant edit page
        Then "Error" message shown up

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant by viewing an API Key
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User clicks on the Generate Key button
        When User enters the lable to tenant Key
        When User clicks on the view button
        Then Verify the key is displayed
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant when user cannot modify the API Key
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        When User should able to see the duplicate key
        When User tries to modify the key
        Then Verify the key field is disabled to edit
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT005TenantAPIKeyManagement @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify tenant key is masked
        When Navigate to Tenant list page
        When search the valid tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User clicks on the Settings tab
        Then Verify the key value is masked

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a tenant without generating a key
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the Settings tab
        When User removes the key
        When User clicks on the "Save" button in tenant create page
        Then "Error" message shown up

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify save button after all the mandatory fields are filled
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        Then Verify the submit button is enabled
        When User clicks on the "Save" button in tenant create page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Cancel tenant creation and verify tenant is not created
        When Navigate to Tenant list page
        When User click on create tenant
        When User navigate to "Create Tenant" page
        When User enters all mandatory information in tenant create page
        When User clicks on the "Cancel" button in tenant create page
        Then Verify the tenant is not created

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tenant status can be updated form active to inactive
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User click on status
        Then Turn off the checkbox near 'Set Tenant Status as Active'
        Then User should be thrown with the message stating that Tenant can be made InActive only if the programs are Inactive

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Inactive tenant flow, when the programs are made Inactive
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User click on status
        Then Turn off the checkbox near 'Set Tenant Status as Active'
        Then Success message is shown,
        Then Tenant is made Inactive.
        Then Verify the tenant status switch button is "Active"
        When User change the status of the tenant to "Inactive"
        Then Verify the tenant status is "Inactive"
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT002TenantStatus @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the tenant status can be updated form inactive to active
        When Navigate to Tenant list page
        When User search the "valid" tenant
        When User get the valid tenant
        When User clicks on the "Edit" button from the tenant
        When User click on status
        Then Verify the tenant status switch button is "Inactive"
        When User change the status of the tenant to "Active"
        Then Verify the tenant status is "Active"
        When User clicks on the "Save" button in tenant edit page
        Then "Successful" message shown up for tenant

    @adminui @tenant @TNT012DefaultTenant @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Default tenant can be created at first deployment on region/global
        When There is a deployment is made at first
        Then Verify it should have a default tenant

    @adminui @tenant @TNT012DefaultTenant @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Default tenant can be edited/used for testing
        When Default tenant is created after deployment
        Then verify the tenant can be edited/used for testing
