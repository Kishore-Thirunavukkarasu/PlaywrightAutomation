Feature: Auth Login, Logout, Change Password for admin user and System Testing
    Auth Login, Logout, Change Password for Admin User
    System testing includes verification of the particular system

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background:
        Given Verify tenant is created

    @api @identityAPI @platformloginapi @system @post @functional @smoke @reviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter | type     | valuetype | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-101 | username  | username | validName | encrypted         | 200          | success        |

    @api @identityAPI @platformloginapi @system @post @functional @positive @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype         | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-102 | email        | email        | validEmail        | encrypted         | 200          | success        |
            | PlatformIdentity-103 | mobileNumber | mobileNumber | validMobileNumber | encrypted         | 200          | success        |

    @api @identityAPI @platformloginapi @system @post @functional @negative @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype           | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-104 | username     | username     | invalidName         | encrypted         | 401          | error          |
            | PlatformIdentity-105 | email        | email        | invalidEmail        | encrypted         | 401          | error          |
            | PlatformIdentity-106 | mobileNumber | mobileNumber | invalidMobileNumber | encrypted         | 401          | error          |
            | PlatformIdentity-107 | username     | email        | validName           | encrypted         | 401          | error          |
            | PlatformIdentity-108 | username     | mobileNumber | validName           | encrypted         | 401          | error          |
            | PlatformIdentity-109 | email        | username     | validEmail          | encrypted         | 401          | error          |
            | PlatformIdentity-110 | email        | mobileNumber | validEmail          | encrypted         | 401          | error          |
            | PlatformIdentity-111 | mobileNumber | username     | validMobileNumber   | encrypted         | 401          | error          |
            | PlatformIdentity-112 | mobileNumber | email        | validMobileNumber   | encrypted         | 401          | error          |
            | PlatformIdentity-113 | username     | username     | empty               | encrypted         | 401          | error          |
            | PlatformIdentity-114 | email        | email        | empty               | encrypted         | 401          | error          |
            | PlatformIdentity-115 | mobileNumber | mobileNumber | empty               | encrypted         | 401          | error          |
            | PlatformIdentity-116 | username     | username     | null                | encrypted         | 401          | error          |
            | PlatformIdentity-117 | email        | email        | null                | encrypted         | 401          | error          |
            | PlatformIdentity-118 | mobileNumber | mobileNumber | null                | encrypted         | 401          | error          |

    @api @identityAPI @platformloginapi @system @post @functional @negative @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype         | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-119 | username     | username     | validName         | nonEncrypted      | 401          | error          |
            | PlatformIdentity-120 | email        | email        | validEmail        | nonEncrypted      | 401          | error          |
            | PlatformIdentity-121 | mobileNumber | mobileNumber | validMobileNumber | nonEncrypted      | 401          | error          |

    @api @identityAPI @platformloginapi @system @post @functional @negative @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password for inactive user
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password for inactive user
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype         | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-122 | username     | username     | validName         | encrypted         | 401          | error          |
            | PlatformIdentity-123 | email        | email        | validEmail        | encrypted         | 401          | error          |
            | PlatformIdentity-124 | mobileNumber | mobileNumber | validMobileNumber | encrypted         | 401          | error          |

    @api @identityAPI @platformloginapi @system @post @functional @negative @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password for locked user
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password for locked user
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype         | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-125 | username     | username     | validName         | encrypted         | 401          | error          |
            | PlatformIdentity-126 | email        | email        | validEmail        | encrypted         | 401          | error          |
            | PlatformIdentity-127 | mobileNumber | mobileNumber | validMobileNumber | encrypted         | 401          | error          |

    @api @identityAPI @platformloginapi @system @post @functional @negative @notreviewed @platform
    Scenario: <testid> Login to platform site by passing <valuetype> of <parameter> with type as <type> and <passwordValuetype> password for deleted user
        When <testid> user login to platform site by passing <valuetype> <parameter> type as <type> and <passwordValuetype> password for deleted user
        Then <responsecode> and <responsestatus> is received for platform login
        Examples:
            | testid               | parameter    | type         | valuetype         | passwordValuetype | responsecode | responsestatus |
            | PlatformIdentity-128 | username     | username     | validName         | encrypted         | 401          | error          |
            | PlatformIdentity-129 | email        | email        | validEmail        | encrypted         | 401          | error          |
            | PlatformIdentity-130 | mobileNumber | mobileNumber | validMobileNumber | encrypted         | 401          | error          |

    @api @identityAPI @platformloginapi @system @post @functional @positive @notreviewed @platform
    Scenario: <testid> Logout from platform site by passing <valuetype> <tokentype>
        When <testid> user logout from platform site by passing <valuetype> <tokentype>
        Then <responsecode> and <responsestatus> is received for platform logout
        Examples:
            | testid               | tokentype   | valuetype | responsecode | responsestatus |
            | PlatformIdentity-131 | BearerToken | valid     | 200          | success        |

