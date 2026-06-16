Feature: Promotion Automation - User Creation, Activation, Audience Creation and Promotion Creation

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  = Kishore Gunasekaran
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/filemanager/productandactivity/,

    @adminui @users @SellXGetY @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for SellXGetY promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "SellXGetY" Promotion
        When Create users with "Setting2" for "SellXGetY" Promotion
        When Create users with "Setting3" for "SellXGetY" Promotion
        When Create users with "Setting4" for "SellXGetY" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "SellXGetY Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @SellXGetY @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario Outline: Activate the group of users for SellXGetY promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | SellXGetY |
    #         | Setting2 | SellXGetY |
    #         | Setting3 | SellXGetY |
    # # | Setting4 | SellXGetY | Non activated user

    @adminui @users @AOT @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for AOT promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "AOT" Promotion
        When Create users with "Setting2" for "AOT" Promotion
        When Create users with "Setting3" for "AOT" Promotion
        When Create users with "Setting4" for "AOT" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "AOT Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @AOT @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for AOT promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | AOT       |
    #         | Setting2 | AOT       |
    #         | Setting3 | AOT       |
    # # | Setting4 | AOT       | Non activated user

    @adminui @users @DPD @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for DPD promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "DPD" Promotion
        When Create users with "Setting2" for "DPD" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "DPD Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @DPD @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for DPD promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | DPD       |
    #         | Setting2 | DPD       |

    @adminui @users @Game @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for Game promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "Game" Promotion
        When Create users with "Setting2" for "Game" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Game Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @Game @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for Game promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | Game      |
    # # | Setting2 | Game       | Non activated user

    @adminui @users @QandQ @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for QandQ promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "QandQ" Promotion
        When Create users with "Setting2" for "QandQ" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "QandQ Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @QandQ @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for QandQ promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | QandQ     |
    #         | Setting2 | QandQ     |

    @adminui @users @GoalQuest @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for GoalQuest promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "GoalQuest" Promotion
        When Create users with "Setting2" for "GoalQuest" Promotion
        When Create users with "Setting3" for "GoalQuest" Promotion
        When Create users with "Setting4" for "GoalQuest" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "GoalQuest Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @GoalQuest @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for GoalQuest promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | GoalQuest |
    #         | Setting2 | GoalQuest |
    #         | Setting3 | GoalQuest |
    # # | Setting4 | GoalQuest | Non activated user

    @adminui @users @UserTarget @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for UserTarget promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "UserTarget" Promotion
        When Create users with "Setting2" for "UserTarget" Promotion
        When Create users with "Setting3" for "UserTarget" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "UserTarget Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @UserTarget @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for UserTarget promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion  |
    #         | Setting1 | UserTarget |
    #         | Setting2 | UserTarget |
    #         | Setting3 | UserTarget |

    @adminui @users @OrganizationTarget @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for OrganizationTarget promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "OrganizationTarget" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "OrganizationTarget Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @OrganizationTarget @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for OrganizationTarget promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion          |
    #         | Setting1 | OrganizationTarget |

    @adminui @users @TestPromotion @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for Test promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "Test" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "Test Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @TestPromotion @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for Test promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion |
    #         | Setting1 | Test      |

    @adminui @users @InvoiceClaim @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for InvoiceClaim promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "InvoiceClaim" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "InvoiceClaim Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @InvoiceClaim @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for InvoiceClaim promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion    |
    #         | Setting1 | InvoiceClaim |

    @adminui @users @SalesClaim @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating the users for SalesClaim promotion
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Participants" submenu
        Then Verify the "Users" page is displayed
        When Create users with "Setting1" for "SalesClaim" Promotion
        When User click on upload button
        When User Choose the template for the "Users" csv file
        When Upload the csv file "SalesClaim Promotion Users"
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Upload file page
        Then "Successful" message shown up for file upload

    # @adminui @users @SalesClaim @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    # Scenario: Activate the group of users for SalesClaim promotion
    #     When User launches platform application
    #     When User enters the valid appcode for the specific program
    #     Then User should able to see the login screen
    #     When user navigate to the "User Activation" platform
    #     When User activates the <Settings> users for <Promotion> promotion
    #     Examples:
    #         | Settings | Promotion  |
    #         | Setting1 | SalesClaim |

    @adminui @audience @promotionAudience @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Create a new static audience for promotions
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Audience" submenu
        When User is on the Audience page
        When User click on the Create New Group
        Then Verify the "Static Audience" is displayed
        When User clicks on the "Static Audience"
        Then Verify the "Static :Create New Group" create new group is displayed
        When Enter the mandatory details for <audienceGroup> creation
        When User create a new csv file with <users>
        Then Add user manually badge should be displayed
        When User click on upload csv badge
        When User Choose the template for the "Audience" csv file
        When Upload the csv file for <users>
        Then Verify the file should be uploaded and displayed
        When User click on "Submit" button in Audience user Upload file page
        Then "Successful" message shown up for file upload

        # When User click on Start from Add Users Manually
        # Then Verify the side panel is displayed with search users, list of users
        # When User search and select the <user> users for promotion
        # When User click on Add Selected button
        # When User click on "Submit" button
        # Then "Successful" message shown up
        Examples:
            | audienceGroup               | users                           |
            | SellXGetY Audience1         | Setting1SellXGetYUsers          |
            | SellXGetY Audience2         | Setting2SellXGetYUsers          |
            | SellXGetY Audience3         | Setting3SellXGetYUsers          |
            | SellXGetY Audience4         | Setting4SellXGetYUsers          |
            | AOT Audience1               | Setting1AOTUsers                |
            | AOT Audience2               | Setting2AOTUsers                |
            | AOT Audience3               | Setting3AOTUsers                |
            | AOT Audience4               | Setting4AOTUsers                |
            | GoalQuest Audience1         | Setting1GoalQuestUsers          |
            | GoalQuest Audience2         | Setting2GoalQuestUsers          |
            | GoalQuest Audience3         | Setting3GoalQuestUsers          |
            | GoalQuest Audience4         | Setting4GoalQuestUsers          |
            | OrganizationTarget Audience | Setting1OrganizationTargetUsers |
            | TestPromotion Audience      | Setting1TestPromotionUsers      |
            | DPD Audience                | DPDUserSetting                  |
            | UserTarget Audience         | UserTargetUserSetting           |
            | QandQ Audience              | QandQUserSetting                |
            | Game Audience               | GameUserSetting                 |
            | Invoice Claim Audience      | Setting1InvoiceClaimUsers       |
            | Sales Claim Audience        | Setting1SalesClaimUsers         |


    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Create <Promotion> promotion with mandatory fields
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Promotions"
        When User is on Promotion Page
        When User click on "New Promotion" from the Promotion page
        When User hits continue button present in <Promotion> promotion
        Then User is taken to <Promotion> page
        When User enters input data with the mandatory fields in "Basic details" tab for <Promotion> promotion
        Then User clicks on "Next" Button in "Basic details" tab from promotion page
        When User add the audience group for <Promotion> Promotion
        Then User clicks on "Next" Button in "Audience" tab from promotion page
        Then "Successful" message shown up
        Examples:
            | Promotion              |
            | SellXGetY              |
            | AOT                    |
            | OrganizationTarget     |
            | Test                   |
            | UserTarget             |
            | Direct Point Deposit   |
            | Game                   |
            | Quiz & Questionnaire   |
            | Goal Quest             |
            | Invoice Claim          |
            | Sales Claim            |
            | LXP Promotion          |