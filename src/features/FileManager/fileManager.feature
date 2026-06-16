Feature: Filemanager

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Kadarkarai Selvam. I
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/(Tenant Id)/program/(Program Id)/filemanager/uploadedlogs/

    Background: Navigate to FileUpload logs
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
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Navigate to FileUploads page with list of uploaded file logs
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed

    @adminui @filemanager @FIP001UploadCSVFile @system @search @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Search for a specific uploaded file log in the list
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the search bar is displayed
        When User enters the "specific file name" file in the search bar
        Then Verify the "specific file name" file is displayed in the list

    @adminui @filemanager @FIP001UploadCSVFile @system @search @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Search for a invalid uploaded file log in the list
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the search bar is displayed
        When User enters the "Invalid file name" file in the search bar
        Then Verify the "Invalid file name" file is not displayed in the list

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the total records matches the count of uploaded file logs in the list
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the total records count matches the count of uploaded files in the list

    @adminui @filemanager @FIP001UploadCSVFile @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pagination is displayed when the uploaded file logs exceeds the page limit
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the pagination is displayed when the uploaded file logs exceeds the page limit

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by File Name
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "File Name" column
        When User clicks on the sort icon for the "File Name" column
        Then Verify the uploaded file logs are sorted by "File Name" in "ascending" order
        When User clicks on the sort icon for the "File Name" column
        Then Verify the uploaded file logs are sorted by "File Name" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by Date Run
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "Date Run" column
        When User clicks on the sort icon for the "Date Run" column
        Then Verify the uploaded file logs are sorted by "Date Run" in "ascending" order
        When User clicks on the sort icon for the "Date Run" column
        Then Verify the uploaded file logs are sorted by "Date Run" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the yesterday processed file
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Yesterday" processed file shows the date of Run

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the today processed file
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Today" processed file shows the date of Run

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by Status
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "Status" column
        When User clicks on the sort icon for the "Status" column
        Then Verify the uploaded file logs are sorted by "Status" in "ascending" order
        When User clicks on the sort icon for the "Status" column
        Then Verify the uploaded file logs are sorted by "Status" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by Rows
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "Rows" column
        When User clicks on the sort icon for the "Rows" column
        Then Verify the uploaded file logs are sorted by "Rows" in "ascending" order
        When User clicks on the sort icon for the "Rows" column
        Then Verify the uploaded file logs are sorted by "Rows" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by Imported
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "Imported" column
        When User clicks on the sort icon for the "Imported" column
        Then Verify the uploaded file logs are sorted by "Imported" in "ascending" order
        When User clicks on the sort icon for the "Imported" column
        Then Verify the uploaded file logs are sorted by "Imported" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the processed file which is having more than one imported rows
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Imported" processed file shows the count of imported rows

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the processed file which is having zero imported rows
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Imported" processed file shows the count of imported rows

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Sort the uploaded file logs by Errors
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the sort icon is displayed for the "Errors" column
        When User clicks on the sort icon for the "Errors" column
        Then Verify the uploaded file logs are sorted by "Errors" in "ascending" order
        When User clicks on the sort icon for the "Errors" column
        Then Verify the uploaded file logs are sorted by "Errors" in "descending" order

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the processed file which is having zero errors
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Errors" processed file shows the count of errors

    @adminui @filemanager @FIP001UploadCSVFile @navigation @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the processed file which is having more than one errors
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the "Errors" processed file shows the count of errors

    #FIP003MonitorProcessingPipeline
    @adminui @filemanager @FIP001UploadCSVFile @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Upload the CSV file
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is displayed in the list

    #FIP003MonitorProcessingPipeline
    @adminui @filemanager @FIP001UploadCSVFile @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Upload with invalid format file
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the invalid format file
        When User clicks on "Submit" button in upload popup
        Then "Error" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is not displayed in the list

    @adminui @filemanager @FIP001UploadCSVFile @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Upload the csv file with no records
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with no records
        When User clicks on "Submit" button in upload popup
        Then "Error" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is not displayed in the list

    @adminui @filemanager @FIP001UploadCSVFile @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the size of the uploaded file should not exceed the limit
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with size within the limit
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up

    @adminui @filemanager @FIP001UploadCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when the size of the uploaded file exceeds the limit
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with size exceeds the limit
        When User clicks on "Submit" button in user upload popup
        Then "Error" message shown up

    @adminui @filemanager @FIP001UploadCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to view the uploaded file data
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up

    #FIP001UploadCSVFile #FIP014DownloadSingleorMultipleFiles
    @adminui @filemanager @FIP004ViewDownloadProcessedData @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to download the uploaded file
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is displayed in the list
        When User click on the elipsis icon of the "uploaded" file
        Then Verify the "Download" option is displayed in the uploaded file
        When User clicks on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload

    @adminui @filemanager @FIP004ViewDownloadProcessedData @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file getting downloaded
        When user click on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload

    @adminui @filemanager @FIP004ViewDownloadProcessedData @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file contains the upload status and error column in the downloaded file
        When user click on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload
        When User views the downloaded file
        Then Verify the upload status and error column is displayed in the downloaded file

    @adminui @filemanager @FIP001UploadCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to track the progress of data transformation
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up

    @adminui @filemanager @FIP001UploadCSVFile @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data error can be tracked at the individual row level
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with data error
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is displayed in the list
        When User click on the elipsis icon of the "uploaded" file
        Then Verify the "Download" option is displayed in the uploaded file
        When User clicks on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload
        When User views the downloaded file from the File Upload
        Then Verify the error message is displayed in the data error row

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can specify the process pipeline to transform the data
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up

    # When User click on "Foundation Tools"
    # When User click on the "Workflow Builder"
    # Then Verify the "Workflow Builder" page is displayed
    # When User click on the "New Workflow" button
    # When User enters the mandatory fields in the Create Flow Popup
    # When User click on the "Create" button
    # Then Verify the "Workflow" is created

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add node to the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        Then Verify the list of workflows are displayed
        When User search for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the elipsis icon of the "particular" workflow
        Then Verify the "View" option is displayed for the "particular" workflow
        When User clicks on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Specific Node" node
        When User adds a "particular" node to the workflow
        Then Verify the "particular" node is added to the workflow
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add multiple node to the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        Then Verify the list of workflows are displayed
        When User search for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the elipsis icon of the "particular" workflow
        Then Verify the "View" option is displayed for the "particular" workflow
        When User clicks on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Specific Node" node
        When User adds a "particular" node to the workflow
        Then Verify the "particular" node is added to the workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Specific Node" node
        When User adds a "particular" node to the workflow
        Then Verify the "particular" node is added to the workflow
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to reorder the steps in the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        Then Verify the list of workflows are displayed
        When User search for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the elipsis icon of the "particular" workflow
        Then Verify the "View" option is displayed for the "particular" workflow
        When User clicks on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User drag and drop the "particular" node
        Then Verify the "particular" node is reordered
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to remove the steps from the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        Then Verify the list of workflows are displayed
        When User search for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the elipsis icon of the "particular" workflow
        Then Verify the "View" option is displayed for the "particular" workflow
        When User clicks on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User selects the "particular" node to be removed from the workflow
        When User click on the "particular" node
        Then Verify the "particular" node property is displayed
        When User click on the "Delete Node" button
        Then Verify the "particular" node is removed from the workflow
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @system @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message is displayed for invalid configuration of the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Specific Node" node
        When User adds a "particular" node to the workflow
        When User adds a multiple nodes to complete the workflow
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        When User click on the "Submit" button in the workflow page
        When User tries to upload the csv file using the created invalid workflow
        Then "Error" message shown up

    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the steps of the workflow is executed in the particular order
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed for the particular execution order

    #FIP003MonitorProcessingPipeline
    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when the workflow is not executed in the particular order
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are not executed in the particular execution order
        Then "Error" message shown up

    #FIP003MonitorProcessingPipeline
    @adminui @filemanager @FIP002SpecifyPipelineforCSVFile @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when the particular step fails in the workflow
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed for the particular execution order
        When Workflow step fails in the particular step
        Then "Error" message shown up

    #FIP004ViewDownloadProcessedData
    @adminui @filemanager @FIP003MonitorProcessingPipeline @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to track the progress of file processing
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed for the particular execution order
        Then Verify the user can able to track the progress of file processing

    @adminui @filemanager @FIP003MonitorProcessingPipeline @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to navigate to other pages when the upload is in progress
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        When User clicks on "Foundation Tools"
        Then Verify the file has been uploaded Successfully when the user navigates to other pages

    @adminui @filemanager @FIP003MonitorProcessingPipeline @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file processing system can be scaled to handle multiple file uploads parallely
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User clicks on the dropdown in the Choose Template
        Then Verify the list of templates are displayed according to the workflow created for the specific data transform
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When User uploads the csv file
        When User clicks on "Submit" button in upload popup
        Then Verify the user can able to see the progress of data transformation
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        When User uploads the multiple files at the same time
        Then Verify the multiple files are uploaded parallely
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed for the particular execution order
        Then Verify the user can able to track the progress of file processing

    #FIP014DownloadSingleorMultipleFiles
    @adminui @filemanager @FIP004ViewDownloadProcessedData @scenario @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded file should be in the same order when it is uploaded
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the uploaded "uploaded" file is displayed in the list
        When User click on the elipsis icon of the "uploaded" file
        Then Verify the "Download" option is displayed in the uploaded file
        When User clicks on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload
        When User views the downloaded file from the File Upload
        Then Verify the downloaded file is in the same order as the uploaded file

    #FIP014DownloadSingleorMultipleFiles
    @adminui @filemanager @FIP004ViewDownloadProcessedData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to download the multiple files parallelly
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the list of uploaded files are displayed
        When User click on the elipsis icon of the uploaded files
        Then Verify the "Download" option is displayed in the uploaded files
        When User clicks on the "Download" button in the uploaded files
        Then Verify the multiple files are downloaded parallelly from the File Upload

    @adminui @filemanager @FIP004ViewDownloadProcessedData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the access to file upload has been restricted to the selected users
        When Super admin restricts the role access specific to the users
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the list of uploaded files are displayed
        Then Verify the user should not able to access the files in the file upload page

    #FIP014DownloadSingleorMultipleFiles
    @adminui @filemanager @FIP004ViewDownloadProcessedData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded file should have unique file name
        When User click on "Admin Toolkit"
        When User click on the "File Uploads" submenu
        Then Verify the "File Uploads" page is displayed
        Then Verify the list of uploaded files are displayed
        When User click on the elipsis icon of the "uploaded" file
        Then Verify the "Download" option is displayed in the uploaded file
        When User clicks on the "Download" button in the uploaded file
        Then Verify the file is downloaded from the File Upload
        When User views the downloaded file from the File Upload
        Then Verify the downloaded file should have unique file name
        When Multiple files are with same name are downloaded
        Then Verify the downloaded files should be renamed with sequential order

    @adminui @filemanager @FIP005HandleLargeVolumeofData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system can able to process large volume of data
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with large volume of data
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        When User can able to do multiple file uploads with large volume of data
        Then Verify the system can able to process large volume of data

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to configure the data storage location at tenant level
        When User creates a location from the tenant level
        When User configures the location to any cloud storage
        Then Verify the location is configured in cloud storage

    @adminui @filemanager @FIP006DataStorageLocation @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to configure the workflow for the data storage location
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Write" node
        When User adds a "Write" node to the workflow
        When User selects the "Read" node
        When User adds the "Read" node to the workflow
        Then Verify the two nodes are added
        When User connects the workflow nodes
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        When User click on the "Submit" button in the workflow page
        Then Verify the workflow is executed
        Then Verify the data is stored in the configured location

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to upload the file form the configured folder in tenant side
        When User is on the configured location in the tenant side
        Then Verify the folder is configured in "cloud" storage
        When User drops the file to the configured folder from the tenant side
        Then Verify the file is uploaded from the configured folder to "cloud" storage
        Then Verify the workflow nodes are executed
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file


    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured changes are version controlled
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User updates the "particular" workflow
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the updated workflow in created in a copy of previous workflow
        Then Verify the version is mentioned for the updated workflow

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the authorization is required to access the data storage location
        When User is on the configured location in the tenant side
        Then Verify the folder is configured in "cloud" storage
        When User tries to access the folder without authorization
        Then "Error" message shown up

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification are triggered on configuring the changes
        When User is on the configured location in the tenant side
        When User updates the configuration of the folder
        Then Verify the notification is triggered on configuring the changes

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to roll back to the previous version of the configured changes
        When User in the configured location in the tenant side
        Then Verify the folder is configured in "cloud" storage
        Then Verify the version is mentioned for the updated workflow
        Then Verify the list of versions are displayed
        When User selects the previous version
        Then Verify the user can able to roll back to the previous version of the configured changes

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data can be migrated from previous configuration to the new configuration
        When User is on the configured location in the tenant side
        Then Verify the folder is configured in "cloud" storage
        When User user tries to Create a new configuration
        Then Verify the data can be migrated from previous configuration to the new configuration

    @adminui @filemanager @FIP006DataStorageLocation @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file can be pulled from the <cloud> location
        When User is on the configured location in the tenant side
        Then Verify the folder is configured in <cloud> storage
        When User pulls the file from the configured location
        Then Verify the file is pulled from the configured location
        Examples:
            | cloud              |
            | AWS S3             |
            | RDS                |
            | Azure Blob Storage |

    @adminui @filemanager @FIP007ScheduleProcessingTasks @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to schedule a time for pickup the file from the configured location
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User adds a workflow node "Schedule Workflow node"
        When User schedules the workflow for a specific time duration
        Then Verify the workflow is scheduled for the specific time duration
        When User uploads the file to the configured location
        Then Verify the file is picked up from the configured location at the scheduled time

    @adminui @filemanager @FIP007ScheduleProcessingTasks @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file cannot be pickedup before the scheduled time
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User adds a workflow node "Schedule Workflow node"
        When User schedules the workflow for a specific time duration
        Then Verify the workflow is scheduled for the specific time duration
        When User uploads the file to the configured location
        Then Verify the file is not picked up from the configured location before the scheduled time

    @adminui @filemanager @FIP007ScheduleProcessingTasks @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to process multiple files from different tenant
        When User uploads the multiple files from multiple tenants
        When click on the "Admin Toolkit" of the tenant
        When click on the "File Uploads" submenu
        Then Verify the list of uploaded files are displayed
        When User click on the elipsis icon of the uploaded files
        Then Verify the "Download" option is displayed in the uploaded files
        When User clicks on the "Download" button in the uploaded files
        Then Verify the multiple files are downloaded parallelly from the File Upload

    @adminui @filemanager @FIP007ScheduleProcessingTasks @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the multiple file upload is processed without change in the sequential order
        When User uploads the multiple files from a tenant program
        When User click on the "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed in the sequential order
        Then Verify the files are processed without change in the sequential order

    @adminui @filemanager @FIP007ScheduleProcessingTasks @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the appropriate message when the file is waiting for processing
        When User uploads the multiple files from a tenant program
        When Already an upload file is inprocess
        When User uploaded file is in the queue
        Then Appropriate message is displayed when the file is waiting for processing

    @adminui @filemanager @FIP008Workflow @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add the custom modification fields in the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        Then Verify the Add Param button is displayed
        When User click on the "Add Param" button under params
        When User enters the name, type and value in params
        Then Verify the custom modification fields are added to the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the custom modification fields are added to the workflow

    @adminui @filemanager @FIP008Workflow @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to add multiple custom modification fields in the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        Then Verify the Add Param button is displayed
        When User click on the "Add Param" button under params
        When User enters the name, type and value in params
        Then Verify the custom modification fields are added to the functional node
        When User add multiple custom modification fields to the functional node
        Then Verify the multiple custom modification fields are added to the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the multiple custom modification fields are added to the workflow

    @adminui @filemanager @FIP008Workflow @scenario @delete @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to remove the custom modification fields in the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        When User clicks on the delete button in the custom param fields
        Then Verify the custom modification fields are removed from the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the custom modification fields are removed from the workflow

    @adminui @filemanager @FIP008Workflow @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to update the custom modification fields in the workflow
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        When User updates the existing custom param fields
        Then Verify the custom modification fields are updated in the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the custom modification fields are updated in the workflow

    @adminui @filemanager @FIP009PreviewProcessedData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can preview the processed data when a file is uploaded
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed

    @adminui @filemanager @FIP009PreviewProcessedData @system @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can cancel the file upload when the file is in progress
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        When User clicks on "Cancel" button in upload popup
        Then Verify the file upload is cancelled

    @adminui @filemanager @FIP009PreviewProcessedData @system @list @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pagination is displayed when the file has more number of rows
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with more number of rows
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        Then Verify the pagination is displayed when the file has more number of rows

    @adminui @filemanager @FIP009PreviewProcessedData @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the custom validations are applied before the file is uploaded
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        When User click on the "Add Param" button under params
        When User enters the name, type and value in params
        Then Verify the custom modification fields are added to the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the change in custom validations are applied when file is uploaded
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        Then Verify the custom validation is applied for the uploaded file

    @adminui @filemanager @FIP009PreviewProcessedData @scenario @special @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the custom validations are not applied when the file is uploaded
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Functional Node" button from the workflow page
        Then Verify the popup is displayed with the list of custom modification fields
        When User click on the "Add Param" button under params
        When User enters the name, type and value in params
        Then Verify the custom modification fields are added to the functional node
        When User click on the "Save Properties" button in the functional node
        Then Verify the custom modification fields are saved to the functional node
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        Then Verify the custom validation is not applied for the uploaded file when the file upload is in process

    @adminui @filemanager @FIP009PreviewProcessedData @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the validation of record should be displyed in the view data page
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file
        Then Verify the file should be uploaded and displayed
        Then Verify the failed validations are displayed in the view data page

    @adminui @filemanager @FIP010ExternalApplicationIntegration @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to configure the API
        When User configures the API for file upload
        When User integrates the Upload API with external application
        Then Verify the API is configured for file upload
        When User uploads the file from the external application
        Then Verify the file is uploaded from the external application

    @adminui @filemanager @FIP010ExternalApplicationIntegration @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system can identify the existing record and process only the updated records in file upload
        When User click on upload csv badge
        When User is on the FileUploads Page
        Then Verify the Choose Template dropdown is displayed
        When User selects the "Specific Template" template for the data transform
        Then Verify the "Specific Template" template is selected
        When Upload the csv file with existing record and updated record
        Then Verify the file should be uploaded and displayed
        When User clicks on "Submit" button in upload popup
        Then Column and Rows of the uploaded csv file is displayed
        When User clicks on "Submit" button in upload page
        Then "Successful" message shown up
        Then Verify the system can identify the existing record
        Then Verify the system can uploads only the updated records

    @adminui @filemanager @FIP011TrackHistoryStatusOfTask @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can track the history of the processed CSV file
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the user can able to check the "Date and Time" of the file upload

    @adminui @filemanager @FIP011TrackHistoryStatusOfTask @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can track the status of the processed CSV file
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        Then Verify the user can able to check the "Status" of the file upload

    @adminui @filemanager @FIP012ConnectSFTPserver @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to connect the SFTP server
        When User creates a location for the Tenant side upload
        When User configures the SFTP server
        When User connect the SFTP server to the Tenant side upload location
        Then Verify the SFTP server is connected to the Tenant side upload location

    @adminui @filemanager @FIP012ConnectSFTPserver @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the processed files are moved to a seperate folder
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the processed files are moved to a seperate folder

    @adminui @filemanager @FIP013BrowseSFTPdirectoryServer @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to browse the SFTP directory server
        When Uploaded file is transfered to the SFTP server
        When User login to the SFTP server
        Then Verify the user can able to browse the SFTP directory server

    @adminui @filemanager @FIP015MonitorProcessofFileDownload @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system should show the progress of files getting processed from the SFTP server
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the files are processed with the flow of workflow nodes
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the Jobs from the Workflow page
        Then Verify the uploaded job is created for the uploaded file
        Then Verify the workflow steps are executed
        Then Verify the user can able to track the progress of file processing

    @adminui @filemanager @FIP015MonitorProcessofFileDownload @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification is triggered when the file is started processing
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the notification is triggered when the file is started processing

    @adminui @filemanager @FIP015MonitorProcessofFileDownload @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification is triggered when the file is completed processing
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the notification is triggered when the file is completed processing

    @adminui @filemanager @FIP015MonitorProcessofFileDownload @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification is triggered when the file is failed processing
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the notification is triggered when the file is failed processing

    #FIP017CreateSFTPjob
    @adminui @filemanager @FIP016ManageSFTPserverConfig @scenario @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can setup the SFTP configuration
        When User click on "Foundation Tools"
        When User click on the "Workflow Builder"
        Then Verify the "Workflow Builder" page is displayed
        When User click on the "New Workflow" button
        When User enters the mandatory fields in the Create Flow Popup
        When User click on the "Create" button
        Then Verify the "Workflow" is created
        When User click on the "View" button for the "particular" workflow
        Then Verify the "particular" workflow is displayed
        When User click on the "Edit" button of the "particular" workflow
        When User click on the "Add Node" button from the workflow page
        Then Verify the dropdown is displayed with the list of nodes
        When User selects the "Specific Node" node
        When User adds a "SFTP Bucket" node to the workflow
        When User configures the port number, credentials and host name in the SFTP node
        Then Verify the SFTP configuration is setup
        When User click on the "Save Flow" button in the workflow page
        Then Verify the "particular" node is saved to the workflow
        Then Verify the SFTP configuration is setup

    @adminui @filemanager @FIP016ManageSFTPserverConfig @system @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the same file is not processed
        When User is on the configured location in the tenant side
        Then Verify the list of uploaded files are displayed
        When User uploads the file in the tenant side folder
        When Uploaded file is transfered to the SFTP server
        Then Verify the same file is not processed multiple times

    @adminui @filemanager @FIP018Retry @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system has the ability to configure the auto-retry mechanism
        When User uploads the file
        When File Upload got cancelled
        Then Verify the system has the ability to configure the auto-retry mechanism

    @adminui @filemanager @FIP018Retry @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system has the ability to configure the auto-retry count
        When User uploads the File
        When Auto-retry count is configured to "3"
        Then Verify the system has the ability to configure the auto-retry count

    @adminui @filemanager @FIP018Retry @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system has the ability to configure the auto-retry interval
        When User uploads the File
        When Auto-retry interval is configured to "5 minutes"
        Then Verify the system has the ability to configure the auto-retry interval

    @adminui @filemanager @FIP019Status @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system has the ability to display the status for successful upload
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        When User uploads the file
        Then Verify the status of the file is displayed as "Success"

    @adminui @filemanager @FIP019Status @navigation @special @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system has the ability to display the status for Error upload
        When User is on the FileUploads Page
        Then Verify the list of uploaded files are displayed
        When User uploads the file
        Then Verify the status of the file is displayed as "Error"