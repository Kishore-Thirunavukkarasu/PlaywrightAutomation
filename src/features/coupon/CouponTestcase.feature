Feature: Coupon Configuration

    # created by  = Ruthrakanth
    # Peer reviewed by = kishoreg
    # reviewed by =
    # Comments = peer review updated, Evolution and Final Review in progress

    Background: Coupon Page Navigation
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
        When User click on "Sales & Claims"
        When User click on the "Coupon Generation" submenu
        Then Verify the "Coupon Generation" page is displayed

    @adminui @coupon @createCouponConfig @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Create Coupon Configuration
        When user is on the Coupon Generation page
        When user clicks on the Add Coupon button in Coupon home page
        When user enters all the mandatory fields in the Add Coupon page
        When user clicks on Submit button in add coupon page
        Then "Successful" message shown up
    
    # RBAC

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the coupon menu is listed in the Add/Edit Permissions page 

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Super Admin has all the access (Read,Update,Delete) to the Coupon Configuration page by default

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with all the access (Read,Update,Delete) to the Coupon Configuration page

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with Read access to the Coupon Configuration page

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with Update access to the Coupon Configuration page

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with Delete access to the Coupon Configuration page

    @adminui @coupon @rbac @system @special @functional @positive @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant Admin with no access to the Coupon Configuration page

    @adminui @coupon @rbac @system @special @functional @negative @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant admin with Read,Update access should not be able to delete coupon configuration

    @adminui @coupon @rbac @system @special @functional @negative @notreviewed @tenantadmin @notupdated @notautomated
    Scenario: Verify Tenant admin with Read,Delete access should not be able to update coupon configuration

    # Create Coupon Configuration

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create new coupon configuration by clicking on Add button in the Home page

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to Create Coupon Configuration by clicking on Upload button in the Home page

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to download the template for uploading coupon configuration

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can upload the file successfully on selecting the method as 'upload' in the coupon configuration screen

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether admin is able to preview the records from the upload file.

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create new coupon configuration without selecting the coupon Type

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create new coupon configuration by entering invalid data i.e Text in the fields such as Length, Starting Number.

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create new coupon configuration by entering invalid data i.e Special characters in the fields such as Length, Starting Number.

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can configure suffix and prefix of the coupon configuration

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can configure the length of the coupon code

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the minimum and max. number that can be set as a input for Lenght field in Coupon Configuration screen

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin has selected the pattern as alphanumeric and it accepts only Uppercase letters

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin has selected the pattern as number and it accepts only number letters

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user is able to sort the records based on a column (say, Config name) on coupon screen.

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin is able to search for a particular record using valid searchkeyword

    @adminui @coupon @createcoupon @system @special @functional @negtive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the search functionality with invalid search keyword

    @adminui @coupon @createcoupon @system @special @functional @negtive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the filter functionality in Coupon screen.

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the uniqueness of coupon configuration code

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the length of the coupon code is generated as per the length specified in coupon configuration screen (inlcuding prefix and suffix)

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that there should be only one coupon configuration in active state at a time

    @adminui @coupon @createcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can disable the current active coupon configuration and enable the new coupon configuration


    # Set coupon status

    @adminui @coupon @setcouponstatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can set the coupon status as active and inactive

    @adminui @coupon @setcouponstatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether coupon generation is not happening for the coupon configuration which is inactive

    @adminui @coupon @setcouponstatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether coupon is generated successfully for the coupon configuration which is active

    # Edit coupon configuration

    @adminui @coupon @editcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can edit the existing coupon configuration which is in Active/Inactive status

    @adminui @coupon @editcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can edit the name and status of the existing coupon configuration

    @adminui @coupon @editcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user cannot edit fields such as prefix,suffix,alphanumeric preference and length of the existing coupon configuration


    # View coupon configuration

    @adminui @coupon @viewcoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can view the coupon configuration details

    # Upload coupon product points file

    @adminui @coupon @uploadcouponproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can upload coupon product points file

    @adminui @coupon @uploadcouponproductpoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can upload coupon product points file with invalid data & error is displayed

    multiple test cases for invalid data -

    @adminui @coupon @uploadcouponproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify coupon product points schema, workflow and template is seeded in the tenant

    @adminui @coupon @uploadcouponproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify coupon product points can be uploaded into the system

    @adminui @coupon @uploadcouponproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to define eligible products for coupon claiming via product points file upload.


    # defineaudienceandpoints

    @adminui @coupon @defineaudienceandpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can define audience and points for coupon product points

    @adminui @coupon @defineaudienceandpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to specify primary, secondary and teritary audience via coupon product points file upload

    @adminui @coupon @defineaudienceandpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to specify points for primary, secondary and teritary audience via coupon product points file upload

    @adminui @coupon @defineaudienceandpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the points entered should be a whole number and not a decimal number

    @adminui @coupon @defineaudienceandpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to specify point type for primary, secondary and teritary audience via coupon product points file upload

    @adminui @coupon @defineaudienceandpoints @system @special @functional @negtive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to add multiple audience group within each audience type via coupon product points file upload



    # Additional test cases

    # Verify that the external identifier in the coupon points upload file corresponds to a valid product identifier
    # Verify that the external identifier in the coupon points upload file is not empty
    # Verify that the config name in the coupon points upload file is in active state.
    # Scenario: Validate the pagination in Coupon Homepage
    # Scenario: Verify that the audit logs are generated under the scenarios : such as successful claim, duplicate claim, bank points,

    # CouponExpiry

    @adminui @coupon @couponexpiry @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can specify the coupon expiry in coupon product points file

    @adminui @coupon @couponexpiry @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that coupon expiry is set correctly when a valid expiry in months is provided

    @adminui @coupon @couponexpiry @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify behavior when expiry in months is not provided in the file

    @adminui @coupon @couponexpiry @system @special @functional @negtive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system validation for invalid expiry in months (like -2, "abc", or 0)

    @adminui @coupon @couponexpiry @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure expiry in months reflects correctly in generated coupon details

    @adminui @coupon @couponexpiry @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure expired coupons are not usable after the expiry date

    # Update Product point details

    @adminui @coupon @updateproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if the admin is able to update the records if externalIdentifier matches an existing record in the coupon products points file

    @adminui @coupon @updateproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that product points details are inserted when externalIdentifier is not found in the database

    @adminui @coupon @updateproductpoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when the user tries to update the coupon product points file with invalid data

    @adminui @coupon @updateproductpoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when the user tries to insert the coupon product points file with invalid data

    @adminui @coupon @generateresultsfile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether result file is generated after uploading the coupon product points file

    @adminui @coupon @generateresultsfile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the results file indicates success when the processing is successful.

    @adminui @coupon @generateresultsfile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the results file indicates failure when the processing fails.

    @adminui @coupon @generateresultsfile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the results file contains the correct number of records processed.

    # CPN_0012
    @adminui @coupon @setProductStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Admin can set the status of a product to "Active" in the coupon product points file.

    @adminui @coupon @setProductStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Admin can set the status of a product to "Inactive" in the coupon product points file.

    @adminui @coupon @setProductStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that products with "Inactive" status are not eligible for coupon claiming.

    @adminui @coupon @setProductStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that products with "Active" status are eligible for coupon claiming.

    # CPN_0013

    @adminui @coupon @accessInventorycouponportal @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user/client being assigned with inventory application role such as inventory admin, inventory generator, inventory printer

    @adminui @coupon @accessInventorycouponportal @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that only participants with the Inventory Generator, Inventory Admin, or Inventory Printer role can access the Inventory Administration Platform.

    @adminui @coupon @accessInventorycouponportal @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that participants who do not possess any of the three specified roles are restricted from accessing the Inventory Coupon portal

    @adminui @coupon @accessInventorycouponportal @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify inventory application job roles should not be used for self registration job role as a default

    #CPN_0014 & 15

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify successful account activation for first-time user with a valid inventory-related role

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users without inventory-related roles cannot activate an account

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify account activation fails if user does not consent to location sharing

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify logout and jwt token of inventory application

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user (inventory-role) can log in to the inventory application with a password setup during activation

    @adminui @coupon @activateInventorycouponaccount @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when user (inventory-role) tries to log in with an incorrect password

    #CPN_0016,17

    @adminui @coupon @validateUserRole @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Coupon portal is accessible to users only with the specified three roles ( Inventory Generator, Inventory Admin ,Inventory Printer)

    @adminui @coupon @validateUserRole @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant cannot activate their account if the job role is missing.

    @adminui @coupon @geotagging @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system successfully captures the user's location during login.

    @adminui @coupon @geotagging @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where the user denies location access during login.

    @adminui @coupon @geotagging @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system handles the scenario where the user's device does not support geo-tagging.

    #CPN_0018

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user with the specified role (Inventory admin/Inventory Generator) is able to specify the eligible product for coupon batch creation

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to create batch based on the coupon configuration created in the Tenant admin site.

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon batch can be created with a selected eligible product

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error is shown when no product is selected while creating a coupon batch

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when user tries to create coupon batch with an ineligible product

    @adminui @coupon @createcouponbatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify only users with Inventory Admin or Inventory Generator role can access product selection during batch creation

    #CPN_0019,20

    @adminui @coupon @mapProductToCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user is able to generate multiple coupon batch by selecting the same product

    @adminui @coupon @mapProductToCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Inventory admin is able to disable a coupon batch

    @adminui @coupon @disableCoupon @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users without Inventory Admin role cannot disable a coupon batch.

    @adminui @coupon @disableCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that no points are awarded for coupons in a disabled batch during the period the batch is inactive.

    @adminui @coupon @disableCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory Admin can re-enable a previously disabled coupon batch.

    #CPN_0021,22,23

    @adminui @coupon @couponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the coupon code can be generated in the format :  (Month + Prefix + Generated Code + Suffix)

    @adminui @coupon @couponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that each generated coupon code is unique.

    @adminui @coupon @couponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the generated coupon codes comply with the specified format.

    @adminui @coupon @barcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system generates a barcode in the specified format. 12-digit number (random number + Month + Table sequence number)

    @adminui @coupon @barcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that each generated barcode is unique.

    @adminui @coupon @barcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message thrown for invalid - month and table sequence number

    @adminui @coupon @qrcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system generates a QR code combining SKU, Month, Year, Coupon Code, and Manufacturing Plant Code.

    @adminui @coupon @qrcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system generates a QR code correctly even if the Manufacturing Plant Code is not available.

    @adminui @coupon @qrcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that each generated QR code is unique.

    @adminui @coupon @qrcode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message thrown for invalid - SKU, Month, Year, Coupon Code.

    #CPN_0024

    @adminui @coupon @downloadCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that an Inventory Admin can successfully download a coupon batch file containing QR Code, Barcode, Coupon Code, and validity dates.

    @adminui @coupon @downloadCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that an Inventory Printer can successfully download a coupon batch file containing QR Code, Barcode, Coupon Code, and validity dates.

    @adminui @coupon @downloadCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users without Inventory Admin or Inventory Printer roles cannot download a coupon batch file.

    @adminui @coupon @downloadCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the downloaded coupon batch file contains the correct details (QR Code, Barcode, Coupon Code, and validity dates).

    @adminui @coupon @downloadCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the downloaded coupon batch file is in the correct format (CSV or Excel).

    #CPN_0025

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant with Inventory Admin or Inventory Printer role can filter coupon batches by batch name.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant with Inventory Admin or Inventory Printer role can filter coupon batches by product externalIdentifier.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant with Inventory Admin or Inventory Printer role can filter coupon batches by batch creation date.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant with Inventory Admin or Inventory Printer role can filter coupon batches using a combination of batch name, product externalIdentifier, and batch creation date.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether error message is shown where no coupon batches match the filter criteria.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory Admin can successfully disable a batch in the "Download Batch" screen.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users without Inventory Admin role cannot disable a batch in the "Download Batch" screen.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that coupons in the disabled batch are not claimable by participants.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory Admin can re-enable a previously disabled batch.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that the disable batch option is accessible to users with the Inventory Admin role.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that the disable batch option is not accessible to users without the Inventory Admin role.

    @adminui @coupon @filterCouponBatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users without the Inventory Admin role cannot disable a batch even if they attempt to access the option through direct URL manipulation or other means.

    #CPN_0026

    @adminui @coupon @parentChildBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory Admin can successfully create parent-child mappings between coupon batches by specifying parent batch ID, child batch ID, and cart size.

    @adminui @coupon @parentChildBatchMapping @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that an error message is displayed when an invalid parent batch ID is entered

    @adminui @coupon @parentChildBatchMapping @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an error message is displayed when an invalid child batch ID is entered

    @adminui @coupon @parentChildBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an error message is displayed when attempting to create a duplicate parent-child mapping

    @adminui @coupon @parentChildBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a parent-child mapping can be deleted successfully.

    # CPN_0027

    @adminui @coupon @downloadBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory admin can download batch mapping file containing parent and child coupon details

    @adminui @coupon @downloadBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user with roles other than Inventory Admin cannot download batch mapping file

    @adminui @coupon @downloadBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the downloaded batch mapping file contains the correct details (parent and child coupon details).

    @adminui @coupon @downloadBatchMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the downloaded batch mapping file is in the correct format (e.g., CSV, Excel).

    #CPN_0028

    @adminui @coupon @optionalProductMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an Inventory Admin can create a coupon batch without specifying a product

    @adminui @coupon @optionalProductMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a product can be mapped to a coupon batch later from the backend

    @adminui @coupon @optionalProductMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the product selection field is optional for Inventory Admins

    @adminui @coupon @optionalProductMapping @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that generated coupons in a batch without product cannot be claimed until a product is mapped

    # CPN_0029

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant can successfully claim a coupon by scanning a valid QR code

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant can claim a coupon by scanning a valid barcode

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a participant can claim a coupon by manually entering a valid coupon code

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an invalid or corrupted QR code is rejected

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the behavior when participant tries to claim an expired coupon

    @adminui @coupon @initiateCouponClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a successful claim logs the claim and provides confirmation message to the user

    # CPN_0030,31,32

    @adminui @coupon @validatecouponexistence @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a valid coupon code present in inventoryMaster allows successful claim

    @adminui @coupon @validatecouponexistence @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an invalid coupon code not present in inventoryMaster is rejected

    @adminui @coupon @validatecouponexistence @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a valid QR code present in inventoryMaster is accepted

    @adminui @coupon @validatecouponexistence @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that an invalid QR code/barcode not present in inventoryMaster is rejected

    @adminui @coupon @validatecouponexistence @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a barcode existing in inventoryMaster allows a successful claim

    @adminui @coupon @validateactivebatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon from an active batch can be successfully claimed

    @adminui @coupon @validateactivebatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon from an inactive batch is rejected

    @adminui @coupon @validateactivebatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon from a batch with expired validity is not allowed

    @adminui @coupon @validateactivebatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon from a batch with a future start date cannot be claimed

    @adminui @coupon @validateactivebatch @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon not linked to any batch is rejected

    @adminui @coupon @couponValidityPeriod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon can be claimed successfully within its validity period

    @adminui @coupon @couponValidityPeriod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon can be claimed on the exact valid from date

    @adminui @coupon @couponValidityPeriod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon can be claimed on the exact valid to date

    @adminui @coupon @couponValidityPeriod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that date comparison considers server/client timezone configuration

    # CPN_0033

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a user belonging to the primary audience can claim the coupon

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a user in the secondary audience can claim if the coupon

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a user in the tertiary audience can claim if the coupon

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a user not mapped to any allowed audience cannot claim the coupon

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that users from tertiary audience cannot claim when coupon is limited to primary and secondary

    @adminui @coupon @UserAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether error is thrown when a user belonging to more than one eligible audience, tries to claim a coupon

    # CPN_0034,35

    @adminui @coupon @preventDuplicateClaim @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that a coupon can be claimed for the first time by a user in the target audience

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon cannot be claimed more than once by users in the same audience

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a QR code already claimed by a user in the same audience cannot be reused

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the barcode associated with a claimed coupon cannot be reused by another user in the same audience

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that same user cannot claim the same coupon twice

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that a user cannot reuse the same QR code to claim again

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a coupon claimed via coupon code, should not be allowed to claim via bar code/QR code

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system blocks reclaims via any method if the user has already claimed the coupon

    @adminui @coupon @preventDuplicateClaim @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the user receives a clear message when attempting to reclaim a coupon

    # CPN_0036

    @adminui @coupon @singleAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that system checks audience mapping before processing a claim

    @adminui @coupon @singleAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system allows claim when the user belongs to only one audience

    @adminui @coupon @singleAudienceMembership @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system rejects claim if user belongs to more than one audience

    @adminui @coupon @singleAudienceMembership @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system blocks claim if user is in all three audience levels

    @adminui @coupon @singleAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that claim is allowed after resolving audience mapping to a single valid audience

    @adminui @coupon @singleAudienceMembership @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that points are awarded according to user's audience category

    # CPN_0037

    @adminui @coupon @displayValidationError @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when the coupon code/QR/barcode is invalid

    @adminui @coupon @displayValidationError @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when claiming a coupon from an inactive batch

    @adminui @coupon @displayValidationError @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when claim date is before or after coupon validity

    @adminui @coupon @displayValidationError @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when claiming user is not in any valid audience

    @adminui @coupon @displayValidationError @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when the user tries to claim the same coupon again

    @adminui @coupon @displayValidationError @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message when coupon is already claimed by someone in the same audience

    @adminui @coupon @displayValidationError @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message if user is mapped to more than one audience

    @adminui @coupon @displayValidationError @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a generic error message is shown when claim fails due to unexpected issues

    # CPN_0038

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that a successful claim updates the claimedInventories table with base points

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that base points are determined according to the user's audience category & claimed product

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that claimedInventories is not updated if any validation fails

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the claimed product and user ID are correctly stored in productPoints details table

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify points are not applied if product-audience combination is not found

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that repeated claims do not insert duplicate records

    @adminui @coupon @updateClaimedInventoriesTable @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the claim timestamp and source (e.g., QR code, barcode) are recorded

    # CPN_0039,40

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a Coupon promotion is successfully created when all mandatory fields are provided

    @adminui @coupon @createCouponPromotion @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system shows validation error when required fields are missing

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the associated coupon configuration is correctly saved with the promotion

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user can specify the banking type as 'transaction-wise banking' for the coupon promotion

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user can specify the banking type as 'batch-wise banking' for the coupon promotion

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user can specify the banking trigger as automatic for the coupon promotion

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user can specify the banking trigger as scheduled for the coupon promotion

    @adminui @coupon @createCouponPromotion @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user can specify the banking trigger as manual for the coupon promotion

    @adminui @coupon @bankBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that base points are correctly banked for a valid claimed coupon

    @adminui @coupon @bankBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system selects correct base points using product ID and user audience

    @adminui @coupon @bankBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that no points are banked if product is missing in coupon product points file

    @adminui @coupon @bankBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that system does not bank base points more than once for the same claim

    @adminui @coupon @bankBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that banked base points appear in user's Points statement

    @adminui @coupon @bankBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that valid claims are banked even if some claims in the batch are invalid

    # CPN_0041,42

    @adminui @coupon @splitBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that base points are split into points and score according to the specified ratio

    @adminui @coupon @splitBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that specifying multiple ratio configurations result in accurate splits

    @adminui @coupon @splitBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that rounding is handled correctly for non-integer splits

    @adminui @coupon @splitBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when split ratio is not provided

    @adminui @coupon @splitBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that negative or invalid ratio configurations are rejected

    @adminui @coupon @splitBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the same configured ratio is applied across multiple claims

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify bonus points are allocated when product, geography, and job role match the configured criteria

    @adminui @coupon @allocateBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify no bonus is awarded if geography does not match

    @adminui @coupon @allocateBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify no bonus is awarded if job role does not match

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify bonus is awarded when only product criteria is defined

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure bonus rules using geography and job role filters

    @adminui @coupon @allocateBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a user does not receive bonus points more than once for the same claim

    # CPN_0043

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system correctly awards all reward types -Points, Score, Token when all the three are configured

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify scenario in which system awards only game tokens, when game token is configured for that promotion

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify scenario in which system awards only Points, when Points is configured is configured for that promotion

    @adminui @coupon @allocateBasePoints @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify scenario in which system awards only Tokens, when Tokens is configured is configured for that promotion

    @adminui @coupon @allocateBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when no reward is configured.

    @adminui @coupon @allocateBasePoints @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that rewards are not awarded if the claim fails validation

    # CPN_0044

    @adminui @coupon @triggerRules @system @special @scenario @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a promotion rule is triggered when a new record is inserted into inventoryClaims

    @adminui @coupon @triggerRules @system @special @scenario @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that promotion is not triggered if the promotion rule is inactive

    @adminui @coupon @triggerRules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that no rule is triggered if the claimed product has no associated promotion

    # doubt : do we have the product eligible criteria to be followed in the coupon promotion. Will it have any connection btween
    # the product specified in the coupon points file

    @adminui @coupon @triggerRules @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that all applicable promotion rules are triggered if multiple conditions are met. (multiple conditions- Product, geography, job role)

    @adminui @coupon @triggerRules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system logs error if promotion rule trigger fails

    @adminui @coupon @triggerRules @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the system does not re-trigger promotion rule for the same claim (duplicate claim)

    @adminui @coupon @triggerRules @system @special @scenario @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system can process promotion even if rule trigger is delayed due to system load (under high load conditions)

    # CPN_0045

    @adminui @coupon @promotionPointBanking @system @special @scenario @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify points are banked when user is part of the promotion audience

    @adminui @coupon @promotionPointBanking @system @special @scenario @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify points are not banked if user is not part of the promotion audience

    @adminui @coupon @promotionPointBanking @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that points are banked if geography matches and job role filter is not set & user is part of the promotion audience

    @adminui @coupon @promotionPointBanking @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that points are banked if job role matches and geography filter is not set & user is part of the promotion audience

    @adminui @coupon @promotionPointBanking @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that no points are banked when both job role and geography do not match (even though user is part of the promotion audience)

    @adminui @coupon @promotionPointBanking @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Consider the scenario, where admin has changed the promotion audience and user who did a claim is not part of the new audience group. Hence points should not be banked for that user

    # CPN_0046

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user receives SMS on successful coupon claim when SMS is enabled

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user receives SMS on failed coupon claim when SMS is enabled

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify email notification is triggered on successful coupon claim

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify WhatsApp notification is sent for claim failure if WhatsApp is enabled

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify push notification is triggered for successful claim

    @adminui @coupon @couponClaimNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that no notification is sent when all channels are disabled

    # CPN_0047

    @adminui @coupon @couponPromotionNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the admin can enable Promotion start/end notification for a coupon promotion

    @adminui @coupon @couponPromotionNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the admin can enable Coupon point depoist notification for a coupon promotion

    @adminui @coupon @couponPromotionNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the admin can disable the active notifications that were turned on for a coupon promotion

    @adminui @coupon @couponPromotionNotification @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that the enabled notifications are sent to the eligible audience

    # CPN_0048,49

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin is able to access the Coupon Failure Report page

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify report includes all required fields: code, code type, claim timestamp, username, and validity dates

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the report includes only failed coupon claim attempts

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the failure report can be exported/downloaded in a readable format (CSV/XLS)

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the report includes failed claims from users with all roles and audiences

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the failure report can be filtered by a custom date range

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the failure report can be filtered by coupon code

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the failure report can be filtered by user name/Product external identifier.

    @adminui @coupon @couponFailureReport @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that admin can filter a record by selecting all the three filters (date range, coupon code, user name)


    # CPN_0050

    @adminui @coupon @uploadCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that a valid coupon file can be uploaded successfully

    @adminui @coupon @uploadCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify upload fails if mandatory fields are missing in the file

    @adminui @coupon @uploadCoupon @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system behavior for duplicate coupon codes within the uploaded file

    @adminui @coupon @uploadCoupon @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the file formats supported for the upload (e.g., CSV, XLSX)

    @adminui @coupon @uploadCoupon @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the coupon gets updated if upload file contains existing coupon codes

    @adminui @coupon @uploadCoupon @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system generates an error report for failed rows

    # CPN_0051

    @adminui @coupon @fetchProductPointsDetails @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that primary, secondary, and tertiary points and their types are fetched correctly from Product Points details table for a coupon assigned to a valid produt

    @adminui @coupon @fetchProductPointsDetails @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system behavior when product (for which the coupons are uploaded) does not exist in productPointsDetails table

    @adminui @coupon @fetchProductPointsDetails @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify system behavior when points are zero for one or more audiences in productPointsDetails

    @adminui @coupon @fetchProductPointsDetails @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Validate the coupon records post-upload contain the correct point data as per productPointsDetails

    @adminui @coupon @fetchProductPointsDetails @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario : Uploading the coupon file with a mix of valid and invalid product identifiers

    # CPN_0052

    @adminui @coupon @validityDates @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that validFrom and validTo dates are correctly calculated based on creationDate in uploaded file

    @adminui @coupon @validityDates @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify expiry (in months) are calculated based on the product externalIdentifier in productPointDetails.

    @adminui @coupon @validityDates @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where  creationDate is missing in the uploaded file

    @adminui @coupon @validityDates @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify validTo date calculation when expiry crosses calendar year end

    @adminui @coupon @validityDates @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system correctly calculates validTo for different products (coupon is uploaded with multiple produts) with varying expiry durations (each product has diff. expiry)

    # CPN_0053

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify when user uploads a large coupon file it is split into smaller batches of predefined size

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify file is not split if total records are less than or equal to batch size

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether batches are processed in parallel or sequentially based on system configuration

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error in one batch does not stop other batches from processing

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system logs status of each batch (e.g., success, failed, skipped)

    @adminui @coupon @largeCouponFiles @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario where user uploads multiple large files

    # CPN_0054

    # Doubt : Where do we specify the coupon status- in upload??
    @adminui @coupon @couponStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system sets coupon status to 'Active' when specified in file

    @adminui @coupon @couponStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the system sets coupon status to 'Inactive' when specified in file

    @adminui @coupon @couponStatus @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system behavior when status field is missing in the uploaded file

    @adminui @coupon @couponStatus @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that system rejects coupons with invalid status values (e.g., "Pending")

    @adminui @coupon @couponStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that only coupons with status 'Active' can be claimed

    @adminui @coupon @couponStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that re-uploading a coupon with a different status updates it

    # CPN_0055

    @adminui @coupon @couponViaHooks @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can create hook for importing the coupons from the external system

    @adminui @coupon @couponViaHooks @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify coupons are successfully imported via the configured hook

    @adminui @coupon @couponViaHooks @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Consider the scenario when Hooks is made to terminate early or it is getting crashed. Verify whether the partial results are available in the system

    @adminui @coupon @couponViaHooks @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that duplicate coupon codes from ERP are not inserted again

    @adminui @coupon @couponViaHooks @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify system can handle partial success in coupon import

    # CPN_0056

    @adminui @coupon @shareResultsViaAPI @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the result file is sent to the external system after processing the Hooks

    @adminui @coupon @shareResultsViaAPI @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the result file is sent to the calling application after processing

    @adminui @coupon @shareResultsViaAPI @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that retrying result file delivery does not create duplicate in external system

    @adminui @coupon @shareResultsViaAPI @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify system logs every result file transmission

    # CPN_0057

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system accepts up to 8 valid coupon codes and processes them correctly

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system prevents claiming more than 8 coupon codes at once

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user enters duplicate entries in the same request in mobile/Web

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user enters invalid coupon codes in mobile/web

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user enters expired coupon codes in mobile/web

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user enters already claimed coupon codes in mobile/web

    @adminui @coupon @manualCouponCode @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system trims spaces and handles incorrect formatting

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claim result is shown for all entered codes

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify each valid coupon displays a success status after claiming

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that invalid coupons show a failure status and reason

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that duplicate coupon entries display failure with a relevant message

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that already claimed coupons display proper failure status

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify system displays a claim status for each code when a combination of valid, invalid, and duplicate codes are submitted

    @adminui @coupon @displayClaimStatus @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that individual coupon claim statuses appear correctly across platforms (mobile/web)

    @adminui @coupon @provideErrorReasons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error message is shown when an invalid coupon code is entered

    @adminui @coupon @provideErrorReasons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error is shown when the coupon has already been claimed

    @adminui @coupon @provideErrorReasons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify error is shown when the coupon belongs to an invalid or inactive batch

    @adminui @coupon @provideErrorReasons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify error messages are shown individually for each failed coupon

    @adminui @coupon @provideErrorReasons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure error messages appear and behave the same on both platforms (mobile/web)

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify the split screen with both QR scanning and manual entry is shown in the mobile app

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify QR scanner launches correctly when that option is selected

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify user can enter coupon code manually

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure user can use either method from the same screen

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate split screen layout on different mobile devices

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify both the options are accessible via screen reader

    @adminui @coupon @splitScreen @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the app requests camera access when QR code scanning is selected (for the first time)

    @adminui @coupon @claimHistoryonWeb @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to view the coupon claim history in the Platform portal

    @adminui @coupon @claimHistoryonWeb @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to search for a particular record in the claim history page.

    @adminui @coupon @claimHistoryonWeb @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the claim history page displays the data in tabular format with the following fields : Code, code type, SKU, claim date, status, error reason, and points

    @adminui @coupon @claimHistoryonWeb @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that claim history page should not be displayed to the users who are not part of the audience group

    # Doubt : No. of concurrent claims per secondFor automatic banking with event based trigger, time it takes to trigger base points after coupon claim

    ######################################### Common Test cases inventory Coupons #########################################

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the inventory application user can generate either barcode or coupon code or qrcode (not everything together)

    @platformui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user enables the location in browser will push the latitude and longitude data during coupon submission

    @platformui @coupon @claiminventorycoupons @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user disables the location in browser will not let the user to claim the coupon in any way

    @mobile @coupon @claiminventorycoupons @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if user disables the location in mobile will not let the user to claim the coupon in any way

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify changing the generated bar code to qr code outside the system. And now user tries to claim that qr code, system should not allow this

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify changing the generated QR code to Bar code outside the system. And now user tries to claim that qr code, system should not allow this

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed QR code in web and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed Bar code in web and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed coupon code in web and verify the error message is shown up

    @mobile @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed QR code in mobile and verify the error message is shown up

    @mobile @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed Bar code in mobile and verify the error message is shown up

    @mobile @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify claiming the already claimed coupon code in mobile and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Bar Code claimed claim same code as QR code once again and Verify the error message is shown

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify coupon code claim with a trailing space in web and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify coupon code claim with case sensitivity and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify coupon code claim with empty space and verify the error message is shown up

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message in coupon claim in multilocale

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Generate 1 lakh coupon, Capture the time taken to generate the coupon

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Generate 10 lakh coupon, Capture the time taken to generate the coupon

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Generate 1000 lakh number of coupons the time taken to generate the coupons 

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by providing one as a count while generating the coupon.

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by providing 0 as a count while generating the coupon and verify the error message

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by providing negative number as a count while generating the coupon and verify the error message

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by providing decimal number as a count while generating the coupon and verify the error message

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by providing alphanumeric as a count while generating the coupon and verify the error message

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify after a batch is failed with manual interruptions (like deploying while generation is going on) and verify the batch id should follow the sequence number to make it unique

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the sequence number is in the coupon generation range

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify filtering the generated batches in inventory application based on status and type

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify filtering the claimed, unclaimed and inactive coupon codes inside a generated batches.

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify making the coupon code inactive

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Coupon codes are getting expired after the validity period in inventory portal

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon page is shown up for the audience when it is configured as menu

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon page is shown up only that promotion eligible audiences when it is configured as menu

    @platformui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Success pop up - colour is same as primary color

    @platformui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Error failed pop up - colour is same as primary color

    @platformui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify base points are displayed upon successful coupon claim with the description.

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Admin can download coupons

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Admin can access all parts of the inventory management system

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Printer (job-role) can download coupons

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Printer (job-role) cannot generate coupons

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Generator(job-role) can generate  coupons

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Generator (job-role) can download coupons

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that the Inventory Generator does not have access to administrative tasks

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the inventory module job roles are seeded in the tenant upon creation.

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the newly created job role users are not able to access the inventory applciation

    @adminui @coupon @claiminventorycoupons @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating a job role with the same name of the existing seeded job role with different cases (e.g. small case, camelcase, etc.)