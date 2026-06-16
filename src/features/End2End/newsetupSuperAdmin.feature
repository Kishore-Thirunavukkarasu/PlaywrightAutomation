Feature: End to End test case for the admin application - scenario 1
    # superadmin user create a tenant
    # superadmin user create a program
    # superadmin user create a new platform user using command engine
    # superadmin user query the newly created user using query engine
    # verify the new platform user can login
    # superadmin creating a new organization in admin
    #   validate if it is created
    # superadmin creating a new hierarchy
    #   validate if it is created
    # superadmin creating a new static audience
    #   validate if it is created

    @adminui @tenant @smoke
    Scenario: Super Admin launches the admin application
        Given User launches admin application
        Then Verify the login page elements
    Examples:
        | Elements  |
        | logo      |
        | username  |
        |password   |
        |forgotPassword|
        |signIn     |

    @adminui @tenant @smoke
    Scenario: Super Admin Login with valid credentials
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants

    @adminui @tenant @smoke
    Scenario: Super Admin create a new tenant and enter all mandatory fields
        When User click on create tenant
        Then User navigate to the tenant create page
        When User enters all mandatory information and click on save in tenant create
        Then Tenant created successfully message shown up

    @adminui @tenant @smoke
    Scenario: Verify the tenant is active and validate the elements in tenant options
        When User click on the tenant options
        Then Validate the list of menus in the three dots
        Then Verify the tenant is "Active"

    @adminui @program @smoke
    Scenario: Create a new program for that tenant
        When User creates a program for tenant
        When User navigate to create program page
        When user enters all the mandatory information and click on save in program create
        Then program created successfully message shown up

    #Hierarchy Creation
    #When the hierachy is through the maual creation we can use this method
    @adminui @hierarchy @smoke
    Scenario: Create a new hierarchy
        When User is on the hierarchy creation page
        When User selects the Geo Hierarchy and add the levels
        When User selects the Org Hierarchy and add the levels
        When User selects the Role Hierarchy and adds the levels
        Then User verify the Program page is displayed

    #When the herarchy is through the file upload we can use this method
    @adminui @hierarchy @smoke
    Scenario: Create a new hierarchy through upload
        When User is on the hierarchy creation page
        When User get started with Geo Hierarchy and download the template file
        When User enters the Geo Hierarchy data in the csv file
        When User upload the file and click on submit
        Then User verify the Geo hierarchy created successfully
        When User get started with Org Hierarchy and download the template file
        When User enters the Org Hierarchy data in the csv file
        When User upload the file and click on submit
        Then User verify the Org hierarchy created successfully
        When User get started with Role Hierarchy and download the template file
        When User enters the Role Hierarchy data in the csv file
        When User upload the file and click on submit
        Then User verify the Role hierarchy created successfully
        When User completes the Login Settings and click on submit
        Then User verify the Program page is displayed

    #Organization Creation
    @adminui @organization @smoke
    Scenario: Create a new organization through upload
        When User navigate to organization page
        When User download the organization template
        Then user enters the data in organization csv file
        Then User Choose the schema template and upload the file for organization
        Then Click on submit and verify the organization created successfully
        Then User navigate to user page
        When User download the user template
        Then user enters the data in user csv file
        Then User Choose the schema template and upload the file for user
        Then Click on submit and verify the user created successfully

    #Organization Creation through forms
    # @adminui @organization @smoke
    # Scenario: Create a new organization through forms
    #     Given User launches admin application
    #     When SuperAdmin login to Admin application
    #     Then Tenant list page will be displayed with all tenants
    #     When User search a tenant "BW Pvt Ltd"
    #     When User clicks on the tenant "BW Pvt Ltd" options
    #     When User select the program from the list
    #      Then Verify the Hierarchy Creation Popup appears
    # When Click cancel on the hierarchy creation popup
    # Then Verify the user is on the program landing page
    #     When User click on Partner Hub
    #     When User click on the Organization submenu
    #     Then Verify the organization page is displayed
    #     When User click on add organization to create a new organization
    #     Then Organization form should be displayed
    #     When User enters all the mandatory fields in organization form
    #     When User click on submit button in organization form
    #     Then Organization created successfully message shown up
    #     Then Created organization should be displayed in the list of organizations


    # #For User creation
    @adminui @user @smoke @test
    Scenario: Create a new user through forms
        Given User launches admin application
        When SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When User search a tenant "BW Pvt Ltd"
        When User clicks on the tenant "BW Pvt Ltd" options
        When User select the program from the list
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        Then Verify the user is on the program landing page
        When User click on Partner Hub
        When User click on the Users submenu
        Then Verify the user page is displayed
        When User click on add user to create a new user
        Then User form should be displayed
        When User enters all the mandatory fields in user form
        When User click on create user button
        Then User created successfully message shown up
        Then Created user should be displayed in the list of users

    # @adminui @jobrole @smoke
    # Scenario: Create a jobrole for a tenant
    #     Given User launches admin application
    #     When SuperAdmin login to Admin application
    #     Then Tenant list page will be displayed with all tenants
    #     When User search a tenant "BW Pvt Ltd"
    #     When User clicks on the tenant "BW Pvt Ltd" options
    #     When User select the program from the list
    #      Then Verify the Hierarchy Creation Popup appears
    # When Click cancel on the hierarchy creation popup
    # Then Verify the user is on the program landing page
    #     When User click on Partner Hub
    #     When User clicks on the jobroles
    #     Then Verify the jobrole page is displayed
    #     When User click on the add jobrole
    #     Then Verify the jobrole form is displayed
    #     When User enters all the mandatory fields in jobrole form
    #     When User click on add button in jobrole form page
    #     Then Jobrole created successfully message shown up
    #     Then Created jobrole should be displayed in the list of jobroles


    #For static audience
    @adminui @audience @smoke
    Scenario: Create a new static audience through upload
        When User navigate to audience group page
        Then Create a new group for static audience and enter the mandatory fields
        Then User download the audience template
        Then User enters the data in audience csv file
        Then User Choose the schema template and upload the file for audience
        Then Click on submit and verify the audience created successfully
        #For dynamic audience
        Then User navigate to audience group page
        When User create a new group for dynamic audience and enter the mandatory fields
        Then Choose the criteria for dynamic audience


