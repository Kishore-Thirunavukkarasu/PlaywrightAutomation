Feature: View creation page
    # This test cases are for the promotion view creation

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Kadarkarai
    # updated by  = Kadarkarai
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(Tenant Id)/program/(Program Id)/promotions

    Background: Promotion Page Navigation
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
        When User click on "Promotions"
        Then Verify the "Promotions" page is displayed

    # Navigation
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to View builder page and verify the page is accessible for accessible user (rbac permission)
        When User click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        Then Verify the create view page is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to View builder page and verify the page is not accessible for non-accessible user (rbac permission)
        When User click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        Then Verify the create view page is not displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to view in promotion and verify page is accessible for accessible user (rbac permission)
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        Then Verify the create view page is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to view in promotion and verify page is not accessible for non-accessible user (rbac permission)
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is not displayed for that promotion
        When user click on create view button in promotion data tab
        Then Verify the create view page is not displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to view in promotion and verify page is displayed with all the views
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        Then Verify the create view page is displayed
        Then Verify the view list is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the created view is displayed in the view list page
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        Then Verify the create view page is displayed
        Then Verify the view list is displayed
        When user completes the creation of view
        Then Verify the created view is displayed in the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view created inside a promotion is listed in the view builder list
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        When user completes the creation of view
        Then Verify the created view is displayed in the view list
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        Then Verify the created view is displayed in the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view can be searched in the view list page
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        Then Verify the created view is displayed in the view list
        When user search for the created view
        Then Verify the created view is displayed in the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view can be searched with invalid value in the view list page
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        Then Verify the created view is displayed in the view list
        When user search for the invalid view
        Then Verify the created view is not displayed in the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view can be searched in the promotion view list page
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        When user completes the creation of view
        Then Verify the created view is displayed in the view list
        When user search for the created view
        Then Verify the created view is displayed in the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view can be searched with invalid value in the promotion view list page
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        When user completes the creation of view
        Then Verify the created view is displayed in the view list
        When user search for the invalid view
        Then Verify the created view is not displayed in the view list

    # @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify the view can be deleted from the view list page
    #     When user click on "Foundation Tools" tab
    #     When user click on "View Builder" sub tab
    #     Then Verify the created view is displayed in the view list
    #     When user click on the delete icon of the created view
    #     Then Verify the created view is deleted from the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view can be deleted from the promotion data tab
        When user click on three dots in created promotion
        When user click on the setup promotion option
        Then Data tab is displayed for that promotion
        When user click on create view button in promotion data tab
        When user completes the creation of view
        Then Verify the created view is displayed in the view list
        When user click on the delete icon of the created view
        Then Verify the created view is deleted from the view list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the elipsis in the view has preview sample data and download excel option
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        Then Verify the created view is displayed in the view list
        When user click on the elipsis of the created view
        Then Verify the preview sample data is displayed
        Then Verify download excel option is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to view the sample data for a view
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        Then Verify the created view is displayed in the view list
        When user click on the elipsis of the created view
        When user click on the preview sample data option
        Then Verify the sample data is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the created view can be previewed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the created view can be downloaded as excel

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view datas can be downloaded

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the view contains bulk data and that can be downloaded

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the datas are not getting missed while downloading with more than 100 records


    # Table selection
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the select table overlay is displayed when click on the Select Table button
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table list contains all the schemas
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        Then Verify the table list contains all the schemas

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to search on the table list
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user search for the table
        Then Verify the table is displayed in the table list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can select single table in the overlay
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the table is selected

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to select multiple table in the overlay
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the multiple tables
        Then Verify the tables are selected

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add the selected tables
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to cancel the table selection
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user click on the cancel button
        Then Verify the select table overlay is closed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can sort the table by name
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user click on the sort by name
        Then Verify the table is sorted by name

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can sort the table by number of columns in the table
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user click on the sort by number of columns
        Then Verify the table is sorted by number of columns

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can select and unselected the tables
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user unselect the table
        Then Verify the table is unselected

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column numbers are displayed in the table list
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        Then Verify the column numbers are displayed for each table

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @integration @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify by adding the table in schema builder and verify the added tables are displayed in the select table section
        When new schema is created in schema builder
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        Then Verify the added tables are displayed in the select table section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @integration @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify by adding the view in view builder and verify the added views are displayed in the select table section.
        When new view is created in view builder
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        Then Verify the added views are displayed in the select table section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table can be deleted from the create view table section
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section
        When user click on the delete icon of the table
        Then Verify the selected table is deleted from the Table section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify on mouse over the column count shows all the columns as tool tip
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        Then Verify the column numbers are displayed for each table
        When user mouse over the column count
        Then Verify the all the columns are displayed as tool tip

    # Selected column list
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the columns in the tables are displayed in the added table list
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section
        Then Verify all the columns in the tables are displayed in the added table list

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify each table added in table section can be expanded to view the columns
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section
        When user click on the table
        Then Verify the columns are displayed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify different columns from same table can be added
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section
        When user click on the table
        Then Verify the columns are displayed
        When user select the columns
        Then Verify the columns are added in the column section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding all the columns from the same table using add all button
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add all button
        Then Verify all the columns are added in the column section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding all the columns from the same table by selecing each column
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the columns are displayed
        When user select all the columns individually
        Then Verify all the columns are added in the column section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Columns from different table can be added
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        When user click on the add button
        Then Verify the selected table is added in Table section
        When user select the columns from different table
        Then Verify the columns are added in the column section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify columns in the table list can be unselected
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user unselect the columns
        Then Verify the columns are removed from the Table section

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify columns are added in table section and changed the name in table section and user tries to unselect the column
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user select the columns
        Then Verify the columns are added in the column section
        When user change the column name
        When user unselect the columns
        Then Verify the error message should be shown up in the column section

    # View name and description
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the view without name and description
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the error message should be shown up

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the view with name and description
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user enter the view name in the view creation page
        When user enter the view description in the view creation page
        When user click on the create view button
        Then Verify the view is created

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the view with name and without description
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user enter the view name in the view creation page
        When user click on the create view button
        Then Verify the error message should be shown up


    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the view with numeric name showing error message
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user enter the numeric view name in the view creation page
        When user click on the create view button
        Then Verify the error message should be shown up

    # inside the column accordion
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column accordion is expanded
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        Then Verify the column accordion is expanded

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column accordion is collapsed
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the column accordion
        Then Verify the column accordion is collapsed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the selected columns are displayed in the column accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        Then Verify the selected columns are displayed in the column accordion

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column can be deleted in the column accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the delete icon of the column
        Then Verify the column is deleted from the column accordion

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Edit column and check alias name can be updated to the column
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the edit icon of the column
        When user enter the alias name
        Then Verify the alias name is updated

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify click on edit alias name
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the edit icon of the column
        Then Verify the edit column popup is displayed
        Then Verify the alias name is editable inside the alias popup
        Then Verify type is not editable inside the alias popup

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column details in column accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        Then Verify the column type is displayed in the column accordion
        Then Verify the table name is displayed in the column accordion

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify click on create new column in column accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        Then Verify the create new column popup is displayed
        Then column type dropdown is displayed
        Then column type should contain numeric, string and date as values

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify click on cancel in create new column in column accoridon
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user click on the cancel button
        Then Verify the create new column popup is closed

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the new columns with existing name and type
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the existing column name
        When user select the existing column type of the existing column
        When user click on the create button
        Then Verify the error message should be shown up

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Veirfy creating the column with existing name and different type
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the existing column name
        When user select the not the existing column type of existing column
        When user click on the create button
        Then Verify the column is created

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify moving the column up by drag and drop
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user drag and drop the column
        Then Verify the column is moved up

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify moving the column down by drag and drop
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user drag and drop the column
        Then Verify the column is moved down

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the usage of column data text value can be displayed
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        Then Verify the column data text value is displayed

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be added to the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the value in console
        Then Verify the query is added to the console

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be cleared from the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the value in console
        When user click on the clear button
        Then Verify the query is cleared from the console

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be edited in the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the value in console
        When user try to update the values in console
        Then Verify the query is edited in the console

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be copied in the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the value in console
        When user click on copy button in console
        Then Verify the query is copied in the console

    #Original
    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data can be selected as original
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "original" checkbox
        Then Verify the column data is selected as original

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @integration @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the view with new column added with type as original and verify by adding the data to that column

    #Calculated
    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and add the query to the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the value in console
        Then Verify the query is added to the console
        Then user click on create view button
        Then Verify the view is created

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and without adding the query to the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then Verify the error message should be shown up

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and adding fields into it

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and adding functions into it

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and multiple functions can be added

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Calculated and multiple fields can be added

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify calculated console value contains invalid value
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the invalid value in console
        Then Query invalid message shown up

    @adminui @promotionRuleEngine @PRE005DefineCalculatedFields @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify calculated console value contains valid value
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "calculated" checkbox
        Then console is displayed
        When user enters the valid value in console
        Then Query valid message shown up

    #Aggregated
    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Aggregated and add the query to the console
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the value in console
        Then Verify the query is added to the console

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be cleared from the console for aggregate
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the value in console
        When user click on clear button
        Then Verify the query is cleared from the console

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be edited in the console for aggregate
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the value in console
        When user try to update the values in console
        Then Verify the query is edited in the console

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the query can be copied in the console for aggregate
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the value in console
        When user click on copy button in console
        Then Verify the query is copied in the console

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Aggregated and adding functions into it

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Aggregated and multiple functions can be added

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify column data as Aggregated and multiple fields can be added

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify aggregated console value contains invalid value
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the invalid value in console
        Then Query invalid message shown up

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify aggregated console value contains valid value
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the column accordion
        When user click on the create new column button
        When user enter the column name
        When user select the column type
        When user click on the create button
        When user click on the column accordion
        When user click on the column
        When user selects the "aggregated" checkbox
        Then console is displayed
        When user enters the valid value in console
        Then Query valid message shown up

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify more than one method for column data calculations can be added

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the calculated datas are stored in the manually added column

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple methods for column data can be calculated and stored in the manually added column

    @adminui @promotionRuleEngine @PRE003DataAggregationGrouping @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the method for column data calculations can be calculated aswell as aggregated

    #Join accordion
    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join accordion is expanded
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        Then Verify the join accordion is expanded

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join accordion is collapsed
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user click on the join accordion
        Then Verify the join accordion is collapsed

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join table dropdown list in join accordion contains all the selected tables in both left and right side
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        Then Verify the join table dropdown list contains all the selected tables

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join type dropdown list in join accordion contains all the join types in join type dropdown list
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        Then Verify the join type dropdown list contains all the join types

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the columns dropdown in the join condition contains all the columns from the selected table
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        Then Verify the columns dropdown contains all the columns from the selected table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify view creation without join
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column values in the left side after selecting the left table in join accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user select the left table
        Then values in the left side should be displayed

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column values in the right side after selecting the right table in join accordion
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user select the right table
        Then values in the right side should be displayed

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating the join with same table name in left and right join side
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user select the left table with same name as right table
        When user select the right table with same name as left table
        When user select the column in left side
        When user select the column in right side
        When user click on the create join button
        Then Error message is shown up

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the same join cannot be created (same table and same join type)
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user select the left table
        When user select the right table
        When user select the join type
        When user selects the join condition in the 1st join
        When user click on add join button
        When user select the left table
        When user select the right table
        When user select the join type
        When user selects the join condition in the 2nd join
        When user click on the create view button
        Then Error message is shown up

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join column should show up all the columns from the selected table
        When user click on "Foundation Tools" tab
        When user click on "View Builder" sub tab
        When user click on create view button in view builder page
        When user click on the select table button
        Then Verify the select table overlay is displayed
        When user select the table
        Then Verify the selected table is added in Table section
        When user click on the create view button
        Then Verify the view is created
        When user click on the join accordion
        When user select the left table
        When user select the right table
        Then Verify the join column should show up all the columns from the selected table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding inner joins for two different tables and check the results should contain only the similar records from both tables

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the join with incorrect join condition (i.e, with one join column having unique id and with another join column having numeric type)

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the join with incorrect join condition (i.e, with one join column having numeric and with another join column having string type)

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the join with correct join condition (i.e, with one join column having numeric and with another join column having numeric type)

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the join with correct join condition (i.e, with one join column having string and with another join column having string type)

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the join with correct join condition (i.e, with one join column having unique id and with another join column having unique id)

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding more than one join column condition in the join and having more than one join

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the inner join result should contain all matching records from both tables

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify that the inner join result should contain null values when the matching records common key value is null

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the inner join result should be empty if there are no matching records

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the inner join result with one empty table should return empty matching data

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding left joins for two different tables and check the results should contain all the records from the left table and matching records from the right table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the left join result should contain all records from the left table and matching records from the right table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the left join result should contain all records from the left table including records with null values for common key

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the left join result should contain all records from the left table and null values for the right table if there are no matching records

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify left join result should contain all records from the left table if the right table is empty

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the right join result should contain all records from the right table and matching records from the left table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the right join result should contain all records from the right table and matching records from the left table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the right join result should contain all records from the right table including records with null values for common key

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the right join result should contain all records from the right table and null values for the left table if there are no matching records

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify right join result should contain all records from the right table if the left table is empty

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding multiple join

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the join

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding the same join should show error message

    #Join Condition

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the join condition can be added

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding multiple join conditions

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the join condition

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joins can be added

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the first column in join condition has all the columns from the first table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the first column in join condition column can be selected from the dropdown

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the second column in join condition has all the columns from the second table

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the second column in join condition column can be selected from the dropdown

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joints can be added with different join conditions

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joints can be added with multiple join conditions

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joint condition where the values can be displayed based on the conditions added to the joint

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joint condition where the values does not comes under the condition is not displayed

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple joints with the value from joint a have been considered and then comparing it with the value from joint b

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the values from joint 1 and joint 2 and joint 3 where the output values should be common in all the joints

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the values from joint 1 and joint 2 and joint 3 does not have any values which are not common in all the joints

    @adminui @promotionRuleEngine @PRE002ConfigureDataAssociations @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the values from multiple joints with multiple joint conditions where the output values should be common in all the joints and conditions




    #Filter
    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filter condition can be added

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify more than one filter condition can be added

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the list of table can be selected in the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column can be selected according to the selected table in the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the other column that is not in the selected table cannot be displayed in the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the function can be added in the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the filter group

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify deleting the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding string column in filter condition with equal operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding string column in filter condition with greater than operator should throw error

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding string column in filter condition with less than operator should throw error

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding string column in filter condition with not equal to operator should throw error

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding numeric column in filter condition with equal operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding numeric column in filter condition with greater than operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding numeric column in filter condition with less than operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding numeric column in filter condition with not equal to operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify saving without the value in filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the column values in filter condition after selecting the table

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the table dropdown in filter condition if more than one table is present in the view

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding more than one filter with "and" operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding more than one filter with "or" operator

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify adding more than one filter with all filter having same column, same function and same value

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filter condition by adding the Having class

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the matching values are displayed based on the filer condition with Having class

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the non matching values from Having class is not displayed in the promotion views


    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Having class can be deleted from the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filters with Where class and Having class can be added at the same instance

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the manually created columns can be displayed in the filter condition

    @adminui @promotionRuleEngine @PRE004ImplementFilteringOptions @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filter can be done based on the manually created columns



    # enable manual query
    @adminui @promotionRuleEngine @PRE006FinalizeView @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify enable manual query can be enabled

    @adminui @promotionRuleEngine @PRE006FinalizeView @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify enable manual query can be disabled

    @adminui @promotionRuleEngine @PRE006FinalizeView @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify enabling manual query and click on create view

    @adminui @promotionRuleEngine @PRE006FinalizeView @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify enabling manual query and adding the invalid query and click on create view

    @adminui @promotionRuleEngine @PRE006FinalizeView @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify enabling manual query and adding the valid query and click on create view


    # valid views
    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify view can be created for user product sales value per month

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify view can be created for user product sales quantity for a period of time

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify view can be created for eligible product sales quantity and value for users in an organization

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify view can be created for user product invoice claim and approval status

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the program specific tables are not displayed in the select table overlay

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the newly created tabels are displayed in the select table overlay

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the existing views are displayed in the select table overlay

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the existing views can be selected in the select table overlay

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the multiple views can be selected from the select table overlay for creating a new view

    @adminui @promotionRuleEngine @PRE001SelectModelsViews @scenario @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the values from multiple views inside the view

# What will be the sample data, Publish for the view
# need to confirm is it top (5) rows on what basic !?
# draft and publish difference querying or creating the view table. after publish no edit

# what if the selected column name is modified and now user tries to unselect that column
# in popup click on add is saving the alias name

# is description in view is mandatory !?
# yes

# what is enable manual query meant by !?
# validate button should be there in manual query

# What is the value which can be give o column data !?
# all data type should be there for a column to get created

# What fields can be added to the console and how
# will be a helper i icon to show popup and provide data to it

# What are all the functions which can be added to the console !?
# yet to be provide the list of functiong

# which column values will be aded inside the console section on calculated type. E.g. if (achievement > target){"Target Achieved"} then how system validates the achievement column and target column
# What are all the functions available for calculated and aggregate type ?


# Need to add test cases for Having clause
# Having will be removed and added in calculated and aggregate section

# in enabling query, are we going to validate the query entered
# yes, validate button will be there