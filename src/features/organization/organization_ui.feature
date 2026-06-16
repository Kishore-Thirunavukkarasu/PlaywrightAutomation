Feature: Organization Creation through Form and FileUpload
    # created by  = Ruthrakkanth
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/organisation/

    Background: Organization Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        # Then Verify the Hierarchy Creation Popup appears
        # When Click cancel on the hierarchy creation popup
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Organization" submenu
        Then Verify the "Organization" page is displayed
        When Get the TenantId and ProgramId from the url


    @adminui @organisation @ORG003ViewOrganisations @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to Organization page with one organization
        When User is on the Organization page
        Then organization list will be displayed
        Then Count of organization will be displayed in the header

    @adminui @organisation @ORG003ViewOrganisations @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to Organization page with more than 20 organization
        When User is on the Organization page
        Then organization list will be displayed
        Then Count of organization will be displayed
        Then Verify the pagination is displayed

    @adminui @organisation @ORG003ViewOrganisations @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Navigate to organization page with no organization
        Given User navigate to active program page with no organization
        When User is on the Organization page
        Then No organization list will be displayed
        Then Count of organization will be displayed as "0"

    @adminui @organisation @ORG003ViewOrganisations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort Organization list with name
        Then Verify the list of "organization" is displayed
        When User click on sort button in "Name" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Name" in Ascending order
        When User click on sort button in "Name" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Name" in Descending order

    @adminui @organisation @ORG003ViewOrganisations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort Organization list with code
        Then Verify the list of "organization" is displayed
        When User click on sort button in "Code" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Code" in Ascending order
        When User click on sort button in "Code" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Code" in Descending order

    @adminui @organisation @ORG003ViewOrganisations @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Sort Organization list with status
        Then Verify the list of "organization" is displayed
        When User click on sort button in "Status" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Status" in Ascending order
        When User click on sort button in "Status" column in "Audience" screen
        Then Verify the list of "organization" should be sorted by "Status" in Descending order

    @adminui @organisation @ORG003ViewOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Search organization with valid name
        When User is on the Organization page
        When User enters the valid "name" in the search field
        When User click on "Search" button in the organization page
        Then Organization with the valid "name" should be displayed

    @adminui @organisation @ORG003ViewOrganisations @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Search organization with invalid name
        When User is on the Organization page
        When User enters the invalid "name" in the search field
        When User click on "Search" button in the organization page
        Then No organization with the invalid "name" should be displayed

    @adminui @organisation @ORG003ViewOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: User click on three dots in the organization list page
        When User is on the Organization page
        When User selects a organization from the list
        When User click on three dots present next to the Status
        Then User should be provided with the options to "View", "Edit", "Disable" the organization

    @adminui @organisation @ORG003ViewOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: View organization details
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "View" option
        Then View organization page should be displayed with all the details

    @adminui @organisation @ORG004FilterOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the filter functionality
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the filter criteria for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the filter criteria

    @adminui @organisation @ORG004FilterOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user can able to filter based on the org code
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the filter criteria as "Org code" for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the "Org code"

    @adminui @organisation @ORG004FilterOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user can able to filter based on the hierarchy information
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the filter criteria as "Hierarchy" for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the "Hierarchy"

    @adminui @organisation @ORG004FilterOrganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user can able to filter based on the multiple criteria
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the multiple filter criteria for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the filter criteria

    @adminui @organisation @ORG005Exporttofile @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filtered data should be exported as a csv file
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the filter criteria for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the filter criteria
        When User clicks on "Export" button in Organisation page
        Then User should able to export the filtered organization data to a CSV file

    @adminui @organisation @ORG005Exporttofile @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the filter with multiple criteria should be exported as a csv file
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the multiple filter criteria for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the filter criteria
        When User clicks on "Export" button in Organisation page
        Then User should able to export the filtered organization data to a CSV file

    @adminui @organisation @ORG005Exporttofile @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate all the filtered data should be exported as a csv file
        When User is on the Organization page
        When User selects the Filter icon from organization page
        When User enters the filter criteria for organization
        When User clicks on "Apply" button in organization filter
        Then Displayed data should get filtered based on the filter criteria
        When User clicks on "Export" button in Organisation page
        Then User should able to upload all the filtered data that is displayed in the screen to a CSV file

    @adminui @organisation @ORG005Exporttofile @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Download the organization csv file
        When User is on the Organization page
        Then organization list will be displayed
        When User clicks on "Export" button in the organization page
        Then User should able to download the organization list as a CSV file

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create a new organization <Organization> with all mandatory fields
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in the form for <Organization> organization
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up
        Examples:
            | Organization      |
            | Head Organization |
            | Zenith            |
            | Pinacle           |

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Create a new organization without mandatory fields
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User removes the mandatory fields from organization form
        When User click on "Submit" button in Add organization page
        Then "Error" message shown up

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding Organization with duplicate code
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User enters the existing "code" in the organization form
        When User click on "Submit" button in Add organization page
        Then "Error" message shown up

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Create a new organization by entering invalid values
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters invalid values in the organization form
        When User click on "Submit" button in Add organization page
        Then "Error" message shown up

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the organization is not active without checking the active checkbox
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User unchecks the "Active" checkbox
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the organization is active with checking the active checkbox
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User checks the "Active" checkbox
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Configure the organization with hierarchy
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User click on "Add Hierarchy" button in Add organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG011AddHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Configure the organization with multiple Hierarchies
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User clicks on "Add Hierarchy" button in Add organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User clicks on "Add Hierarchy" button and adds multiple Hierarchies
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG011AddHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user can add upto three hierarchy nodes
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User clicks on "Add Hierarchy" button in Add organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User clicks on "Add Hierarchy" button and adds upto three Hierarchies
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG011AddHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user can create more than three hierarchy nodes
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User clicks on "Add Hierarchy" button in Add organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User clicks on "Add Hierarchy" button and adds more than three Hierarchies
        When User click on "Submit" button in Add organization page
        Then "Error" message shown up

    @adminui @organisation @ORG007Createparent_Childrelationship @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new organization can be marked as parent organization
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User select the "Select Parent Organization" from the parent organization dropdown in organization form
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG007Createparent_Childrelationship @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new organization can be marked as child organization
        When User is on the Organization page
        When User click on "Add organization" button to create a new organization
        Then Add Organization form should be displayed
        When User enters all the mandatory fields in organization form
        When User select the "Child Organization" from the parent organization dropdown in organization form
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG008Viewchildorganisations @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the child organization is displayed in organization view screen
        When User is on the Organization page
        When User selects a organization which has child organization from the list
        When User click on the elipsis button in the organization
        When User click on "View" option
        Then Child organization should be displayed in the organization view screen

    @adminui @organisation @ORG006CreateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the organization form can be updated based on the change in schema
        When User click on "Foundation Tools"
        When User click on the "Schema Builder" submenu
        Then Verify the "Schemas" page is displayed
        When User updates the organization form from schema builder page
        When User click on "Save" button in schema builder page
        When User click on the "Form Builder" submenu
        Then Verify the "Forms" page is displayed
        When User updates the organization form from form builder page
        When User click on "Save" button in form builder page
        When User click on "Partner Hub"
        When User click on the "Organization" submenu
        Then Verify the "Organization" page is displayed
        When User click on "Add organization" button to create a new organization
        Then Updated form for new organization should be displayed
        When User enters all the mandatory fields in organization form
        When User click on "Submit" button in Add organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Updating the organization details
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User edit the mandatory details for "organization"
        When User click on "Submit" button in Edit organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization with existing name
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User edit the mandatory details for "organization"
        When User enter the existing "name" in the organization form
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization with existing code
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User edit the mandatory details for "organization"
        When User enter the existing "code" in the organization form
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization with existing email
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User edit the mandatory details for "organization"
        When User enter the existing "email" in the organization form
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization with invalid values
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User enter the invalid values in the organization form
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization with missing mandatory fields
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User remove the mandatory fields in the organization form
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Click reset button in the edit flow
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User click on "Reset" button in Edit organization page
        Then All the fields in the organization form should be cleared
        When User click on "Submit" button in Edit organization page
        Then "Error" message shown up

    @adminui @organisation @ORG009UpdateOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Disable the organization
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Disable" option
        Then Organization should be disabled
        Then "Successful" message shown up

    @adminui @organisation @ORG012UpdateHierarchy @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Deleting organization hierarchy for existing organization
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User click on "Delete Hierarchy" button in Edit organization page
        Then Hierarchy should be deleted from the organization
        When User click on "Submit" button in Edit organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG012UpdateHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Adding organization hierarchy for existing organization
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User click on "Add Hierarchy" button in Edit organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User click on "Submit" button in Edit organization page
        Then "Successful" message shown up

    @adminui @organisation @ORG012UpdateHierarchy @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Updating organization hierarchy for existing organization
        When User is on the Organization page
        When User selects a organization from the list
        When User click on the elipsis button in the organization
        When User click on "Edit" option
        Then Verify the Edit organization page is displayed
        When User click on "Existing Hierarchy" Edit organization page
        When User selects the "Parent Hierarchy" from the dropdown in organization form
        Then Verify the "Hierarchy Level" is displayed based on the "Parent Hierarchy" selected
        When User selects the "Hierarchy Level" from the dropdown in organization form
        Then Verify the "Hierarchy" is displayed based on the "Hierarchy Level" selected
        When User selects the "Hierarchy" from the dropdown in organization form
        When User click on "Submit" button in Edit organization page
        Then "Successful" message shown up

    #***********************************************Upload Scenario*********************************************************#

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Create a new organization through File Upload using valid csv file
        When User is on the Organization page
        When User click on upload button
        When User enters all the mandatory columns in the csv file for "Organization"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload


    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization with invalid file format
        When User is on the Organization page
        When User click on upload button
        When User Choose the template for the "Organization" csv file
        When Upload the file with invalid format "Organization"
        Then Verify the file should not be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Drag and Drop the organization csv file to upload
        When User is on the Organization page
        When User click on upload button
        When User enters all the mandatory columns in the csv file for "Organization"
        When User Choose the template for the "Organization" csv file
        When User Drag and Drop the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with invalid data
        When User is on the Organization page
        When User click on upload button
        When User enters all the mandatory columns in the csv file for "Organization" with invalid data
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with invalid data "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with invalid column data type
        When User is on the Organization page
        When User click on upload button
        When User enters all the mandatory columns in the csv file for "Organization" with invalid column data type
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with invalid column data type "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with missing mandatory fields
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with missing mandatory fields
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with missing mandatory fields "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with missing column
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with missing column
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with missing column "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with invalid column name
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with invalid column name
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with invalid column name "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with additional column
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with additional column
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with additional column "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with existing organization
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with existing organization
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Disable the organization through file upload
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" when column type as "Add"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with change in file name
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with change in file name
        When User Choose the template for the "Organization" csv file
        When Upload the csv file with change in file name "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with different template
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization"
        When User Choose the different template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file without any data
        When User is on the Organization page
        When User click on upload button
        When User Choose the template for the "Organization" csv file
        When Upload the csv file without any data "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with length of the fields are greater than maximum length
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with length of the fields are greater than maximum length
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with configuring the hierarchy
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with hierarchy details
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with configuring the parent organization
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with parent organization details
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with configuring the invalid hierarchy details
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with invalid hierarchy details
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file with configuring the invalid parent organization details
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization" with invalid parent organization details
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        Then Verify the file should be uploaded and displayed
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with invalid data
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with invalid data when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with invalid column data type
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with invalid column data type when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with missing mandatory fields
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with missing mandatory fields when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with missing column
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with missing column when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with character length greater than maximum length
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with character length greater than maximum length when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Error" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with hierarchy details
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with hierarchy details when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Update the organization details through file upload with parent organization details
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns for existing organization in the csv file for "Organization" with parent organization details when column type as "Update"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file for existing organization "Organization"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up

    @adminui @organisation @ORG010UploadOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file and then click on Delete button
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        When User click on "Delete" button in Upload file page
        Then Selected CSV file should disappear from the screen

    @adminui @organisation @ORG010UploadOrganisation @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Uploading organization file and then click on Close button
        When User is on the Organization page
        When User click on upload button
        When User enters the all the mandatory columns in the csv file for "Organization"
        When User Choose the template for the "Organization" csv file
        When Upload the csv file "Organization"
        When User click on "Close" button in Upload file page
        Then User should be taken back to the Organisation page

    @adminui @organisation @ORG015RBACforOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the scenario of user having only view access
        When User logs in with the account which has view only access
        When User choose the specific tenant and program
        When User click on "Partner Hub"
        When User click on the "Organization" submenu
        Then Verify the "Organization" page is displayed
        When User tried to edit the organization
        Then Verify it should not be editable, create or delete the Organisation

    @adminui @organisation @ORG015RBACforOrganisation @system @delete @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the scenario of user having all the access
        When User logs in with the account which has all the access
        When User navigate to "Organization" tab
        Then User will be able to create, update, delete the Organisation

    @adminui @organisation @ORG015RBACforOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user with Create access is not able to update Organisation
        When User logs in with the account which has Create access
        When User navigate to "Organization" tab
        When User tries to update an existing Organization
        Then User will not be able to update the Organisation
        When User click on "Add organization" button to create a new organization
        Then User will be able to add Organisation

    @adminui @organisation @ORG015RBACforOrganisation @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user should not be able to delete the organization without delete access
        When User logs in with the account which has Create access
        When User navigate to "Organization" tab
        When User tries to delete an existing Organization
        Then User will not be able to delete the Organisation

    @adminui @organisation @ORG016Organisationhierarchylog @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the user is able to see the logs of hierarchy node mapping
        When User is on the Organization page
        When User click on the logs button
        Then All the logs of hierarchy node mapping should be displayed

    @adminui @organisation @ORG016Organisationhierarchylog @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate whether the timestamp, change in values are captured in the logs
        When User is on the Organization page
        When User click on the logs button
        Then All the logs of hierarchy node mapping should be displayed
        When User makes some updates on Hierarchy mapping
        Then All the updates including change in values, Timestamp are captured in the organization-hierarchy log table