#######################################################################################################

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with invalid tenant id and valid credentials
        Given With invalid tenant id
        When valid active user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with valid tenant id and invalid credentials
        Given With valid tenant id
        When invalid any user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with invalid tenant id and invalid credentials
        Given With invalid tenant id
        When invalid any user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid credentials and user is inactive
        Given With valid tenant id
        When valid inactive user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid credentials and user is deleted
        Given With valid tenant id
        When valid deleted user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid credentials and user is locked
        Given With valid tenant id
        When valid locked user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid username and invalid password
        Given With valid tenant id
        When valid username and invalid password are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid platform username and password
        Given With valid tenant id
        When valid platform username and password are entered
        When json object is passed to login api
        Then session token is created
        Then status code should be 200
        Then roleid should not be received
        Then auth token should contain the email and id of the user.

    @api @identityAPI @login @system @post @functional @platform @notreviewed @superadmin
    Scenario: Login with valid tenant id and valid admin username and password
        Given With valid tenant id
        When valid admin username and password are entered
        When json object is passed to login api
        Then session token is created
        Then status code should be 200
        Then roleid should be received
        Then auth token should contain the email and id of the user
        Then auth token should contain the role id of the user

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Login with valid tenant id for platform user where tenant contains multiple programs
        Given With valid tenant id having multiple programs
        When valid platform username and password are entered
        When json object is passed to login api
        Then session token is created
        Then status code should be 200
        Then auth token should contain the email and id of the user

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Login with valid tenant id for platform user where tenant contains single program
        Given With valid tenant id having single program
        When valid platform username and password are entered
        When json object is passed to login api
        Then session token is created
        Then status code should be 200
        Then auth token should contain the email and id of the user

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with user having valid username and non encrypted password
        Given With valid tenant id
        When valid username and non encrypted password are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login without tenant id
        Given Without tenant id
        When valid active user credentials are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login without password
        Given With valid tenant id
        When valid username and without password are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login without username
        Given With valid tenant id
        When without username and valid password are entered
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Login with invalid tenant id and user combination with valid tenant and valid user id
        Given With valid tenant id
        When valid user password are entered with invalid combination of tenant id
        When json object is passed to login api
        Then session token is not created
        Then status code should be 401


    # #######################Change Password#########################

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Change password with valid tenant id and valid old password
        Given With valid tenant id
        When valid old password and new password are entered
        When json object is passed to change password api
        Then password is changed successfully
        Then status code should be 200

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password with valid tenant id and invalid old password
        Given With valid tenant id
        When invalid old password and valid new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password with invalid tenant id and valid old password
        Given With invalid tenant id
        When valid old password and new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password with invalid tenant id and invalid old password
        Given With invalid tenant id
        When invalid old password and valid new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password with same old and new password
        Given With valid tenant id
        When same old password and new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Changed password with different old and new password
        Given With valid tenant id
        When different old password and new password are entered
        When json object is passed to change password api
        Then password is changed successfully
        Then status code should be 200

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password for user having a valid session token who becomes inactive
        Given With valid tenant id
        When valid old password and new password are entered for inactive user
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password for invalid acess token
        Given With valid tenant id
        When valid old password and new password are entered for invalid access token
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password after access token expires
        Given With valid tenant id
        When valid old password and new password are entered after access token expires
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password without tenant id
        Given Without tenant id
        When valid old password and new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password without new password
        Given With valid tenant id
        When valid old password and without new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Change password without old password
        Given With valid tenant id
        When without old password and valid new password are entered
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: change password with invalid combination of tenant id and access token
        Given With valid tenant id
        When valid old password and new password are entered with invalid combination of tenant id and access token
        When json object is passed to change password api
        Then password is not changed
        Then status code should be 401

    # #######################Logout#########################

    @api @identityAPI @login @system @post @functional @positive @notreviewed @superadmin
    Scenario: Logout with valid access token
        Given With valid tenant id
        When valid access token is passed to logout api
        Then session token is deleted successfully
        Then status code should be 200

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Logout with invalid access token
        Given With valid tenant id
        When invalid access token is passed to logout api
        Then not success message should be displayed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Logout with expired access token
        Given With valid tenant id
        When expired access token is passed to logout api
        Then not success message should be displayed
        Then status code should be 401

    @api @identityAPI @login @system @post @functional @negative @notreviewed @superadmin
    Scenario: Logout without access token
        Given With valid tenant id
        When access token is not passed to logout api
        Then not success message should be displayed
        Then status code should be 401