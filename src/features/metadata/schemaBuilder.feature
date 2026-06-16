Feature: Schema Builder


    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Kadarkarai Selvam
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(tenanatid)/program/(programid)/schematable/


    Background: User is on the program screen
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
        When User click on the "Schema Builder" submenu
        Then Verify the "Schema Builder" page is displayed


    @adminui @metadata @MDC001SchemaCRUD @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema builder with default tables
        When User is on the Schema Builder page
        Then User should see the default tables
    # addresses, users, audiences, audienceBatchHistories, audienceUsers, excludeAudienceUsers, hierarchies, roles, jobRoles, levels, organizations,
    # organizationAddresses, organizationHierarchies, promotions, promotionPoints, organizationUsers, permissions, pointsPayments, promotionPointStatus,
    # promotionRules, promotionRuleHistories, userAddresses, userEmails, userJobRoles, userPictures, Forms, Upload Progress

    @adminui @metadata @MDC001SchemaCRUD @navigation @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Search schema using schema name
        When User is on the Schema Builder page
        When User enters the schema name in the search box
        Then User should see the schema with the entered name

    @adminui @metadata @MDC001SchemaCRUD @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the total schema count with total records
        When User is on the Schema Builder page
        When User counts the total schema in all the pages
        Then Verify the total schema count with total records

    @adminui @metadata @MDC001SchemaCRUD @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort schema by name
        When User is on the Schema Builder page
        When User clicks on the sort icon in name column
        Then User should see the schema sorted by name

    @adminui @metadata @MDC001SchemaCRUD @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort schema by created modified date
        When User is on the Schema Builder page
        When User clicks on the sort icon in created modified date column
        Then User should see the schema sorted by created modified date

    @adminui @metadata @MDC001SchemaCRUD @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort schema by status
        When User is on the Schema Builder page
        When User clicks on the sort icon in status column
        Then User should see the schema sorted by status

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Add a new schema by entering the name and display name
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "save" button in program create page
        Then "Success" message shown up
        Then User should see the schema name, createdby, createdmodifiedon, status

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema cannot be created without entering the name and display name
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User clicks on "Save" button in schema edit page
        Then "Error" message shown up

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new schema created with default field as ID
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Success" message shown up
        Then User should see the schema created with display name
        When User selects the view button
        Then User should see the ID field in the table

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Add a new schema and click on close button then verify the schema is not created
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Cancel" button in schema edit page
        Then User should not see the schema created with display name

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema created with updated timestamp
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then User should see the created and updated timestamp

    @adminui @metadata @schemaBuilderUI @scenario @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the schema created by
        When User is on the Schema Builder page
        Then User clicks on the Add Schema button
        Then User enters the name and display name
        Then User clicks on the Save button
        Then User should see the schema created
        Then User should see the created by user with user name

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Click on elipsis and verify the Edit, View, Viewdata, Config
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        Then User should see the Edit, View, Viewdata, Config

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit the schema display name and verify the updated schema
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User edits the display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema updated with display name

    @adminui @metadata @schemaBuilderUI @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View the schema
        When User is on the Schema Builder page
        Then User selects the table and click on the elipsis
        Then User clicks on the View
        Then User should see the view page of the schema

    @adminui @metadata @schemaBuilderUI @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View the field properties
        When User is on the Schema Builder page
        Then User selects the table and click on the elipsis
        Then User clicks on the View
        Then User should see the view page of the schema
        When user click on the field on left pane
        Then user should see the view page of the field on right pane

    @adminui @metadata @schemaBuilderUI @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View the field language and ref table
        When User is on the Schema Builder page
        Then User selects the table and click on the elipsis
        Then User clicks on the View
        Then User should see the view page of the schema
        When user click on the field on left pane
        Then user should see the view page of the field on right pane
        Then user should see the language and ref table tab

    @adminui @metadata @schemaBuilderUI @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View the field events
        When User is on the Schema Builder page
        Then User selects the table and click on the elipsis
        Then User clicks on the View
        Then User should see the view page of the schema
        When user click on the field on left pane
        Then user should see the view page of the field on right pane
        Then user should see the events tab
        When user click on events tab
        Then user should see all the events

    # Edit
    @adminui @metadata @MDC001SchemaCRUD @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table page and fields of the schema
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User should see the table page and fields of the schema

    @adminui @metadata @MDC002ExtendSystemModels @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Add a new field to the schema
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on the Add Field button
        When User enters the field name and display name
        When User enters the basic info name, placeholder, default value
        When User selects the necessary field properties
        When User enters the display name in multiple languages
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field added to the schema

    @adminui @metadata @MDC002ExtendSystemModels @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add multiple fields
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on the Add Field button
        When User enters the field name and display name
        When User enters the basic info name, placeholder, default value
        When User selects the necessary field properties
        When User enters the display name in multiple languages
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field added to the schema
        When User clicks on the Add Field button
        When User enters the field name and display name
        When User enters the basic info name, placeholder, default value
        When User selects the necessary field properties
        When User enters the display name in multiple languages
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field added to the schema

    @adminui @metadata @MDC002ExtendSystemModels @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Edit a field with field property
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field property
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field property updated

    @adminui @metadata @MDC001SchemaCRUD @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the list of field types in dropdown
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User choose a field to Edit
        When Click on the field type dropdown
        Then User should see the list of fieldtype in dropdown

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as string
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as string
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as uuid
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as uuid
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as timestamp
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as timestamp
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as date
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as date
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as number
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as number
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as integer
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as integer
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as boolean
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as boolean
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Change the field type as json
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User edits the field type as jsonb
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field type updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Enter the Basic Info Name, Placeholder, defaultvalue
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User enters the basic info name, placeholder, default value
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the basic info updated

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Basic Info id and it can be non editable
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the Basic Info id and it can be non editable

    @adminui @metadata @MDC001SchemaCRUD @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field can be set as searchable
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the field can be set as searchable

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the fields can be set as sortable
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the fields can be set as sortable

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the fields can be marked as required fields
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the fields can be marked as required fields

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field can be set to read only
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the field can be set to read only

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field can be set as unique
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the field can be set as unique

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field can be set as encrypted
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then Verify the field can be set as encrypted

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the display name can be entered in multiple languages
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User clicks on the languages
        When User enters the display name in multiple languages
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the display name updated in multiple languages

    @adminui @metadata @MDC003ManageReferenceData @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add a reference table and select the RefTable, RefField, RelationShipType
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the reference table added to the schema

    @adminui @metadata @MDC003ManageReferenceData @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Relationship Type as has-many and validate it
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User adds a reference table and selects the RefTable, RefField
        Then User selects the Relationship Type as has-many
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the reference table added to the schema

    @adminui @metadata @MDC003ManageReferenceData @scenario @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Relationship Type as has-one and validate it
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User adds a reference table and selects the RefTable, RefField
        Then User selects the Relationship Type as has-one
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the reference table added to the schema

    @adminui @metadata @MDC003ManageReferenceData @scenario @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Add multiple reference table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the reference table added to the schema
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Error" message shown up
        Then User should not able to add the multiple reference table

    @adminui @metadata @MDC003ManageReferenceData @scenario @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Delete a ref table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User selects the ref table
        Then User clicks on the delete icon to which needs to be deleted
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the ref table deleted from the schema

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify field can be submitted without entering the mandatory fields
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User not enters the mandatory fields
        When User clicks on "Submit" button in schema edit page
        Then "Error" message shown up

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the field can be submitted without basic info
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User not enters the basic info
        When User clicks on "Submit" button in schema edit page
        Then "Error" message shown up

    @adminui @metadata @MDC001SchemaCRUD @system @delete @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Delete the field from the table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        Then User clicks on the delete icon to which field needs to be deleted
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field deleted from the schema

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table field can be submitted and saved
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field submitted and saved

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table field can be cancelled and not saved
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User edits the field
        When User clicks on "Cancel" button in schema edit page
        Then User should see the field cancelled and not saved

    @adminui @metadata @MDC001SchemaCRUD @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new field can be added to the static table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User clicks on the Add Field button
        When User enters the field name and display name
        When User enters the basic info name, placeholder, default value
        When User selects the necessary field properties
        When User enters the display name in multiple languages
        When User clicks on Ref Table
        When User adds a reference table
        When Selects the RefTable, RefField, RelationShipType
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field added to the schema

    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the static table fields can be updated and saved
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "Edit" button from the table elipsis
        When User edits the field
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then User should see the field updated and saved

    # View
    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view page of the schema
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View" button from the table elipsis
        Then User should see the view page of the schema

    # View Data
    @adminui @metadata @MDC001SchemaCRUD @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: View the datas in the table and verify it
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        Then User should see the datas in the table and verify it

    @adminui @metadata @MDC001SchemaCRUD @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Search the data in the table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        When User enters the data in the search box
        Then User should see the data in the table

    @adminui @metadata @MDC001SchemaCRUD @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Filter the datas in the table
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        When User clicks on the filter icon
        When User selects the filter type
        When User enters the data in the search box
        Then User should see the data in the table

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add data by uploading them through csv file by drag and drop
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        When User clicks on the Add Data button
        When User clicks on the Upload Data button
        Then User clicks on the drag and drop area
        When User selects the csv file
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then Verify the user should see the data added to the table

    @adminui @metadata @MDC001SchemaCRUD @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Add data by uploading them through csv file by selecting the file
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        When User clicks on the Add Data button
        When User clicks on the Upload Data button
        When User clicks on the Select File button
        When User selects the csv file
        When User clicks on "Submit" button in schema edit page
        Then "Successful" message shown up
        Then Verify the user should see the data added to the table

    @adminui @metadata @MDC001SchemaCRUD @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort the datas based on the fieldname
        When User is on the Schema Builder page
        When User click on the elipsis from the selected table
        When User clicks on the "View Data" button from the table elipsis
        When User clicks on the sort icon in fieldname column
        Then User should see the datas sorted based on the fieldname

    @adminui @metadata @MDC004ManageSystemReferenceData @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the immutable datas in the system table
        When User is on the master database
        When User verifies the value in the database
        Then Verifies the datas are immutable

    @adminui @metadata @MDC005ManageCounters @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to generate the unique counters for specific records
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system can able to generate the unique counters for specific records

    @adminui @metadata @MDC005ManageCounters @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system cannot create a repeated counter value for specific records
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system cannot create a repeated counter value for specific records

    @adminui @metadata @MDC006ManageDocumnetsAndTypes @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to add the documents
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system can able to add the documents to that field

    @adminui @metadata @MDC006ManageDocumnetsAndTypes @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to specify the document type
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system can able to specify the document type

    @adminui @metadata @MDC006 @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system cannot add the documents without specifying the document type
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system cannot add the documents without specifying the document type

    @adminui @metadata @MDC006 @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system cannot add the documents with invalid document type
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system cannot add the documents with invalid document type

    @adminui @metadata @MDC007ManagePlugins @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to add the plugins
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system can able to add the plugins to that field

    @adminui @metadata @MDC008ManageReportDefinitions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to manage the report definitions
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        When User adds a new field
        Then Verify the system can able to manage the report definitions

    @adminui @metadata @MDC009AddDropDowninMetadataCreationModelPopup @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to see a dropdown labeled "Type" below the display name
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to see a dropdown labeled "Type" below the display name

    @adminui @metadata @MDC009AddDropDowninMetadataCreationModelPopup @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to select whether the data related to a Product Master or a Sales Master
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to select whether the data related to a Product Master or a Sales Master

    @adminui @metadata @MDC009AddDropDowninMetadataCreationModelPopup @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to select the default value as “New”
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to select the default value as “New”

    @adminui @metadata @MDC009AddDropDowninMetadataCreationModelPopup @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to apply the correct template for the data I will enter
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to apply the correct template for the data I will enter

    @adminui @metadata @MDC010PopulatingtheDropdown @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to populate the "Type" dropdown with options from 'metadataTemplates' table
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to populate the "Type" dropdown with options from 'metadataTemplates' table

    @adminui @metadata @MDC010PopulatingtheDropdown @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to select the correct type based on the templates available in the system
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to select the correct type based on the templates available in the system

    @adminui @metadata @MDC011SavingTemplateSection @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to save the template selection
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to save the template selection

    @adminui @metadata @MDC011SavingTemplateSection @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to pre-populate with fields specific to the selected type
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to pre-populate with fields specific to the selected type

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and save the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and save the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and view the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and view the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and edit the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and edit the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and delete the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and delete the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and add a new field to the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and add a new field to the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and edit the field in the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and edit the field in the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and delete the field in the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and delete the field in the schema

    @adminui @metadata @MDC012ReferencetoDefaultFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the system can able to reference to default fields and save the schema
        When User is on the Schema Builder page
        When User clicks on the Add Schema button
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        Then User should see the schema created with display name
        Then Verify the system can able to reference to default fields and save the schema

    @adminui @metadata @MDC001SchemaCRUD @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the required field is created and try to add data to the table without required fields
        When User is on the Schema Builder page
        When User enters the schema name "user" in the search box
        Then User should see the schema with the entered name
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When Required fields are added in the table
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When user adds the data without required field via upload
        Then "Error" message shown up
        Then User should not able to add the data without required fields

    @adminui @metadata @MDC001SchemaCRUD @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the field with default value is created and try to add no data to that field
        When User is on the Schema Builder page
        When User enters the schema name "user" in the search box
        Then User should see the schema with the entered name
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When Default value fields are added in the table
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When user adds the data without default value field via upload
        Then "Successful" message shown up
        Then Default value will be present inside the table

    @adminui @metadata @MDC001SchemaCRUD @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the field with unique value is created and try to add the existing data to that field
        When User is on the Schema Builder page
        When User enters the schema name "user" in the search box
        Then User should see the schema with the entered name
        When User enters the name and display name
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When Unique property is checked in the table
        When User clicks on "Save" button in schema edit page
        Then "Successful" message shown up
        When user adds the existing data to the unique field via upload
        Then "Error" message shown up
        Then User should not able to add the existing data to the unique field


# need to add test cases for languages sub tab, ref table sub tab and Events tab, clone schema

