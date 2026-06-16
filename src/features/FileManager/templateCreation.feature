Feature: Template Creation for File Uploads

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background: Template Creation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program" from the program list
        Then Verify the user is on the program landing page


    @adminui @templateCreation @uploadTemplate @navigation @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Create new templates for file upload
        When User click on upload button
        # When User click on the template create button
        # Then The template creation form should displayed
        When User Create template with mandatory information for "templateType" template
            | templateType                |
            | HierarchyUpload             |
            | OrganizationUpload          |
            | UserUpload                  |
            | ProductUpload               |
            | SalesUpload                 |
            | DirectPointDepositUpload    |
            | EligibleProductRewardUpload |
            | UserTargetUpload            |
            | OrganizationTargetUpload    |
            | AudienceUserUpload          |
    #When User click on the add button in template creation
    # Then "Successful" message shown up


    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Choose a template and verify the details description, schema, workflow, filter are displayed
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        Then User should see the description, schema, workflow, filter details

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Create template with the existing name
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters the existing name
        When User click on the add button
        Then The template should not be created

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Create template without any mandatory fields
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User does not enter all the mandatory fields
        When User click on the add button
        Then The template should not be created

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify schema list in dropdown matches schemas in schema builder
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User click on the schema dropdown
        Then The schema list should match the schemas in schema builder

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Download button without selecting any schema
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User click on the Download button
        Then The file should not be downloaded

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Download button after selecting a schema
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User click on the schema dropdown
        When User selects the schema
        When User click on the Download button
        Then The file should be downloaded

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify workflow list in dropdown matches flownodes in workflow
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User click on the workflow dropdown
        Then The workflow list should match the flownodes in workflow

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify template cannot be created without selecting a workflow
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields except workflow
        When User click on the add button
        Then The template should not be created

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify template cannot be created without selecting a schema
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields except schema
        When User click on the add button
        Then The template should not be created

    # @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    # Scenario: Verify template can be created with different schema and workflow
    #     Given User is on the file upload page
    #     When User click on the Create button
    #     Then The template creation form should open
    #     When User enters the name and description
    #     When User click on the schema dropdown
    #     When User selects a schema
    #     When User click on the workflow dropdown
    #     When User selects a workflow
    #     When User click on the add button
    #     Then The template should be created successfully and displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify template can be create by adding the filters
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User selects the column
        When User enters the value
        When User click on the add button
        Then The filter should be added
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify multiple filters can be added
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User adds multiple filters
        When User selects the column
        When User enters the value
        When User click on the add button
        Then The filter should be added
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the columns are populated according to the schemas
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User selects the column
        Then The columns should match the columns in the schema

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify filter by adding the column and value
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User selects the column
        When User enters the value
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify filter by adding the column without values
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User selects the column
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify filter by adding the value without column
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User enters the value
        When User click on the add button
        Then The template should not be created

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify datas can be filtered based on the filter added
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add filter button
        When User selects the column
        When User enters the value
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown
        When User uploads the file
        Then The datas should be filtered based on the filter added

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify filter can be removed
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the delete filter button
        Then The filter should be removed

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify newly added template displayed in the dropdown
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the add button
        Then The template should be created successfully and displayed in the dropdown
        When User click on the template dropdown
        Then The newly added template should be displayed

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify template cannot be created after cancelling
        Given User is on the file upload page
        When User click on the Create button
        Then The template creation form should open
        When User enters all the mandatory fields
        When User click on the cancel button
        Then The template should not be created

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify column names are changed in dropdown when schema is changed
        Given User is on the file upload page
        When User click on the template dropdown
        Then User should see the template details
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the schema dropdown
        When User selects a different schema
        Then The column names should be changed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify column name when no schema is selected
        Given User is on the file upload page
        When User click on the template dropdown
        Then User should see the template details
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the schema dropdown
        When User doesn't select any schema
        Then The column names should not be displayed in the dropdown

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template for file upload
        Given User is on the file upload page
        When User click on the template dropdown
        Then User should see the template details
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User edits the fields
        When User click on the save button
        Then The template should be saved successfully
        Then User should see the updated template details

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Edit and save template without mandatory fields
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        Then User should see the template details
        When Click on the edit button
        Then The template edit form should open
        When User delete the mandatory fields
        When User click on the save button
        Then The template should not be saved

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by changing the schema
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the schema dropdown
        When User selects a different schema
        When User click on the save button
        Then The template should be saved successfully
        Then User should see the updated template details

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by changing the workflow
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the workflow dropdown
        When User selects a different workflow
        When User click on the save button
        Then The template should be saved successfully

    # @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    # Scenario: Edit the template by changing the different schema and workflow
    #     Given User is on the file upload page
    #     When User click on the template dropdown
    #     When User Selects the template
    #     When Click on the edit button
    #     Then The template edit form should open
    #     When User click on the schema dropdown
    #     When User selects a different schema
    #     When User click on the workflow dropdown
    #     When User selects a different workflow
    #     When User click on the save button
    #     Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by adding the filters
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the add filter button
        When User selects the column
        When User enters the value
        When User click on the save button
        Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by adding the multiple filters
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User adds multiple filters
        When User selects the column
        When User enters the value
        When User click on the save button
        Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by column and value in filter
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User edits the filter by adding the different column and value
        When User click on the save button
        Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by column without value in filter
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User edits the filter by adding the different column without value
        When User click on the save button
        Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by value without column in filter
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User edits the filter by adding the different value without column
        When User click on the save button
        Then The template should not be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify datas can be filtered after editing the filter in template
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User edits the filter by adding the different column and value
        When User click on the save button
        Then The template should be saved successfully
        When User uploads the file
        Then The datas should be filtered based on the filter added

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit template by removing the filter
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When Click on the edit button
        Then The template edit form should open
        When User click on the delete filter button
        Then The filter should be removed
        When User click on the save button
        Then The template should be saved successfully

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify uploading file for the particular template and check the datas are filtered from the file
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When User uploads the file
        Then The datas should be filtered based on the filter added

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify datas are added from the file through added workflow
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When User uploads the file
        Then The datas should be added from the file through added workflow

    @adminui @templateCreation @uploadTemplate @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Sort Column list
        Given User is on the file upload page
        When User click on the template dropdown
        When User Selects the template
        When User should see the filter details and click on the sort button
        Then Verify the column list is sorted