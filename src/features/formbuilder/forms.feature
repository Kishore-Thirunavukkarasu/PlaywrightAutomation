Feature: Form creation and customization

    # created by  = Kadarkarai Selvam
    # reviewed by =
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(TenantId/program/(ProgramId)/formbuilder/

    Background: User is on the Form Builder Page
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User clicks on the "Program" button from the tenant
        When User selects the "Program" from the program list
        Then Verify the user is on the program landing page
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        When User click on "Foundation Tools"
        When User click on the "Form Builder" submenu
        Then Verify the "Form Builder" page is displayed


    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Create Form button is displayed
        When User is on the Form Builder Page
        Then Verify the Create Form button is displayed

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Click on the Create Form button and verify the dialog box is displayed
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears

    @adminui @formbuilder @FB001CreateFormfromUI @system @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify created form is displayed in the form list
        Given Form is already created
        When User enter the form name in search form
        When Form is displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Creating a Form
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Creating a form with mandatory information
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating form without Form name
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User removes the Form name
        When User clicks on "Submit" button in form creation page
        Then "Error" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating form without Form Description
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User removes the Form Description
        When User clicks on "Submit" button in form creation page
        Then "Error" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating form without Form Model
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User removes the Form Model
        When User clicks on "Submit" button in form creation page
        Then "Error" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify cancel button in form creation
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Cancel" button in form creation page
        Then "Form Creation" page closed
        Then Verify the Form is not created

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form cannot be created with the existing form name
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User neters the mandatory details for form creation
        When User enters the existing form name
        When User clicks on "Submit" button in form creation page
        Then "Error" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @search @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the searching the form with valid form name
        When User is on the Form Builder Page
        Then Verify the search box is displayed
        When User enters the "valid" form name in the search box
        Then Verify the form is displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @system @search @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the searching the form with invalid form name
        When User is on the Form Builder Page
        Then Verify the search box is displayed
        When User enters the "invalid" form name in the search box
        Then Verify the form is not displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the created form is active by default
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        Then Verify the Form is active by default

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form elipsis button
        When User is on the Form Builder Page
        When User choose a "existing" form from the form list
        Then Verify the form elipsis button is displayed
        When User clicks on the form elipsis button
        Then Verify the Edit, Delete, Deactivate buttons are displayed

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be editable by clicking on the edit button and navigates to the form edit page
        When User is on the Form Builder Page
        When User choose a "existing" form from the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the form edit page is displayed

    @adminui @formbuilder @FB001CreateFormfromUI @system @delete @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be deleted by clicking on the delete button and verify the form is not displayed in the form list
        When User is on the Form Builder Page
        When User choose a "existing" form from the form list
        When User clicks on the form elipsis button
        When User clicks on the "Delete" button
        Then Verify the form is deleted
        Then Verify the form is not displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be deactivated by clicking on the deactivate button and verify the form is not displayed in the form list
        When User is on the Form Builder Page
        When User choose a "existing" form from the form list
        When User clicks on the form elipsis button
        When User clicks on the "Deactivate" button
        Then Verify the form is deactivated
        Then Verify the form is not displayed in the form list

    #FB022ExportandImportForm
    @adminui @formbuilder @FB003CreateFormfromExistingConfig @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the forms can be imported from the existing form
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Import" button
        Then Verify the "Import from Data" popup appears
        When User selects "Import from Existing Form"
        When User selects the "existing" form from the dropdown
        When User clicks on the "Import" button
        Then Verify the "existing" form is imported
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    #FB022ExportandImportForm
    @adminui @formbuilder @FB003CreateFormfromExistingConfig @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be imported from the system file
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Import" button
        Then Verify the "Import from Data" popup appears
        When User selects "Import from File"
        When User selects the "Form File" form
        When User clicks on the "Import" button
        Then Verify the "Form File" form is imported
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    #FB022ExportandImportForm
    @adminui @formbuilder @FB003CreateFormfromExistingConfig @system @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the list of existing forms are displayed when clicked on the import from existing form button
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Import" button
        Then Verify the "Import from Data" popup appears
        When User selects "Import from Existing Form"
        Then Verify the list of existing forms are displayed in the dropdown

    #FB022ExportandImportForm
    @adminui @formbuilder @FB003CreateFormfromExistingConfig @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be cloned
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Clone" button
        Then Verify the form is cloned
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    #FB022ExportandImportForm #FB041FormMigration
    @adminui @formbuilder @FB029DownloadFormConfiguration @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be exported
        When User is on the Form Builder Page
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Export" button
        Then Verify the form is exported
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Form Name
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Form Name"
        Then List of forms should be sorted by "Form Name" in ascending order
        When User clicks on sort button in "Form Name"
        Then List of forms should be sorted by "Form Name" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Description
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Description"
        Then List of forms should be sorted by "Description" in ascending order
        When User clicks on sort button in "Description"
        Then List of forms should be sorted by "Description" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Form Model
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Form Model"
        Then List of forms should be sorted by "Form Model" in ascending order
        When User clicks on sort button in "Form Model"
        Then List of forms should be sorted by "Form Model" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Version
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Version"
        Then List of forms should be sorted by "Version" in ascending order
        When User clicks on sort button in "Version"
        Then List of forms should be sorted by "Version" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Type
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Type"
        Then List of forms should be sorted by "Type" in ascending order
        When User clicks on sort button in "Type"
        Then List of forms should be sorted by "Type" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @navigation @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Forms can be sorted according to Status
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on sort button in "Status"
        Then List of forms should be sorted by "Status" in ascending order
        When User clicks on sort button in "Status"
        Then List of forms should be sorted by "Status" in descending order

    @adminui @formbuilder @FB001CreateFormfromUI @system @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Total number of forms matches to Total Records
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User user verify the total forms matches the total records

    @adminui @formbuilder @FB001CreateFormfromUI @Navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to select the form from next page
        When User is on the Form Builder Page
        Then List of forms should be displayed
        Then Verify the "first" page should be highlighted
        When User clicks on the next page
        Then Verify the "second" page should be highlighted
        When User selects the form in the "second" page
        Then Verify the form is selected

    @adminui @formbuilder @FB001CreateFormfromUI @Navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to select the form from previous page
        When User is on the Form Builder Page
        Then List of forms should be displayed
        Then Verify the "first" page should be highlighted
        When User selects the "second" page
        Then Verify the second page should be highlighted
        When User clicks on the previous page
        Then Verify the "first" page should be highlighted
        When User selects the form in the "previous" page
        Then Verify the form is selected

    @adminui @formbuilder @FB001CreateFormfromUI @Navigation @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to select the form from last page
        When User is on the Form Builder Page
        Then List of forms should be displayed
        Then Verify the "first" page should be highlighted
        When User selects the "last" page
        Then Verify the last page should be highlighted
        When User selects the form in the "last" page
        Then Verify the form is selected

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Form Name can be edited from the Form page
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "edit" button from form page
        Then Verify the "edit" Form popup appears
        When User edits the "form name"
        When User clicks on the "Save button" from edit form page
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Form Description can be edited from the Form page
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "edit" button from form page
        Then Verify the "edit" Form popup appears
        When User edits the "form description"
        When User clicks on the "Save button" from edit form page
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify cancelling the form edit
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "edit" button from form page
        Then Verify the "edit" Form popup appears
        When User edits the "form name"
        When User clicks on the "Cancel button" from edit form page
        Then "Form Edit" page closed
        When User clicks on the "Submit" button from form page
        Then Verify the form is not updated

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the components cannot be added without creating a group
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the field "field name"
        Then "Error" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Style of the field can be configured by uploading a valid css file in Form Configuration
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "Form Configuration" button
        Then Verify the "Form Configuration" popup appears
        When User enters the mandatory details in the Configure Form popup
        When User uploads the valid css file
        When User clicks on the "Save" button
        Then "Successful" message shown up


    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the fields can be added from the group using drag and drop
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User enters "edited" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "Single Line Text"
        Then Verify the "Single Line Text" field is added to the form
        When User enters the "field name" for "Single Line Text"
        When User clicks on the "Save Field" button in the field properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up


    # ************************************Basic Group - system************************************************************


    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form can be created by adding a Group by drag and drop the Basic Group
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the multiple groups can be added to the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Group name can be editable in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Verify the Group Properties should be displayed
        When User enters the "group name" from group properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can continue without entering the Group Name in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Verify the Group Properties should be displayed
        When User clicks on the "Save" button without entering the group name
        Then Verify the group name should be as "Default Group Name"
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to enter Group Description in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Verify the Group Properties should be displayed
        When User enters the "group description" from group properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can continue without entering the Group Description in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User clicks on the "Create Form" button
        Then Verify the "Create" Form popup appears
        When User enters the mandatory details for form creation
        When User clicks on "Submit" button in form creation page
        Then "Successful" message shown up
        Then Verify the Form is created
        When User enters "created" form name in the search box
        Then Verify the form is displayed in the form list
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "created form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Verify the Group Properties should be displayed
        When User clicks on the "Save" button without entering the group description
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the display layout can be selected from the drop down in Display
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout from the drop down
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can save without selecting the display layout in Display
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User clicks on the "Save" button without selecting the display layout
        Then Default display layout should be selected
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    #Whether it is Grid or Flex
    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if Display as Flex then the user can able to select the Flex Direction from the drop down
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Flex"
        When User selects the Flex Direction as "Row"
        When User selects the Justify items as "Center"
        When User selects the Align items as "Center"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then The group should be displayed in the form in the selected "Flex" View

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can continue without selecting the Flex Direction in Display
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Flex"
        When User clicks on the "Save" button without selecting the Flex Direction
        Then Default Flex Direction should be selected
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to continue without selecting the Justify items and Allign items in Display
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Flex"
        When User selects the Flex Direction as "Row"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then Default Justify items and Align items should be selected
        Then "Successful" message shown up
        Then The group should be displayed in the form in the selected "Flex" View

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if Display as Grid then the user can able to select the Grid Template Columns from the drop down
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Grid"
        When User selects the Grid Template Columns as "3"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then The group should be displayed in the form in the selected "Grid" View

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to specify the Gaps between the fields in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Grid"
        When User enters the "3" gaps from the group properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user cannot able to enter the invalid value in the Gaps field in Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the Display tab
        When User selects the display layout as "Grid"
        When User enters the "invalid" gaps from the group properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the form created without gaps

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add extra styles in the Group Properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User clicks on the extra styles text box
        When User enters the "extra styles" from the group properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add styles to the group
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User click on the "Form Configuration" button
        Then Verify the "Form Configuration" popup appears
        When User enters the mandatory details in the Configure Form popup
        When User uploads the valid css file
        When User clicks on the "Save" button
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the group is displayed with the added styles

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Group can be saved by clicking on the Save Group button
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User clicks on the Group
        Then Group Properties should be displayed
        When User enters all the mandatory details in the Group Properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB004FormComponents @system @delete @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Field can be deleted by clicking on the Delete this field button
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "Single Line Text"
        When User enters the "field name" for "Single Line Text"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Single Line Text" field is added to the form
        When User clicks on the "Delete field" button
        Then Verify the "Single Line Text" field is deleted from the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Group can be created with maximum number of components
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "Single Line Text"
        When User enters the "field name" for "Single Line Text"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Single Line Text" field is added to the form
        When User adds the multiple fields to the group
        Then Verify the multiple fields are added to the group
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the group name in the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        Then Verify the user can able to update the "group name"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the group description in the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        Then Verify the user can able to update the "group description"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the group display layout in the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        Then Verify the user can able to update the "group display layout"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB017LayoutCustomization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the gaps between the fields in the group properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        Then Verify the user can able to update the "gaps between the fields"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the extra styles in the group properties
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        Then Verify the user can able to update the "extra styles"
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @delete @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to delete the group from the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        Then Group Properties should be displayed
        When User clicks on the "Delete Group" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up


    @adminui @formbuilder @FB009DisplayFormasWizard @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the group wizard
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB009DisplayFormasWizard @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add basic group into group wizard
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User drag and drop the group "Basic Group" into the Group Wizard
        Then Verify the "Basic Group" is added to the Group Wizard
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB009DisplayFormasWizard @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add multiple groups into group wizard
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User drag and drop the group "Basic Group" into the Group Wizard
        Then Verify the "Basic Group" is added to the Group Wizard
        When User drag and drop the group "Basic Group" into the Group Wizard
        Then Verify the "Basic Group" is added to the Group Wizard
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB009DisplayFormasWizard @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the group in the group wizard
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User click on the "existing" group in the Group Wizard
        Then Group Properties should be displayed
        When User updates the group details in the Group Properties
        When User clicks on the "Save" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB009DisplayFormasWizard @system @delete @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to delete a group from the group wizard
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User click on the "existing" group in the Group Wizard
        Then Group Properties should be displayed
        When User clicks on the "Delete Group" button from group properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB009DisplayFormasWizard @system @delete @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to delete the group wizard from the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Group Wizard"
        When User enters the mandatory details in the Group Wizard
        Then Verify the "Group Wizard" is added to the form
        When User clicks on the "Delete Group" button from the Group Wizard
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the Object Array
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Object Array"
        When User enters the mandatory details in the Object Array
        Then Verify the "Object Array" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the Object Array by selecting render conditionally
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Object Array"
        When User enters the mandatory details in the Object Array
        When User selects the "Render Conditionally" in the Object Array
        Then Verify the "Object Array" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User is on the active form page
        Then Verify the "Object Array" is displayed in the form which is rendered conditionally

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the Object Array by selecting Submission by enter
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Object Array"
        When User enters the mandatory details in the Object Array
        When User selects the "Submission by Enter" in the Object Array
        Then Verify the "Object Array" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User is on the active form page
        Then Verify the "Object Array" is displayed in the form which is submitted by enter

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the Object Array by selecting Nullable
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Object Array"
        When User enters the mandatory details in the Object Array
        When User selects the "Nullable" in the Object Array
        Then Verify the "Object Array" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User is on the active form page
        Then Verify the "Object Array" is displayed in the form which is nullable

    @adminui @formbuilder @FB010AllowGrouping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the Object Array by giving parent field name
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Object Array"
        When User enters the mandatory details in the Object Array
        When User enters the "parent field name" in the Object Array
        Then Verify the "Object Array" is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User is on the active form page
        Then Verify the "Object Array" is displayed in the form with the parent field name




    # ************************************parameter************************************************************

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component parameter styles
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component parameter validation
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User adds the validation "required" for the field
        When User adds the validation "pattern" for the field
        When User adds the validation "min" for the field
        When User adds the validation "max" for the field
        When User adds the validation "length" for the field
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @delete @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component parameter delete field
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Delete field" button
        Then Verify the "any field" field is deleted from the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB001CreateFormfromUI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component parameter save field
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the group "Basic Group"
        Then Verify the "Basic Group" is added to the form
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up


    # ************************************validation************************************************************

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Single Line Text
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Single Line Text"
        When User enters the mandatory fields for "Single Line Text"
        When User adds the validations for "Single Line Text"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Single Line Text" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Single Line Text" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Checkbox
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Checkbox"
        When User enters the mandatory fields for "Checkbox"
        When User adds the validations for "Checkbox"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Checkbox" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Checkbox" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Radio Button
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Radio Button"
        When User enters the mandatory fields for "Radio Button"
        When User adds the validations for "Radio Button"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Radio Button" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Radio Button" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Number
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Number"
        When User enters the mandatory fields for "Number"
        When User adds the validations for "Number"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Number" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Number" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Button
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Button"
        When User enters the mandatory fields for "Button"
        When User adds the validations for "Button"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Button" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Button" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Paragraph
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Paragraph"
        When User enters the mandatory fields for "Paragraph"
        When User adds the validations for "Paragraph"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Paragraph" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Paragraph" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Password
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Password"
        When User enters the mandatory fields for "Password"
        When User adds the validations for "Password"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Password" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Password" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Date & Time
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Date & Time"
        When User enters the mandatory fields for "Date & Time"
        When User adds the validations for "Date & Time"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Date & Time" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Date & Time" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Image
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Image"
        When User enters the mandatory fields for "Image"
        When User adds the validations for "Image"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Image" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Image" field is added to the form in active form page
        Then Verify the Image can be uploaded

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for File Upload
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "File Upload"
        When User enters the mandatory fields for "File Upload"
        When User adds the validations for "File Upload"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "File Upload" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "File Upload" field is added to the form in active form page
        Then Verify the File can be uploaded

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Dropdown
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Dropdown"
        When User enters the mandatory fields for "Dropdown"
        When User adds the validations for "Dropdown"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Dropdown" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Dropdown" field is added to the form in active form page
        Then Verify the Dropdown values can be selected

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Address
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Address"
        When User enters the mandatory fields for "Address"
        When User adds the validations for "Address"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Address" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Address" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Auto Complete
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Auto Complete"
        When User enters the mandatory fields for "Auto Complete"
        When User adds the validations for "Auto Complete"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Auto Complete" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Auto Complete" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Currency
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Currency"
        When User enters the mandatory fields for "Currency"
        When User adds the validations for "Currency"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Currency" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Currency" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Hidden Field
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Hidden Field"
        When User enters the mandatory fields for "Hidden Field"
        When User adds the validations for "Hidden Field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Hidden Field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Hidden Field" field is added to the form in active form page

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation for Raw HTML
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Raw HTML"
        When User enters the mandatory fields for "Raw HTML"
        When User adds the validations for "Raw HTML"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Raw HTML" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "Raw HTML" field is added to the form in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type values such as required, pattern, min, max, length
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation required for "any field"
        When User adds the validation pattern for "any field"
        When User adds the validation min for "any field"
        When User adds the validation max for "any field"
        When User adds the validation length for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" field is added to the form in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type as required and adding values in value and message
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation required for "any field"
        When User adds the value and message for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" as required field in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type as Pattern and adding values in value and message
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation pattern for "any field"
        When User adds the value and message for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" accepts the patterened value in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type as Min and adding values in value and message
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation Min for "any field"
        When User adds the value and message for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" accepts more than min value in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type as Max and adding values in value and message
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation Max for "any field"
        When User adds the value and message for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" accepts less than max value in active form page

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter validation type as Length and adding values in value and message
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation Length for "any field"
        When User adds the value and message for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        Then Verify the "any field" accepts the length value in active form page

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter style by uploading a valid css file
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User clicks on the "Form Configuration" button
        Then Verify the "Form Configuration" popup appears
        When User enters the mandatory details in the Configure Form popup
        When User uploads the valid css file
        When User clicks on the "Save" button
        Then "Successful" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter style by uploading a invalid css file
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User clicks on the "Form Configuration" button
        Then Verify the "Form Configuration" popup appears
        When User enters the mandatory details in the Configure Form popup
        When User uploads the invalid css file
        When User clicks on the "Save" button
        Then "Error" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter style by selecting one of the style
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User Click on the "Styles"
        When User choose one of the style
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter style by selecting multiple styles
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User Click on the "Styles"
        When User choose multiple styles
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    @adminui @formbuilder @FB014Styling @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the parameter style by selecting all styles
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the "field name" for "any field"
        When User Click on the "Styles"
        When User choose all styles
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up

    # ************************************E2E************************************************************

    @adminui @formbuilder @FB013HelpText @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the field property Help Text value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User enters the "Help Text" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Help Text" is displayed in the form
        Then Validate the "Help Text" value

    @adminui @formbuilder @FB005Validation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the field property placeholder value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User enters the "Placeholder" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Placeholder" is displayed in the form
        Then Validate the "Placeholder" value

    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the field property label value
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User enters the "Label" for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Label" is displayed in the form
        Then Validate the "Label" value

    @adminui @formbuilder @FB026Encryption @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component password value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Password"
        When User enters the mandatory fields for "Password"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Password" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Password" is displayed in the form
        Then Validate the "Password" value is encrypted

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component date value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Date"
        When User enters the mandatory fields for "Date"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Date" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Date" is displayed in the form
        Then Validate the "Date" value entered

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component dropdown value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Dropdown"
        When User enters the mandatory fields for "Dropdown"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Dropdown" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Dropdown" is displayed in the form
        Then Validate the "Dropdown" value


    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component dropdown with static option contains valid values in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Dropdown"
        When User enters the mandatory fields for "Dropdown"
        When User adds the static option values for "Dropdown"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Dropdown" field is added to the form
        When User clicks on the "Dropdown" field
        When User selects the "Static" options
        When User adds the dropdown values for "Static" options
        When User clicks on the "Save Field" button in the field properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Dropdown" is displayed in the form
        Then Validate the "Dropdown" value

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component dropdown with dynamic option contains valid values in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Dropdown"
        When User enters the mandatory fields for "Dropdown"
        When User adds the dynamic option values for "Dropdown"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Dropdown" field is added to the form
        When User clicks on the "Dropdown" field
        When User selects the "Dynamic" options
        When User adds the api endpoint for "Dynamic" options
        When User clicks on the "Save Field" button in the field properties
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Dropdown" is displayed in the form
        Then Validate the "Dropdown" value

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component address value with not showing map in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Address"
        When User enters the mandatory fields for "Address" without map
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Address" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Address" is displayed in the form without map
        Then Validate the "Address" value

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component address value with showing map in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Address"
        When User enters the mandatory fields for "Address" with map
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Address" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Address" is displayed in the form with map
        Then Validate the "Address" value


    @adminui @formbuilder @FB004FormComponents @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component address value with invalid Google map API key in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Address"
        When User enters the mandatory fields for "Address" with invalid Google map API key
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Address" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Address" is displayed in the form without map
        Then Validate the "Address" value

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component address value with valid Google map API key in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Address"
        When User enters the mandatory fields for "Address" with valid Google map API key
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Address" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Address" is displayed in the form with map
        Then Validate the "Address" value

    @adminui @formbuilder @FB004FormComponents @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component image by uploading valid image in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Image"
        When User enters the mandatory fields for "Image"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Image" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the valid image
        Then Validate the "Image" is displayed in the form
        Then "Successful" message shown up

    @adminui @formbuilder @FB004FormComponents @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component image by uploading file in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Image"
        When User enters the mandatory fields for "Image"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Image" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the file
        Then Validate the "Image" is not displayed in the form
        Then "Error" message shown up

    @adminui @formbuilder @FB037FileUpload @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component file upload by uploading valid file in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "File Upload"
        When User enters the mandatory fields for "File Upload"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "File Upload" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the valid file
        Then Validate the "File Upload" is displayed in the form
        Then "Successful" message shown up

    @adminui @formbuilder @FB037FileUpload @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the component file upload by uploading image in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "File Upload"
        When User enters the mandatory fields for "File Upload"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "File Upload" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the image
        Then Validate the "File Upload" is not displayed in the form
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type as required and by not entering the value in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation required for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form without entering the value for "any field"
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type as required and by entering the value in it
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation required for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the value for "any field"
        Then "Successful" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type as pattern in form by entering the invalid value in it
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation pattern for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the invalid pattern value for "any field"
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type as pattern in form by entering the valid value in it
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation pattern for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the valid pattern value for "any field"
        Then "Successful" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type min by entering character of length lesser than min in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation min for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length lesser than min for "any field"
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type min by entering character of length greater than min in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation min for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length greater than min for "any field"
        Then "Successful" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type max by entering character of length lesser than max in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation max for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length lesser than max for "any field"
        Then "Successful" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type max by entering character of length greater than max in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation max for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length greater than max for "any field"
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type length by entering character of length lesser than length in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation length for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length lesser than length for "any field"
        Then "Error" message shown up

    #FB005Validation
    @adminui @formbuilder @FB006InlineValidation @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation type length by entering character of length greater than length in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "any field"
        When User enters the mandatory fields for "any field"
        When User adds the validation length for "any field"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "any field" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "any field" is displayed in the form
        When Submit the form by entering the character of length greater than length for "any field"
        Then "Error" message shown up

    #FB048EmailandMobileVerification
    @adminui @formbuilder @FB007ValidationOTP @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can able to specify the OTP authentication for mobile number field in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Mobile Number"
        When User enters the mandatory fields for "Mobile Number"
        When User adds the validation OTP for "Mobile Number"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Mobile Number" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "Mobile Number" is displayed in the form
        When OTP is sent to the mobile number
        When User enters the OTP
        Then "Successful" message shown up

    @adminui @formbuilder @FB048EmailandMobileVerification @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin can able to specify the OTP authentication for email field in form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Email"
        When User enters the mandatory fields for "Email"
        When User adds the validation OTP for "Email"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Email" field is added to the form
        When User clicks on the "Submit" button from form page
        When User navigate to active form page
        Then Validate the "Email" is displayed in the form
        When OTP is sent to the email
        When User enters the OTP
        Then "Successful" message shown up

    @adminui @formbuilder @FB008Responsiveness @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should be responsive and alligned to the container when it is configured
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User configures the form a UI Screen
        Then Verify the form is responsive
        Then Verify the form is alligned to the container

    @adminui @formbuilder @FB011FormSubmissionCallAPI @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form submission can call the API for posting the form data
        When User is on the active form page
        When User enters all the mandatory fields in form
        When User clicks on the "Submit" button
        Then "Successful" message shown up
        Then Verify the form data is posted to the API
        Then Verify the datas are stored in the database

    #FB024Language FB039FormFieldTranslation
    @adminui @formbuilder @FB012Localization @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should support translations
        When User is on the active form page
        When User change the language in the active screen
        Then Verify the form is translated to the selected language
        Then Verify the form labels, placeholders are translated to the selected language
        Then Verify the error messages are translated to the selected language
        Then Verify the success messages are translated to the selected language

    @adminui @formbuilder @FB015Security @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should have security mechanism that restrict the usage only from authorized applications
        When User is on the active form page
        When Verify the form is accessed only from the authorized applications
        Then Verify the form is not accessed from the unauthorized applications

    #FB018FormTemplates
    @adminui @formbuilder @FB002CreateFormfromTemplate @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pre-defined template for common form types
        When User is on the form builder page
        Then List of forms should be displayed
        Then Verify the list of the form are displayed with the pre-defined templates
        Then Verify the pre-defined templates for common form types are displayed

    # 20, 21
    # @adminui @formbuilder @FB016FormSubmissionEmail @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the form should support dependent sub-attributes
    #     When User is on the form builder page
    #     Then List of forms should be displayed
    #     When User selects the "existing" form from the form list page
    #     When User clicks on the form elipsis button
    #     When User clicks on the "Edit" button
    #     Then Verify the "form" page displayed with Clone, Import, Export buttons

    #@adminui @formbuilder @FB016FormSubmissionEmail @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the form should support dependent sub-attributes with autofill
    #     When User is on the form builder page
    #     Then List of forms should be displayed
    #     When User selects the "existing" form from the form list page
    #     When User clicks on the form elipsis button
    #     When User clicks on the "Edit" button
    #     Then Verify the "form" page displayed with Clone, Import, Export buttons

    @adminui @formbuilder @FB021DisplayMessageAfterSubmission @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display Success message after form submission
        When User is on the active form page
        When User enters all the mandatory fields in form
        When User clicks on the "Submit" button
        Then "Successful" message shown up

    @adminui @formbuilder @FB021DisplayMessageAfterSubmission @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display Error message after form submission
        When User is on the active form page
        When User clicks on the "Submit" button without entering the mandatory fields
        Then "Error" message shown up

    @adminui @formbuilder @FB023Versioning @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the versioning of the form
        When User is on the form builder page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User made changes to the form
        When User clicks on the "Save" button
        Then Verify the form is saved with the version
        When User clicks on the "Save" button
        Then Verify the form is saved with the new version

    @adminui @formbuilder @FB025Culture @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the date format should be displayed based on the culture of the selected language in the form
        When User is on the active form page
        Then Verify the date format is displayed for the selected language
        When User change the language in the active screen
        Then Verify the date format is changed based on the culture of the selected language

    @adminui @formbuilder @FB027AdditionalDetails @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should have the ability to capture the addition details of the user
        When User is on the active form page
        When User enters all the mandatory fields in form
        When User enters the additional details in the form
        When User clicks on the "Submit" button
        Then "Successful" message shown up
        Then Verify the additional details such as IP address, browser details, device details, location are captured

    #FB047Consent
    @adminui @formbuilder @FB028Consent @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin should be able to add consent
        When User is on the form builder page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User drag and drop the field "Checkbox/Consent"
        When User enters the mandatory fields for "Checkbox/Consent"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Checkbox/Consent" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Checkbox/Consent" is displayed in the form
        Then Validate the user cannot submit the form without checking the consent

    @adminui @formbuilder @FB030RemovingLeadingandTrailingSpaces @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the leading and trailing spaces should be trimmed for the form fields
        When User is on the active form page
        When User enters the form fields with leading and trailing spaces
        When User clicks on the "Submit" button
        Then "Successful" message shown up
        Then Verify the form field values in the database are trimmed
        Then Verify the leading and trailing spaces are trimmed for the form fields

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to disable the fields from registration form
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit form with the fields of registration form
        When User disables the fields for the edit form
        Then Verify the fields are disabled for the edit form
        When User tries to edit the disabled fields
        Then Verify the fields are not editable

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to add the new fields apart from the registration form
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit form by adding the new fields apart from the registration form
        Then Verify the new fields are added to the edit form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the new fields are displayed in the form

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to add the custom fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit form by adding the custom fields
        Then Verify the custom fields are added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the custom fields are displayed in the form

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to add the custom fields with the validation
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new form by adding the custom fields with the validation
        Then Verify the custom fields with the validation are added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the custom fields with the validation are displayed in the form

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to hide the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new form by hiding the field values for the existing fields
        Then Verify the field values are hidden for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are hidden for the existing fields

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to encrypy the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new form by encrypting the field values for the existing fields
        Then Verify the field values are encrypted for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are encrypted for the existing fields

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should be displayed post registration form submission
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit form
        Then Verify the edit form is displayed post registration form submission
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the edit form is displayed post registration form submission

    @adminui @formbuilder @FB032EditProfileForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit form should have the ability to edit the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit form by editing the field values for the existing fields
        Then Verify the field values are edited for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are edited for the existing fields

    @adminui @formbuilder @FB033ActivationForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the activation form should have the ability to hide the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new activation form by hiding the field values for the existing fields
        Then Verify the field values are hidden for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are hidden for the existing fields

    @adminui @formbuilder @FB033ActivationForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the activation form should have the ability to disable the fields from registration form
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new activation form with the fields of registration form
        When User disables the fields for the activation form
        Then Verify the fields are disabled for the activation form
        When User tries to edit the disabled fields
        Then Verify the fields are not editable

    @adminui @formbuilder @FB033ActivationForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the activation form should have the ability to edit the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new activation form by editing the field values for the existing fields
        Then Verify the field values are edited for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are edited for the existing fields

    @adminui @formbuilder @FB033ActivationForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the activation form should have the ability to encrypy the field values for the existing fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new activation form by encrypting the field values for the existing fields
        Then Verify the field values are encrypted for the existing fields
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the field values are encrypted for the existing fields

    #FB034UserUpdateFormAdmin
    @adminui @formbuilder @FB035AdminFileUpload @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the update form feature can be restricted to the admin for certain fields
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new form with the fields
        When User restricts the update form feature for certain fields
        Then Verify the update form feature is restricted for certain fields
        When User tries to update the restricted fields
        Then Verify the update form feature is restricted for the restricted fields

    @adminui @formbuilder @FB036WorkflowAssociationwithFormFill @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the workflow can be assigned to the form
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new form
        When User is on the workflow builder page
        Then List of workflows should be displayed
        When User selects the "existing" workflow from the workflow list page
        When User assigns the workflow to the created form
        Then Verify the workflow is assigned to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the workflow is assigned to the form

    @adminui @formbuilder @FB040DataInput @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should accept the data input in any language
        When User is on the active form page
        When User change the language in the active screen
        Then Verify the form is translated to the selected language
        When User enters the data input in any language
        When User clicks on the "Submit" button
        Then "Successful" message shown up
        Then Verify the data input in any language is accepted

    @adminui @formbuilder @FB042Jobrole @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form with Jobrole API should only return the eligible jobroles
        When User is on the active form page
        When User selects the jobrole field in the form
        Then Verify the jobrole field is displayed in the form
        When User selects the jobrole in the form
        Then Verify the jobrole field only returns the eligible jobroles

    @adminui @formbuilder @FB043ReferenceData @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the reference data like country, state, city should also be translated in the form
        When User is on the active form page
        When User change the language in the active screen
        Then Verify the form is translated to the selected language
        Then Verify the reference data like country, state, city are translated in the form

    @adminui @formbuilder @FB044EditProfile @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Edit profile form should support addition of audience specific CMS driven content.
        When User is on the form builder page
        Then List of forms should be displayed
        When User configures a new edit profile form
        Then Verify the edit profile form is displayed
        When User adds the audience specific CMS driven content
        Then Verify the audience specific CMS driven content is added to the edit profile form

    @adminui @formbuilder @FB045ProfileImage @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to view the image in the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Image"
        When User enters the mandatory fields for "Image"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Image" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the valid image
        Then Validate the "Image" is displayed in the form
        Then Verify the user can able to view the image in the form

    @adminui @formbuilder @FB045ProfileImage @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to edit the image in the form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Image"
        When User enters the mandatory fields for "Image"
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Image" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        When User uploads the valid image
        Then Validate the "Image" is displayed in the form
        When User clicks on the "Edit" button in the edit form
        When User replaces the image with the new image
        Then "Successful" message shown up
        Then Verify the user can able to edit the image in the form

    @adminui @formbuilder @FB046TranslationofDropdowns @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the dropdown values can be translated without changing the unique ids
        When User is on the active form page
        When User change the language in the active screen
        Then Verify the form is translated to the selected language
        Then Verify the dropdown values are translated without changing the unique ids

    #FB031LookupComponent
    @adminui @formbuilder @FB049ConditionalLogic_Lookup @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the lookup component in form builder which can be used to assign a value to a field based on the values in other fields of the same form
        When User is on the Form Builder Page
        Then List of forms should be displayed
        When User selects the "existing" form from the form list page
        When User clicks on the form elipsis button
        When User clicks on the "Edit" button
        Then Verify the "form" page displayed with Clone, Import, Export buttons
        When User clicks on the "existing" group
        When User drag and drop the field "Lookup"
        When User enters the mandatory fields for "Lookup"
        When User adds the lookup component to the form
        When User clicks on the "Save Field" button in the field properties
        Then Verify the "Lookup" field is added to the form
        When User clicks on the "Submit" button from form page
        Then "Successful" message shown up
        When User navigate to active form page
        Then Validate the "Lookup" is displayed in the form
        When User enters the values in the form
        Then Verify the value is assigned to the field based on the values in other fields of the same form

    @adminui @formbuilder @FB016MobileCapability @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the form should be accessible in the mobile devices
        When User is on the active form page
        Then Verify the form is accessible in the mobile devices
        When User enters the form fields in the mobile devices
        When User clicks on the "Submit" button
        Then "Successful" message shown up