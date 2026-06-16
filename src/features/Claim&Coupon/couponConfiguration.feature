Feature: Coupon Configuration

    # created by  = Ruthrakanth
    # reviewed by =
    # updated by  =
    # project url =


    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether user is able to navigate to coupon page

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the text "Click on Add button to add a Coupon" gets displayed when user doesnt have any coupon in the homepage

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user lands on Create Coupon Configuration page on clicking Add button from the Home page

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user is able to Create Coupon Configuration by clicking on Upload button in the Home page

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user can able to create Coupon Configuration by changing <field> with <fieldtype> characters for Generate method
        Given User is on Create Coupon Configuration page
        When User fills in the details such as <filed> and <fieldtype>
        Then User should be able to create the Coupon Configuration <response>
        Examples:
            | field           | fieldtype    | response     |
            | configName      | alphanumeric | successfully |
            | Coupon Category | alphanumeric | successfully |
            | Pattern         | alphanumeric | successfully |
            | Length          | alphanumeric | successfully |
            | Starting Number | alphanumeric | successfully |
            | Coupon type     | alphanumeric | successfully |
            | Suffix code     | alphanumeric | successfully |
            | Prefix code     | alphanumeric | successfully |


    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the scenario when user enters all the input data (with Create Coupon Configuration screen) and click on Cancel button

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the scenario when user enters all the input data (with Create Coupon Configuration screen) and click on X button

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Create Coupon Configuration via generate method by selecting the Pattern type as "Alphanumeric" and case as "Uppercase"

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Create Coupon Configuration via generate method by selecting the Pattern type as "Alphanumeric" and case as "Lowercase"

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Create Coupon Configuration via generate method by selecting the Pattern type as "Alphanumeric" and case as "Mixed"

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Create Coupon Configuration via generate method by selecting Alphanumeric Pattern, without selecting the Case type

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the filename and their related data gets displayed on the screen after uploading .csv file successfully.
        Given User is on Create Coupon configuration page
        When User fills in the following details Config name, Coupon Category
        When User download the template by clicking on Download template button
        And User fills in data in the downloaded csv file
        And  User uploads the csv file back with filled in-data and clicks on Add button
        Then User should be able to see the name of the file under "Filename" along with Column, row count & delete icon
        Then User should be able to view the records on the screen under "Preview"

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the filename and the related data gets erased from the screen on clicking delete icon under Filename
        Given User should be able to see the name of the uploaded file under "Filename" along with Column, row count & delete icon
        When User clicks on delete icon under Filename section
        Then All the data should get erased on the screen and user should be taken back to the previous screen

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Upload the csv file directly by skipping the download template step
        Given User is on Create Coupon configuration page
        When User fills in the following details: Config name, Coupon Category
        When User uploads the already downloaded csv files with filled in-data and clicks on Add button
        Then User should be able to see the details on the screen

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Upload the csv file by drag and drop method
        Given User is on Create Coupon configuration page
        When User fills in the following details: Config name,Coupon Category
        When User drag and drops the csv file into the step2 and clicks on Add button
        Then User should be able to see the details on the screen

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to upload files of any format other than <.csv>
        Given User is on Create Coupon configuration page
        When User fills in the following details: Config name, Coupon Category
        When User uploads file of any format other than <.csv>
        Then User should be thrown with the error to upload <.csv> file

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the scenario when user clicks on Cancel button after uploading the csv file with data
        Given User is on Create Coupon configuration page
        When User fills in the following details: Config name, Coupon Category
        When User download the template by clicking on Download template button
        And User fills in data in the downloaded csv file
        And  User uploads the csv file back with filled in-data and clicks on Cancel button
        Then User should be thrown with a pop-message asking for confirmation

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to Create coupon Configuration via Upload method
        Given User is on the Create Coupon Configuration screen with data populated from the csv file
        When User clicks on Create button
        Then Coupon should be created successfully & User should be taken to the Coupon home page

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the scenario when the user clicks on Cancel button from the data populated Create Coupon configuration screen
        Given User is on the Create Coupon Configuration screen with data populated from the csv file
        When User clicks on cancel button
        Then User should be thrown with the error pop-up

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the column,row count & the data displayed in the screen matches with the csv file
        Given User is on the Create Coupon Configuration screen with data populated from the csv file
        Then Row,column count & the data displayed in the Create coupon Configuration screen should match the row and column count of the csv file

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the success message is displayed on creating the coupon
        Given User clicked on Add button and the coupon got created successfully
        When User is taken back to the Coupon Home page


    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the presence of search bar, filter icon, kebab menu on the Coupon home page once the first coupon gets added.

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the fields displayed on the Coupon home page shows the same data entered with the Coupon creation flow

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to search for a particular coupon via Search bar

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to apply filter on coupons by using Filter icon

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the functionality of the kebab menu available near the Upload button

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate the pagination in Coupon Homepage

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate whether the user is able to edit a particular coupon displayed in the Coupon home page

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate whether the user is able to make changes in the Edit coupon Configuration screen and click on Update

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate whether the updated changes are reflected in the particular coupon

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate the scenario when user clicks on Cancel button after making changes in the Edit coupon Configuration screen.

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate whether the user is able to delete an existing Coupon

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Valdiate whether "Generate coupon" screen pops up on clicking Generate Coupons button

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate whether user is able to generate the Coupons by changing <field> with <fieldtype> characters
        Given User is on Generate Coupon page
        When User fills in the details such as <field> <fieldtype>
        Then User Click on Generate button
        Then User should be able to create the Coupon Configuration <response>
        Examples:
            | field          | fieldtype    | response    |
            | Name           | alphanumeric | successfull |
            | Quantity       | numeric      | successfull |
            | Product Master | dropdown     | successfull |
            | Product        | dropdown     | successfull |
            | Validity       | dropdown     | successfull |
            | Value          | numeric      | successfull |
            | Status         | dropdown     | successfull |

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Valdiate whether generate coupons are listed on the screen

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the presence of search bar, filter icon, kebab menu on the Coupon home page once the coupon gets added.

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the fields displayed on the Coupon home page shows the same data entered with the Coupon creation flow

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to search for a particular coupon via Search bar

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to apply filter on coupons by using Filter icon

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the list of generated coupons is shown with the field "Total coupons generated"

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Validate the Hamburger menu present next to the "Total coupons generated" field

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify whether the user is able to delete a particular coupon

