Feature: Uploaded Logs

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = 

    Scenario: Navigate to uploaded logs
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs

    Scenario: Navigate to uploaded logs without any logs
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display no logs uploaded yet

    Scenario: Search for the uploaded logs with valid file type
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user search for the uploaded logs with valid file type
        Then it should display the uploaded logs with valid file type

    Scenario: Search for the uploaded logs with invalid file type
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user search for the uploaded logs with invalid file type
        Then it should display no logs uploaded yet

    Scenario: Search for the uploaded logs with filename which is already uploaded
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user search for the uploaded logs with filename which is already uploaded
        Then it should display the uploaded logs with that filename

    Scenario: Search for the uploaded logs with filename which is not uploaded
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user search for the uploaded logs with filename which is not uploaded
        Then it should display no logs uploaded yet

    Scenario: Sort the uploaded logs by filename
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user sort the uploaded logs by filename
        Then it should display the uploaded logs sorted by filename in ascending order

    Scenario: Sort the uploaded logs by filename in descending order
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user sort the uploaded logs by filename in descending order
        Then it should display the uploaded logs sorted by filename in descending order

    Scenario: create the upload with zero valid data and verify it in upload logs
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user create the upload with zero valid data
        Then it should display the status as error and imported count as zero
        Then it should display the error message in Errors column
        When user click on download for that uploaded logs
        Then downloaded file should contain the error message

    Scenario: create the upload with few valid and few invalid data and verify it in upload logs
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user create the upload with few valid and few invalid data
        Then it should display the imported count as the number of valid data
        Then it should display the Rows count as the number of all data
        When user click on download for that uploaded logs
        Then downloaded file should contain the error message for invalid data

    Scenario: create the upload and verify in uploaded logs before it is imported
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user create the upload
        When user navigate to uploaded logs before it is imported
        Then it should display the status as "validated"
        When user click on download for that uploaded logs
        Then File should be downloaded

    # How user can cancel the upload
    Scenario: create the upload and cancels the upload during the validation
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user create the upload
        When user cancels the upload during the validation
        Then it should display the status as "cancelled"
        When user click on download for that uploaded logs
        Then File should be downloaded

    Scenario: Create the upload and verify the upload time for 12am
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user create the upload
        Then it should display the upload time as 12am

    Scenario: Filter the upload by status
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user filter the upload by status
        Then filtered uploads will be displayed

    # what are the different file types
    Scenario: Filter the upload by File type
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user click on filter by type
        Then it should display all file types
        When user click on any of the file type
        Then filtered uploads will be displayed

    Scenario: Filter the upload by Date run
        Given user launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user navigate to the end2end tenant
        Then Verify user navigate to End2End Tenant
        When user navigate to the filemanager - uploaded logs tab
        Then it should display all the uploaded logs
        When user filter the upload by Date run
        Then filtered uploads will be displayed

# setup auto upload is not completed. Need to complete this