Feature: Product and Sales Group

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/filemanager/productandactivity/


    Background: Product Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Sales & Claims"
        When User click on the "Products & Behaviours" submenu
        Then Verify the "Product & Activity" is displayed

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new product group can be added when click on Add Button in Product Page
        When User is on the Product&Activity Page
        When User clicks on the "Add" button from product page
        Then Verify the Add Product Groups form is displayed
        When User enters the mandatory details in the product form for <productGroup>
        When User clicks on the "Save" button from product form
        Then "Successful" message shown up
        Examples:
            | productGroup |
            | Vehicles     |

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new product group can be created with mandatory fields

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new product group cannot be created without mandatory fields

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new product group can be created by selecting the schema name from the drop down

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema and sales schema can be selected from the drop down

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema and sales schema cannot be same

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new product group can be created with default status as active

    @adminui @productBehaviour @PDT001CreatenewProductGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the cancel button will navigate to the product page without creating the product group

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product page has list of existing product groups

    @adminui @productBehaviour @PDT002ViewProductGroups @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product group can be searched by entering the name in search box

    @adminui @productBehaviour @PDT002ViewProductGroups @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify entering the invalid product group name in search box will display no results

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product details like groupName, tableName, no. of products, last updated by, last updated date are displayed in the product group list

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify sorting of product group list by groupName

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify sorting of product group list by tableName

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify sorting of product group list by no. of products

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify sorting of product group list by last updated by

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify sorting of product group list by last updated date

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the pagination is displayed when the product group list exceeds 10 records

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the elipsis from the product group

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product group elipsis has options like productGroup, products, sales, claimForms

    @adminui @productBehaviour @PDT002ViewProductGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the existing product group details can be viewed by selecting the productGroup option from the elipsis

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the existing product group details cannot be edited in view mode

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the existing product group details can be edited by selecting the edit option in the view mode

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the product group name

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the product group schema name

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the status of the product group can be updated

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product group status can be updated as inactive

    @adminui @productBehaviour @PDT002ViewProductGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the cancel button will navigate to the product group list page without updating the product group details

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema name cannot be updated when the product group has products associated with it

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a new product schema by adding the new fields

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema can be updated by adding the new fields before the product group has been created

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema can be updated by editing the existing fields before the product group has been created

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema can be updated by adding the new fields and upload the updated file with existing products

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the product schema by adding a new unique field

    @adminui @productBehaviour @PDT003UpdateProductMetadata @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product schema cannot be updated by adding a new unique field when there is a existing product group

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new products can be added to the product group by uploading the product file
        When User is on the Product&Activity Page
        When User choose the <productGroup> to upload the products
        When User click on the three dots from product group
        When User click on the "Products" option from the elipsis in productGroup
        When User enters all the mandatory columns in the csv file for "ProductVehicles"
        When User click on upload button
        When User Choose the template for the "Products" csv file
        When Upload the csv file "ProductsVehicles"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload
        Examples:
            | productGroup |
            | Vehicles     |


    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a new template for product upload

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema and workflow can be selected to create a new template for product upload

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product file headers can be mapped against the product schema fields

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload the product file with invalid format

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file with different column headers

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file with different column data type

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file with mandatory fields

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file with missing mandatory fields

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file additional column fields that are not in the product schema

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product csv file with duplicate datas

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with different column headers

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with different column data type

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with missing mandatory fields

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with additional column fields that are not in the product schema

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with duplicate datas

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file with invalid format

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the products cannot be deleted by uploading the updated product file

    @adminui @productBehaviour @PDT004AddUpdateProductsbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the cancel button will cancel the product upload process

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the SFTP location can be configured for product upload

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the valid product file to the SFTP location

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the product file to the SFTP location with invalid format

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the product file to the SFTP location with different column headers

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the product file to the SFTP location with missing mandatory fields

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the product file to the SFTP location with additional column fields that are not in the product schema

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the product file to the SFTP location with duplicate datas

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the same product file multiple times to the SFTP location

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product file is processed automatically once it is uploaded to the SFTP location

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location with different column headers

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location with missing mandatory fields

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location with additional column fields that are not in the product schema

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location with duplicate datas

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing products by uploading the updated product file to the SFTP location with invalid format

    @adminui @productBehaviour @PDT005AddUpdateProductsSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the products cannot be deleted by uploading the updated product file to the SFTP location

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify integrating the API's with client's system to upload the product file

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to add the products to the product group by integrating the API's for file upload

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the product file with invalid format through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the product file with different column headers through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the product file with missing mandatory fields through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the product file with additional column fields that are not in the product schema through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the product file with duplicate datas through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing products by uploading the updated product file through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing products by uploading the updated product file with different column headers through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing products by uploading the updated product file with missing mandatory fields through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing products by uploading the updated product file with additional column fields that are not in the product schema through API integration

    @adminui @productBehaviour @PDT006AddupdateproductsAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing products by uploading the updated product file with duplicate datas through API integration

    @adminui @productBehaviour @PDT007ViewUploadedproducts @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the uploaded products are displayed in the product group

    @adminui @productBehaviour @PDT007ViewUploadedproducts @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded products can be viewed in the product page

    @adminui @productBehaviour @PDT007ViewUploadedproducts @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the pagination is displayed when the uploaded products list exceeds 10 records

    @adminui @productBehaviour @PDT007ViewUploadedproducts @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded products has the product details like productId, productDescription, brand, storage, RAM, processor, status

    @adminui @productBehaviour @PDT008SearchUploadedProducts @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded products can be searched by entering the product name in search box

    @adminui @productBehaviour @PDT008SearchUploadedProducts @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify entering the invalid product name in search box will display no results

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales metadata can be created by adding the new fields

    #Where to select the sales metadata

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema name cannot be updated when the sales group has sales data in it

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales metadata can be updated by adding the new fields before the sales group has been created

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales metadata can be updated by editing the existing fields before the sales group has been created

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales schema can be updated by adding the new fields and upload the updated file with existing sales

    @adminui @productBehaviour @PDT009UpdateSalesMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the sales metadata by adding a new unique field

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the new sales can be added to the sales group by uploading the sales file

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a new template for sales upload

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the schema and workflow can be selected to create a new template for sales upload

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales file headers can be mapped against the sales schema fields

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Upload the sales file with invalid format

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file with different column headers

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file with different column data type

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file with mandatory fields

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file with missing mandatory fields

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file additional column fields that are not in the sales schema

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the sales csv file with duplicate datas

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with different column headers

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with different column data type

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with missing mandatory fields

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with additional column fields that are not in the sales schema

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with duplicate datas

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with invalid format

    @adminui @productBehaviour @PDT010AddUpdateSalesbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales cannot be deleted by uploading the updated sales file

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the SFTP location can be configured for sales upload

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the valid sales file to the SFTP location

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the sales file to the SFTP location with invalid format

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the sales file to the SFTP location with different column headers

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the sales file to the SFTP location with missing mandatory fields

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the sales file to the SFTP location with additional column fields that are not in the sales schema

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user can upload the sales file to the SFTP location with duplicate datas

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify Verify uploading the same sales file multiple times to the SFTP location

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales file is processed automatically once it is uploaded to the SFTP location

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with different column headers

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with missing mandatory fields

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with additional column fields that are not in the sales schema

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with duplicate datas

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify updating the existing sales by uploading the updated sales file with invalid format

    @adminui @productBehaviour @PDT011AddUpdateSalesSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales cannot be deleted by uploading the updated sales file to the SFTP location

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify integrating the API's with client's system to upload the sales file

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to add the sales to the sales group by integrating the API's for file upload

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the sales file with invalid format through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the sales file with different column headers through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the sales file with missing mandatory fields through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the sales file with additional column fields that are not in the sales schema through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to upload the sales file with duplicate datas through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing sales by uploading the updated sales file through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing sales by uploading the updated sales file with different column headers through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing sales by uploading the updated sales file with missing mandatory fields through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing sales by uploading the updated sales file with additional column fields that are not in the sales schema through API integration

    @adminui @productBehaviour @PDT012AddupdateSalesAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify client can able to update the existing sales by uploading the updated sales file with duplicate datas through API integration

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales metadata has a unique identifier

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier is displayed in the sales table

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier can be single or multiple fields

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier vales are unique

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier values are not null

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier values are not empty

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales unique identifier values are not duplicate

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin should be able to specify concatenation of multiple fields from sales and product tables as sale unique identifier

    @adminui @productBehaviour @PDT013SaleuniqueIdentifier @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin should be able to conctenate user job role along with other fields for creating sale unique identifier

    @adminui @productBehaviour @PDT014SalesAndClaims @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim information can be stored in a separate table

    @adminui @productBehaviour @PDT014SalesAndClaims @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim information can be linked to the sales information with sale unique identifier

    @adminui @productBehaviour @PDT014SalesAndClaims @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the claim is approved the selling user should not be updated in sales table, it should stay in claim history table only

    @adminui @productBehaviour @PDT015ViewSales @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the uploaded sales details are displayed in the sales group

    @adminui @productBehaviour @PDT015ViewSales @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded sales can be viewed in the sales page

    @adminui @productBehaviour @PDT015ViewSales @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the pagination is displayed when the uploaded sales list exceeds 10 records

    @adminui @productBehaviour @PDT015ViewSales @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded sales has the sales details like uniqueId, invoiceNumber, salesDate, productId, qty, value, currency, sellerOrganization, buyerOrganization

    @adminui @productBehaviour @PDT016SearchSales @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the uploaded sales can be searched by entering the sales name in search box

    @adminui @productBehaviour @PDT016SearchSales @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify entering the invalid sales name in search box will display no results

    @adminui @productBehaviour @PDT017Product @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the product should be a part of only one product group

    @adminui @productBehaviour @PDT017Product @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the same product cannot be added to multiple product groups

    @adminui @productBehaviour @PDT018SalesImportWorkflow @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales import workflow can be created

    @adminui @productBehaviour @PDT018SalesImportWorkflow @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the custom validations are made in the sales import workflow before updating the sales data in the sales table

    @adminui @productBehaviour @PDT018SalesImportWorkflow @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the <invalid> sales data are rejected by the sales import workflow after validations
        Examples:
            | invalid           |
            | duplicate         |
            | different product |

    @adminui @productBehaviour @PDT018SalesImportWorkflow @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the valid sales data are accepted by the sales import workflow after validations

    #Need clarification for the below scenarios PDT019Rollingchildsalestoparentsales
    @adminui @productBehaviour @PDT019Rollingchildsalestoparentsales @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the child organization sales can be rolled up and specified as parent organization sales

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify any one from the qty and value fields in the sales table are mandatory depends on the program

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify any one from the qty and value fields in the sales table are not null depends on the program

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the qty and value fields in the sales table are not empty

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the qty and value fields in the sales table should accept only numeric values

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the qty and value fields in the sales table should accept values from zero

    @adminui @productBehaviour @PDT020QtyValueInSalesTable @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the qty and value fields in the sales table should accept negative values to account for sales returns

    @adminui @productBehaviour @PDT022OfflineProducts @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the offline products should not be claimed via invoice claims

    @adminui @productBehaviour @PDT022OfflineProducts @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales of offline products should not be shown to participants for preloaded sales based claims