#**************************************************************Defferred**************************************************************#
# @adminui @organisation @ORG001SetCreationMethod @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
# Scenario: Set Organisation creation method as Manual
#     When User click on program "Settings"
#     When User Sets Organisation creation method as Manual
#     Then Only the Add Organization button should be displayed in the Organisation home page
#     Then Upload button should not be displayed in the Organisation home page

# @adminui @organisation @ORG001SetCreationMethod @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
# Scenario: Set Organisation creation method as Upload
#     When User click on program "Settings"
#     When User Sets Organisation creation method as Upload
#     Then Only the Upload button should be displayed in the Organisation home page
#     Then Add Organization button should not be displayed in the Organisation home page

# @adminui @organisation @ORG001SetCreationMethod @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
# Scenario: Set Organisation creation method as Upload & Manual
#     When User click on program "Settings"
#     When User Sets Organisation creation method as both Upload & Manual
#     Then Only the Add Organization button should be displayed in the Organisation home page
#     Then Add Organization button should not be displayed in the Organisation home page

# @adminui @organisation @ORG001SetCreationMethod @system @configure @functional @negative @reviewed @superadmin @updated @notautomated
# Scenario: Validate the scenario whether user can neglect both upload and manual method
#     When User click on program "Settings"
#     When User unchecks both Upload and manual creation method
#     Then Upload button should not be displayed in the Organisation home page
#     Then Add Organization button should not be displayed in the Organisation home page

