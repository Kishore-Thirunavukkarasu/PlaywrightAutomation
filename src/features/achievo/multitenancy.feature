Feature: TenantProgram testcases for the mobile application testing

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = kadarkarai selvam
    # updated by  =

    @mobile @achievo @multitenancy @integration @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify with <type> and <case> appcode value in the mobile application
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User creates a program for "existing" tenant
        When User enters all the mandatory information in program create page
        When User clicks on "save" button in program create page
        Then "Successful" message shown up
        When User has the appcode for the program
        Given User launches mobile application
        Then Verify the application has been launched
        When User enters the <type> appcode
        Then Verify the login page <result> displayed
        Examples:
            | type    | case      | result        |
            | valid   | valid     | should be     |
            | valid   | lowercase | should be     |
            | valid   | uppercase | should be     |
            | valid   | mixedcase | should be     |
            | invalid | invalid   | should not be |

    @mobile @achievo @multitenancy @integration @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify by entering the <appcode> value in appcode in the mobile application
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User creates a program for "existing" tenant
        When User enters all the mandatory information in program create page
        When User clicks on "save" button in program create page
        Then "Successful" message shown up
        When User has the appcode for the program
        Given User launches mobile application
        Then Verify the application has been launched
        When User enters the <appcode> appcode
        Then Verify the login page <result> displayed
        Examples:
            | appcode          | result        |
            | empty            | should not be |
            | inactive program | should not be |

    @mobile @achievo @multitenancy @integration @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify by entering the appcode where one of the program in the tenant is inactive
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User creates a program for "existing" tenant
        When User enters all the mandatory information in program create page
        When User clicks on "save" button in program create page
        Then "Successful" message shown up
        When User creates another program for "existing" tenant
        When User enters all the mandatory information in program create page
        When User clicks on "save" button in program create page
        Then "Successful" message shown up
        When User has the appcode for the program

    @mobile @achievo @multitenancy @integration @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the Inactive Tenant with inactive Program and validate them using <type> appcode in the mobile application
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When the tenant is Inactive
        When User clicks on the "Program" button from the tenant
        When User selects the inactive "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Settings" button
        When User gets the Program App code from Program Settings
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the <type> appcode
        Then Verify the login page is not displayed
        Examples:
            | type      |
            | valid     |
            | invalid   |
            | uppercase |
            | lowercase |
            | empty     |

    @mobile @achievo @multitenancy @integration @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify Active Tenant with active Program when the Appcode is updated then validate them in mobile application
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User clicks on the "Program" button from the tenant
        When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Settings" button
        When User edits the Program "App code" from Program Settings
        When User gets the updated Program App code from Program Settings
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed

    @mobile @achievo @multitenancy @integration @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify Active Tenant with active Program when the Appcode is updated then the old appcode should not work in mobile application
        When User clicks on the "Program" button from the tenant
        When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Settings" button
        When User edits the Program "App code" from Program Settings
        When User gets the updated Program App code from Program Settings
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the old appcode
        Then Verify the login page is not displayed

    @mobile @achievo @multitenancy @integration @special @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application with appcode when the tenantprogram button colours are updated <type> the cache
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        Then Verify the login page with default colours
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When User search the "existing" tenant
        When User Choose the existing tenant
        When User clicks on the "Program" button from the tenant
        When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Settings" button
        When User edits the Program  "Colour button" from Program Settings
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        Then Verify the login page with updated colours <type> the cache
        Then Verify the button colours <result> changed
        Examples:
            | type     | result |
            | clearing | are |
            |withoutclearing | are not |

    @mobile @achievo @multitenancy @integration @special @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application with valid appcode and verify for primary color and secondary color
        When User enters the valid appcode
        Then Verify the login page is displayed
        Then Verify the login page with updated colours
        Then Verify the button colours are changed

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application with <type> bandwidth
        When User launches mobile application
        Then Verify the application has been launched
        When The network is throttled to <type> bandwidth
        Then Verify the application should still able to load In-app guidance
        When User enters the valid appcode
        Then Verify the login page is displayed
    Examples:
        |type    |
        |2G    |
        |3G  |
        |4G  |
        |5G  |

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the Application appcode login when there is an interuption due to incoming call
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        When User receives an incoming call while trying to login
        Then Verify the application should pause or minimize its operation
        When Application allows the user to attend the call
        Then Verify the application should resume its operation once the call is disconnected
        Then Verify the login page is displayed

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the application login when the battery is low
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        When The device battery is critically very low
        Then Verify the application should indicate the low battery alert
        Then Verify the application maintain basic functionality
        Then Verify the login page is displayed

    # @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    #Scenario: Verify the mobile application when it is used under Geo-fenced area
    #     When User launches mobile application
    #     Then Verify the application has been launched
    #     When User enters the valid appcode
    #     When User tries to access the application outside the Geo-fenced area
    #     Then Verify the application should display appropriate error message

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application when the user access the program from different location with change in timezone
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        When User tries to access the program from a different location
        Then Verify the application should display the application without any error

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application when the language is changed in the mobile device
        When User launches mobile application
        Then Verify the application has been launched
        When User changes the language in the mobile device
        Then Verify the application should not display the content in the selected language
        Then Verify the application should display the language specific to program only
        When User enters the valid appcode
        Then Verify the login page is displayed

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the tenant logo is displayed
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        Then Verify the tenant logo is displayed

    @mobile @achievo @multitenancy @system @form @functional @smoke @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the multitenancy login <type> user after entering the <username> username and <password> password
        When User launches mobile application
        Then Verify the application has been launched
        When User click on Get Started button
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the username as <username> and password as <password> for <type> user
        Then Verify the user is logged in
        Then Verify the homepage <result> displayed
        Examples:
            | type   | username | password | result     |
            | active | valid    | valid    | should be  |
            | active | valid    | invalid  | should not |
            | active | invalid  | valid    | should not |

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the multitenancy login <type> user with <username> username and <password> password
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the username as <username> and password as <password> for <type> user
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed
        Examples:
            | type         | username         | password         |
            | inactive     | inactiveuser     | inactiveuser     |
            | locked       | lockeduser       | lockeduser       |
            | deleted      | deleteduser      | deleteduser      |
            | empty        | emptyuser        | emptyuser        |
            |case change   | casechangeuser   | casechangepassword |

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the login with a valid user of different tenant after entering the app code
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password" of different "tenant" user
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the login with a valid user of same tenant and different program after entering the app code
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password" of different "program" user
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify login functionality with an user of inactive tenant after entering the app code
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password" of "inactive tenant" user
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify login functionality with an user of inactive program after entering the app code
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password" of "inactive program" user
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the login functionality with an user logged in multiple times with invalid credentials
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "invalidpassword" multiple times
        Then Verify the user is not logged in
        Then Verify the account is locked
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the login if the same user is already logged in different application in different mobile
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password"
        Then Verify the user is logged in
        Then Verify the homepage is displayed
        When User launches another mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the "username" and "password"
        Then Verify the user is not logged in
        Then Verify the homepage is not displayed

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the login with a valid user having <presuf> spaces
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed
        When User enters the user with <presuf> spaces
        Then Verify the user <result> logged in
        Then Verify the homepage <result> displayed
    Examples:
            | presuf | result     |
            | prefix | is         |
            | suffix | is         |
            | both   | is         |

    @mobile @achievo @multitenancy @system @form @functional @negative @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application with mobile network offline mode
        When User launches mobile application
        Then Verify the application has been launched
        When The network is throttled to offline
        Then Verify the application should display appropriate error message for offline mode
        When User enters the valid appcode
        Then Verify the login page is not displayed

    @mobile @achievo @multitenancy @system @form @functional @positive @notreviewed @platformuser @updated @notautomated
    Scenario: Verify the mobile application when there is a less ram memory to operate
        Given Mobile have less ram memory to operate
        When User launches mobile application
        Then Verify the application has been launched
        When User enters the valid appcode
        Then Verify the login page is displayed