#   ***************************************************************

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated as Bar code

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated as QR code

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated with length as 10

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated with length as 20

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated <withwithout> <codesuffixprefix> as <value>
        Given User is on Generate Coupon page
        When User fills in the details such as <withwithout> <codesuffixprefix> as <value>
        Then User Click on Generate button
        Then User should be able to create the Coupon Configuration <response>
        Examples:
            | withwithout | codesuffixprefix | value       | response    |
            | with        | suffix           | alphanumeric | successfull |
            | without     | prefix           | alphanumeric | successfull |
            | with        | prefix           | alphanumeric | successfull |
            | without     | suffix           | alphanumeric | successfull |

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated with both prefix and suffix

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated without prefix and suffix

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the coupon can be generated with prefix and without suffix

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can generate the coupons more than one time

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can download the generated coupon via csv

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can download the generated coupon as qr code images

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: verify the user can download the generated coupon as bar code images 

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can generate coupon for a product

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: verify the user can generate coupon with end date in a timezone

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can disable the active coupons

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can view the coupons

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user cna view the <activeinactiveused> coupons
        Given User is on the Coupon home page
        When User clicks on the <activeinactiveused> tab
        Then User should be able to view the <activeinactiveused> coupons
        Examples:
            | activeinactiveused |
            | active             |
            | inactive           |
            | used               |

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: verify the user can filter the coupon codes for a single time generated coupon

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user can filter the coupon codes with the used date range

# **********************************
    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified within the active date time in the created time zone

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified after the active date time in the created time zone

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified before the active date time in the created time zone

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified within the active date time in the different time zone (e.g. end date is 2nd Jan 2022 12:00 AM in IST and verifying at +2:00 GMT at 1st Jan 2022 07:00 PM)

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified after the active date time in the different time zone (e.g. end date is 2nd Jan 2022 12:00 AM in IST and verifying at +2:00 GMT at 2nd Jan 2022 02:00 AM)

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the generated coupon is verified before the active date time in the different time zone (e.g. start date is 2nd Jan 2022 12:00 AM in IST +5:30 and verifying at +2:00 GMT at 1st Jan 2022 07:00 PM)

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user uses the coupon after disabling them

    @adminui @coupon @couponconfiguration @integration @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the user uses the coupon after enabling the coupon

# **********************************