# @adminui @organisation @OORG002SetcreationmethodAPI @system @post @functional @positive @reviewed @superadmin @updated @notautomated
# Scenario: Verify the Organisation can be created via API
#     When User click on program "Settings"
#     When User checks the option to create Organisation via API
#     When user pushes the valid organization data to Channel smart via API
#     Then User should able to create Organisation via API
#     Then User should able to see the Organisation data successfully loaded in the application

# @adminui @organisation @OORG002SetcreationmethodAPI @system @post @functional @positive @reviewed @superadmin @updated @notautomated
# Scenario: Verify the Organisation can not be created via API
#     When User click on program "Settings"
#     When User unchecks the option to create Organisation via API
#     When user pushes the valid organization data to Channel smart via API
#     Then User should not be able to create organization via API
#     Then User should not be able to see the Organisation data successfully loaded in the application

# @adminui @organisation @OORG002SetcreationmethodAPI @system @post @functional @negative @reviewed @superadmin @updated @notautomated
# Scenario: Verify Organisation can be created via API with invalid values when configured as upload via api
#     When User click on program "Settings"
#     When User checks the option to create Organisation via API
#     When user pushes the invalid organization data to Channel smart via create API
#     Then User should not be able to create organization via API
#     Then User should not be able to see the Organisation data successfully loaded in the application

# @adminui @organisation @OORG002SetcreationmethodAPI @system @put @functional @negative @reviewed @superadmin @updated @notautomated
# Scenario: Verify Organization can be updated via API with invalid values when configured as upload via api
#     When User click on program "Settings"
#     When User checks the option to create Organisation via API
#     When user pushes the invalid organization data to Channel smart via update API
#     Then User should not be able to create organization via API
#     Then User should not be able to see the Organisation data successfully loaded in the application