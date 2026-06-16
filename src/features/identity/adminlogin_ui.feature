Feature: Admin UI Login

    # created by  = Kadarkarai Selvam
    # reviewed by = Ruthrakanth
    # notupdated by  = Ruthrakanth
    # project url = /phoenix/services/identity

    #__________________________________________________________________________________________

    Background:
        Given User launches admin application

    @adminui @identity @IDM001Registrationmethod @system @special @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure registration method in admin
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the registration method configuration
        Then User can configure the registration method as Self Registration and File upload

    @adminui @identity @IDM001Registrationmethod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure registration method as Self Registration
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User configure the registration method as Self Registration
        When Anonymous platform user access the registration page
        Then User can see the registration page
        When User fill the registration form
        Then User can submit the registration form
        Then successful message shown up

    @adminui @identity @IDM001Registrationmethod @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure registration method as File upload
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User configure the registration method as File upload
        When superadmin navigates to the user list page in admin
        Then User can see the file upload button
        When User upload the file
        Then User can see the file upload success message
        Then User can see the uploaded users in the user list

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure registration activation with Email Activation code
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the registration activation configuration
        Then User can configure the registration activation as Email Activation code

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notnotupdated @notautomated
    Scenario: Verify Admin can configure registration activation with OTP
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the registration activation configuration
        Then User can configure the registration activation as OTP

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notnotupdated @notautomated
    Scenario: Verify Admin can configure registration activation with Email Activation code & OTP
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the registration activation configuration
        Then User can configure the registration activation as Email Activation code & OTP

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notnotupdated @notautomated
    Scenario: Verify Admin can configure Registration flow with activation form preview
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the activation form preview as enabled
        When anonymous user access the registration page
        Then User can see the registration page with activation form preview

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow without activation form preview
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the activation form preview as disabled
        When anonymous user access the registration page
        Then User can see the registration page without activation form preview

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow with Security questions
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the security questions as enabled
        When anonymous user access the registration page
        Then User can see the registration page with security questions

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow without Security questions
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the security questions as disabled
        When anonymous user access the registration page
        Then User can see the registration page without security questions

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow with Terms and Conditions
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the terms and conditions as enabled
        When anonymous user access the registration page
        Then User can see the registration page with terms and conditions

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow without Terms and Conditions
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the terms and conditions as disabled
        When anonymous user access the registration page
        Then User can see the registration page without terms and conditions

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow with Promotion Consent
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the promotion consent as enabled
        When anonymous user access the registration page
        Then User can see the registration page with promotion consent

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow without Promotion Consent
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure the promotion consent as disabled
        When anonymous user access the registration page
        Then User can see the registration page without promotion consent

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as valid Password length
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password length
        When anonymous user access the registration page
        Then User can see the registration page with password field
        When user fill the registration form with valid password
        Then User submit the registration form
        Then User can see the registration success message

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as invalid Password length
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password length
        When anonymous user access the registration page
        Then User can see the registration page with password field
        When user fill the registration form with invalid password
        Then User submit the registration form
        Then error message shown up

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as valid Password complexity
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password complexity
        When anonymous user access the registration page
        Then User can see the registration page with password field
        When user fill the registration form with valid password in complexity
        Then User submit the registration form
        Then success message shown up

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as invalid Password complexity
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password complexity
        When anonymous user access the registration page
        Then User can see the registration page with password field
        When user fill the registration form with invalid password in complexity
        Then User submit the registration form
        Then error message shown up

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as valid Password expiration
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password expiration
        When anonymous user access the registration page
        Then User can see the registration page with password field
        Then User submit the registration form
        Then User can see the registration success message
        When PlatformUser login to the Platform Application
        When user leave the system without activity for less than password expiration time
        Then User should not be logged out of the system

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration password configuration as invalid Password expiration
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to form builder page
        When user selects the password field
        Then User can see the password configuration
        Then User can configure the password expiration
        When anonymous user access the registration page
        Then User can see the registration page with password field
        Then User submit the registration form
        Then User can see the registration success message
        When PlatformUser login to the Platform Application
        When user leave the system without activity for more than password expiration time
        Then User can see the password expiration message
        Then User is logged out of the system

    @adminui @identity @IDM002ConfigureRegistration @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure to bypass activation for SSO users
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        When User configure activation form such that activation is skipped for SSO users
        When user click on SSO sign in
        Then Activation step should be skipped & user can login directly to program website/app


    # SSO login test cases

    @adminui @identity @IDM003Login @system @special @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: <testid> Admin Page login with <username> username and <password> password
        Given Admin url is launched
        When <testid> user is on the Sign In page
        When user enters <username> username and <password> password and click on login
        Then Tenant list page will be displayed with all tenants
        Examples:
            | testid  | username | password |
            | valid   | valid    | valid    |
            | invalid | invalid  | invalid  |

    @adminui @identity @IDM003Login @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin API login with <validinvalid> username and <validinvalid> password
        Given Admin API is launched
        When user enters <validinvalid> username and <validinvalid> password
        Then User should get the <response> response with jwt token and refresh token
        Examples:
            | validinvalid   | response |
            | valid          | valid    |
            | invalid        | invalid  |
            | empty          | empty    |
            | trailing space | valid    |
            | leading space  | valid    |


    @adminui @identity @IDM003Login @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin API login token value containing role
        When User enters the valid username and password
        Then User can get the valid jwt token and refresh token
        When user gets the decrypted token value
        Then decrypted value contains the role

    @adminui @identity @IDM003Login @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin API login token value containing tenant
        When User enters the valid username and password
        Then User can get the valid jwt token and refresh token
        When user gets the decrypted token value
        Then decrypted value contains the tenant

    @adminui @identity @IDM003Login @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin API login token value containing user details
        When User enters the valid username and password
        Then User can get the valid jwt token and refresh token
        When user gets the decrypted token value
        Then decrypted value contains the user details

    @adminui @identity @IDM003Login @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin API login token value with scenario
        Given Valid JWT token value is present in the system
        When User provides the valid jwt token in authorization header for a request
        Then User can access the resource

    @adminui @identity @IDM004LoginOptions @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with password
        Then User can select username/mobile number/email id with OTP
        Then User can select SSO
        Then user can select 2FA
        Then user can select Biometric

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as username/mobile number/email id with password
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with password
        When anonymous User access the platform login page
        Then User can see the login page with username/mobile number/email id and password
        When User enters the valid username/mobile number/email id and password
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as username/mobile number/email id with OTP and user contains valid mobile number
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with OTP
        When anonymous User access the platform login page
        Then User can see the login page with username/mobile number/email id and OTP
        When User enters the valid username/mobile number/email id and submit
        Then user can get the OTP to the registered mobile number

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as username/mobile number/email id with OTP and user contains valid email id
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with OTP
        When anonymous User access the platform login page
        Then User can see the login page with username/mobile number/email id and OTP
        When User enters the valid username/mobile number/email id and submit
        Then user can get the OTP to the registered email id

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as username/mobile number/email id with OTP and user contains invalid mobile number
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with OTP
        When anonymous User access the platform login page
        Then User can see the login page with username/mobile number/email id and OTP
        When User enters the invalid username/mobile number/email id and submit
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as username/mobile number/email id with OTP and user contains invalid email id
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select username/mobile number/email id with OTP
        When anonymous User access the platform login page
        Then User can see the login page with username/mobile number/email id and OTP
        When User enters the invalid username/mobile number/email id and submit
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as SSO and valid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select SSO
        When anonymous User access the platform login page
        Then User can see the login page with SSO
        When User click on the SSO
        When user provides the valid SSO credentials
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as SSO and invalid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select SSO
        When anonymous User access the platform login page
        Then User can see the login page with SSO
        When User click on the SSO
        When user provides the invalid SSO credentials
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as 2FA and valid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select 2FA
        When anonymous User access the platform login page
        Then User can see the login page with 2FA
        When User enters the valid username/mobile number/email id and password
        Then User gets the 2FA code
        When User enters the 2FA code or accept the 2FA request
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as 2FA and invalid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select 2FA
        When anonymous User access the platform login page
        Then User can see the login page with 2FA
        When User enters the invalid username/mobile number/email id and password
        Then User gets the 2FA code
        When User enters the invalid 2FA code or reject the 2FA request
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as Biometric and valid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the platform login pagen
        Then User can see the login page with Biometric
        When User provides the valid Biometric
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as Biometric and invalid user tries to login
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the platform login page
        Then User can see the login page with Biometric
        When User provides the invalid Biometric
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as Biometric in mobile application with valid biometric
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the mobile application login page
        When user enters the valid appcode
        Then User can see the login page with Biometric
        When User provides the valid Biometric
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure login method as Biometric in mobile application with invalid biometric
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the mobile application login page
        When user enters the valid appcode
        Then User can see the login page with Biometric
        When User provides the invalid Biometric
        Then error message shown up

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can login via Biometric in mobile application after performing clear cache
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the mobile application login page
        When User perform clear cache
        When user enters the valid appcode
        Then User can see the login page with Biometric
        When User provides the valid Biometric
        Then Verify user login to the system

    @adminui @identity @IDM004LoginOptions @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin cannot login via Biometric in mobile application after performing clear data
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the login method configuration
        Then User can select Biometric
        When anonymous User access the mobile application login page
        When User perform clear data with the application
        When user enters the valid appcode
        Then User can see the login page with Biometric
        When User provides the valid Biometric
        Then Verify user login to the system

    @adminui @identity @IDM006PasswordExpiry @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure different password expiration time for mobile and web
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the password expiration configuration for mobile
        Then User can see the password expiration configuration for Web


    @adminui @identity @IDM006PasswordExpiry @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin configured password expiration for mobile
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the password expiration configuration for mobile
        When User can configure the password expiration time for mobile
        When user login via mobile
        When user leave the mobile system without activity for more than password expiration time
        Then User should be logged out of the mobile system

    @adminui @identity @IDM006PasswordExpiry @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin configured password expiration for mobile - less than password expiration time
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the password expiration configuration for mobile
        When User can configure the password expiration time for mobile
        When user login via mobile
        When user leave the mobile system without activity less than password expiration time
        Then User should not be logged out of the mobile system

    @adminui @identity @IDM006PasswordExpiry @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin configured password expiration for web - within expiration time
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the password expiration configuration for web
        When User can configure the password expiration time for web
        When user login via web
        When user leave the web system without activity for less than password expiration time
        Then User should not be logged out of the web system

    @adminui @identity @IDM006PasswordExpiry @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin configured password expiration for web
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the password expiration configuration for web
        When User can configure the password expiration time for web
        When user login via web
        When user leave the web system without activity for more than password expiration time
        Then User should be logged out of the web system

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure the forget password method as emailid
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then user navigate to the forget password section.
        When user can configure the forget password method as email id, mobile number or all or both.

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure the forget password method as mobile number
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then user navigate to the forget password section.
        When user can configure the forget password method as mobile number.

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure the forget password method as mobile number
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then user navigate to the forget password section.
        When user can configure the forget password method as mobile number.


    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether error message is thrown while the user enters new password if it doesnt match the password policy

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the error is not thrown while the user enters new password that matches length, Complexity etc

    @adminui @identity @IDM007ForgetPassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with invalid username
        Given User is on the forget password page
        When User enters the invalid username
        Then error message shown up

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with valid username
        Given User is on the forget password page
        When User enters the valid username
        Then User can see the success message
        When User gets the OTP to the registered email id
        When User enters the OTP
        Then User can see the password reset page
        When User enters the new password
        Then User can see the password reset success message

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with valid email id
        Given User is on the forget password page
        When User enters the valid email id
        Then User can see the success message
        When User gets the OTP to the registered email id
        When User enters the OTP
        Then User can see the password reset page
        When User enters the new password
        Then User can see the password reset success message

    @adminui @identity @IDM007ForgetPassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with invalid email id
        Given User is on the forget password page
        When User enters the invalid email id
        Then error message shown up

    @adminui @identity @IDM007ForgetPassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with valid mobile number
        Given User is on the forget password page
        When User enters the valid mobile number
        Then User can see the success message
        When User gets the OTP to the registered mobile number
        When User enters the OTP
        Then User can see the password reset page
        When User enters the new password
        Then User can see the password reset success message

    @adminui @identity @IDM007ForgetPassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can reset the password with invalid mobile number
        Given User is on the forget password page
        When User enters the invalid mobile number
        Then error message shown up

    @adminui @identity @IDM008ChangePassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can change the password with valid old password and valid new password
        Given User is on the change password page
        When User enters the valid old password and valid new password other than old password
        Then User can see the password change success message

    @adminui @identity @IDM008ChangePassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can change the password with valid old password and invalid new password
        Given User is on the change password page
        When User enters the invalid old password and invalid new password equal to old password
        Then error message shown up

    @adminui @identity @IDM008ChangePassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can change the password with valid old password and invalid new password based upon password complexity
        Given User is on the change password page
        When User enters the invalid old password and invalid new password based upon password complexity
        Then error message shown up

    @adminui @identity @IDM008ChangePassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can change the password with invalid old password and valid new password
        Given User is on the change password page
        When User enters the invalid old password and valid new password
        Then error message shown up

    @adminui @identity @IDM008ChangePassword @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can change the password without entering the old password
        Given User is on the change password page
        When User skips entering the old password
        When User enters the valid new password
        Then error message shown up

    @adminui @identity @IDM0092FA @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable 2FA in Admin
        Given User is on the Admin login settings page
        When User enables the 2FA
        Then User can able to see the 2FA as enabled

    @adminui @identity @IDM0092FA @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable 2FA in Admin and login with valid 2FA
        Given User is on the Admin login settings page
        When User enables the 2FA
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User can see the 2FA page
        When User enters the valid 2FA code
        Then Verify user login to the system

    @adminui @identity @IDM0092FA @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable 2FA in Admin and login with invalid 2FA
        Given User is on the Admin login settings page
        When User enables the 2FA
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User can see the 2FA page
        When User enters the invalid 2FA code
        Then error message shown up

    @adminui @identity @IDM0092FA @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable 2FA in Admin and login with expired 2FA
        Given User is on the Admin login settings page
        When User enables the 2FA
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User can see the 2FA page
        When User enters the expired 2FA code
        Then error message shown up

    @adminui @identity @IDM0092FA @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable 2FA in Admin and user not enter 2FA
        Given User is on the Admin login settings page
        When User enables the 2FA
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User can see the 2FA page
        When User neither enters the 2FA code
        Then error message shown up

    @adminui @identity @IDM011SSO @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable SSO in Admin
        Given User is on the Admin login settings page
        When User enables the SSO
        Then User can able to see the SSO as enabled

    @adminui @identity @IDM011SSO @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable SSO in Admin and login with valid SSO
        Given User is on the Admin login settings page
        When User selects the SSO login option
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User is redirected to the SSO provider's authentication page
        When User completes the SSO authentication
        Then Verify user login to the system
        Then user is not prompted for any activation step

    @adminui @identity @IDM011SSO @scenario @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable SSO in Admin and login with invalid SSO
        Given User is on the Admin login settings page
        When User enables the SSO
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User is redirected to the SSO provider's authentication page
        When User enters invalid details with the SSO request
        Then error message shown up

    @adminui @identity @IDM011SSO @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can enable SSO in Admin and user not accept or reject SSO
        Given User is on the Admin login settings page
        When User enables the SSO
        When Anonymous user navigates to the platform login page
        When PlatformUser login to the Platform Application
        Then User can see the SSO page
        When User neither accepts nor rejects the SSO request
        Then error message shown up

    @adminui @identity @IDM015Login @system @special @positive @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Login/Activation with leading and trailing spaces in username
        Given User is on the Admin login settings page
        When User enters "   user1   " as username
        When User enters "password123" as password
        When User clicks on the login button
        Then User should be logged in successfully
        Then Username stored in the system should be "user@example.com"

    @adminui @identity @IDM015Login @system @special @positive @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Login/Activation with leading and trailing spaces in password
        Given the user is on the login page
        When User enters "user@example.com" as username
        When User enters "   password123   " as password
        When User clicks on the login button
        Then the user should be logged in successfully
        And the password should be stored as "password123"

    @adminui @identity @IDM015Login @system @special @positive @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Login/Activation with leading and trailing spaces in mobilenumber
        Given User is on the Admin login settings page
        When User enters "   1234567898   " as mobilenumber
        When User enters "password123" as password
        When User clicks on the login button
        Then User should be logged in successfully
        Then mobilenumber should be stored as "1234567898"

    @adminui @identity @IDM015Login @system @special @positive @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Login/Activation with leading and trailing spaces in email & password
        Given User is on the Admin login settings page
        When User enters "  user@gmail.com  " as mobilenumber
        When User enters "password123  " as password
        When User clicks on the login button
        Then User should be logged in successfully
        Then Username & password should be stored as "user@gmail.com" and "password123"

    @adminui @identity @IDM016LoginImpersonation @system @special @positive @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user Impersonation login for active user
        Given Admin user navigate to the user list page
        When Admin user selects the user
        Then Admin user can see the impersonation button
        When Admin user clicks on the impersonation button
        Then Admin user can login to the platform page as the selected user
        Then the login attempt should be logged with details:
            | username         | method        |
            | user@example.com | impersonation |

    @adminui @identity @IDM016LoginImpersonation @system @special @negative @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user Impersonation login for inactive user
        Given Admin user navigate to the user list page
        When Admin user selects the inactive user
        Then Admin user can see the impersonation button
        When Admin user clicks on the impersonation button
        Then error message shown up

    @adminui @identity @IDM016LoginImpersonation @system @special @negative @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user Impersonation login for a user in inactive program
        Given Admin user navigate to the inactive program page
        Given Admin user navigate to the user list page
        When Admin user selects the user in inactive program
        Then Admin user can see the impersonation button
        When Admin user clicks on the impersonation button
        Then error message shown up

    @adminui @identity @IDM016LoginImpersonation @system @special @negative @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user Impersonation login for a user in inactive tenant
        Given Admin user navigate to the inactive tenant page
        Given Admin user navigate to the user list page
        When Admin user selects the user in inactive tenant
        Then Admin user can see the impersonation button
        When Admin user clicks on the impersonation button
        Then error message shown up

    @adminui @identity @IDM016LoginImpersonation @system @special @negative @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: User login with SSO
        Given the user is on the login page
        When User clicks on the SSO login button
        When User completes the SSO authentication
        Then User should be logged in successfully
        Then the login attempt should be logged with details:
            | username         | method |
            | user@example.com | SSO    |

    @adminui @identity @IDM016LoginImpersonation @system @special @negative @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: User login with OTP
        Given User is on the login page
        When the user enters "user@example.com" as username
        And the user requests an OTP
        And the user enters the received OTP
        And the user clicks on the login button
        Then the user should be logged in successfully
        Then the login attempt should be logged with details:
            | username         | method |
            | user@example.com | OTP    |

    @adminui @identity @IDM017LoginLogs @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can see the login logs
        When Admin PlatformUser login to the Platform Application
        Then user login timestamp as per default time zone of the program should be stored in database
        Then user login browser version should be stored in database
        Then user login device should be stored in database
        Then user login location should be stored in database
        Then user login IP address should be stored in database
        Then user should be logged in to the system

    @adminui @identity @IDM017LoginLogs @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can see the login logs with device and application
        When Admin PlatformUser login to the Platform Application
        Then user login system achievo or web should be stored in database
        Then login method such as OTP, password, SSO, 2FA, Biometric should be stored in database
        Then user should be logged in to the system

    @adminui @identity @IDM017LoginLogs @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can see the login logs with invalid login details
        When Admin invalid PlatformUser login to the Platform Application
        Then Invalid/ Failed login attempts should also be logged
        Then user should not be logged in to the system

    @adminui @identity @IDM021UsernameChange @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the change username by admin with <validorinvalid> username
        Given User is on the change username page
        When User enters the <validinvalid> username
        Then User can see the username change <successorfail> message
        Examples:
            | validorinvalid    | successorfail |
            | valid             | success       |
            | invalid           | fail          |
            | empty             | fail          |
            | trailing space    | success       |
            | leading space     | success       |
            | existing username | fail          |
            | same username     | fail          |

    @adminui @identity @IDM021UsernameChange @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the change username by user
        Given platform User login to the application
        When user tries to change the username
        Then error message shown up

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify with invalid password and account is locked after certain tries

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login session is active after closing browser

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login session is active on page refresh

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether on remember me, login details are saved and password is viewable on clicking show password icon

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login password is visible on clicking show password icon

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether on clicking forgot password link, user is redirected to forgot password page

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login details are not saved on unchecking remember me checkbox

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user logs out of the application and click on back button

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user login to the application and click on back button

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the scenario when user tries to duplicate the current active browser session

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Logout Functionality in Active session which has a Duplicated Browser Window

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Logout Functionality in a Duplicated Browser Window with an Active Session

    @adminui @identity @IDM022Adhoc @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify with invalid password and account is locked



    # Test cases pending for below US :

    # IDM005OptionsforPassword
    # PHOENIX_IDM_0014 GDPR Support GDPR requirements (TBD)  - test cases are not there

    #______________________________________Verify the below test cases during automation sync up____________________________________________________


    #********************************************************************************************************************
    # @adminui @identity @IDM003Login @system @special @uiuxlayout @negative @notreviewed @platform @notupdated @notautomated
#     Scenario: <testid> UI Login page verification for <parameter> is <behaviour>
#         When <testid> user is on admin Login page
#         Then verify the <parameter> is <behaviour>
#         Examples:
#             | testid | parameter         | behaviour  |
#             | S001   | logo              | displayed  |
#             | S002   | username          | displayed  |
#             | S003   | password          | displayed  |
#             | S004   | usernameinput     | displayed  |
#             | S005   | passwordinput     | displayed  |
#             | S006   | viewpassword      | enabled    |
#             | S007   | remembermelabel   | displayed  |
#             | S008   | rememberme        | unselected |
#             | S009   | forgotpassword    | displayed  |
#             | S010   | signin            | disabled   |
#             | S011   | biwwemployeelabel | displayed  |
#             | S012   | clickhere         | displayed  |

#     # @UI @identity @adminloginui @system @functional @form @reviewed
#     Scenario: UI login with username : <username> and password : <password>
#         When <testid> user is on admin Login page
#         When user enters <username> and <password> and click on login
#         Then user should <what> login
#         Examples:
#             | testid | username | password | what    |
#             | U002   | valid    | invalid  | error   |
#             | U003   | valid    | valid    | success |
#             | U004   | empty    | invalid  | error   |
#             | U005   | valid    | empty    | error   |

#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify login with different credentials
#         When <testid> user is on admin Login page
#         When user enters <username1> and <password1> and <rememberme> and click on login
#         Then user should <what1> login
#         When user enters <username2> and <password2> and <rememberme> and click on login
#         Then user should <what2> login
#         When user enters <username3> and <password3> and <rememberme> and click on login
#         Then user should <what2> login
#         Examples:
#             | testid | username1 | password1 | username2 | password2 | username3 | password3 | rememberme | what1 | what2 | what3   |
#             | U002   | invalid   | valid     | valid     | invalid   | valid     | valid     | true       | error | error | success |


#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify with invalid password and account is locked <testid>
#         When <testid> user is on admin Login page
#         When user enters <username> and <password> and <rememberme> and click on login
#         Then user should <what> login
#         When user enters <username> and <password> and <rememberme> and click on login
#         Then user should <what> login
#         When user enters <username> and <password> and <rememberme> and click on login
#         Then user should <what> login
#         When user enters <username1> and <password1> and <rememberme> and click on login
#         Then account locked error message is displayed

#         Examples:
#             | testid | username | password | rememberme | what  | username1 | password1 |
#             | U002   | valid    | invalid  | true       | error | valid     | valid     |


#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify whether login session is active after closing browser
#         Given user is on adminLogin page
#         When user enters <username> and <password> and <rememberme> and click on login
#         Then user should <what> login
#         When user closes the browser
#         Then user opens the browser
#         When user hits adminlogin url
#         Given user is on adminLogin page

#         Examples:
#             | username | password | rememberme | what    |
#             | valid    | valid    | true       | success |

#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify whether login session is active on page refresh
#         Given user is on adminLogin pageWhen user enters <username> and <password> and <rememberme> and click on login
#         Then user should <what> login
#         When user refreshes the page
#         Then user is on admin Homepage

#         Examples:
#             | username | password | rememberme | what    |
#             | valid    | valid    | true       | success |

#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify whether login password is visible on clicking show password icon
#         Given user is on adminLogin page
#         When user enters <username> and <password>
#         When user clicks on show password icon
#         Then password is <visible>
#         When user clicks on show password icon
#         Then password is <notvisible>

#         Examples:
#             | username | password | visible | notvisible |
#             | valid    | valid    | visible | notvisible |


#     # @UI @identity @adminloginui @system @functional @other @reviewed
#     Scenario: Verify whether on remember me, login details are saved and password is viewable on clicking show password icon
#         Given user is on adminLogin page
#         When user enters valid username and valid password
#         When user clicks on remember me checkbox
#         Then user clicks on SignIn
#         Then home page is displayed
#         When user closes the browser
#         Then user opens the browser
#         When user hits adminlogin url
#         Then user should be able to see the login page
#         When user sees username and password fields are filled
#         When user clicks on show password icon
#         Then password is visible
#         When user clicks on show password icon
#         Then password is not visible
#         Then user clicks on SignIn
#         Then home page is displayed

#     # @UI @identity @adminloginui @system @functional @other @notreviewed
#     # Scenario: Verify whether login details are not saved on unchecking remember me checkbox
#     #     Given user is on adminLogin page
#     #     When user enters valid username and valid password
#     #     When user clicks on remember me checkbox
#     #     Then user clicks on SignIn
#     #     Then home page is displayed
#     #     When user closes the browser
#     #     Then user opens the browser
#     #     When user hits adminlogin url
#     #     Then user should be able to see the login page
#     #     When user sees username and password fields are filled
#     #     When user unchecks remember me checkbox
#     #     Then user clicks on SignIn
#     #     Then home page is displayed
#     #     When userlogout
#     #     Then user should be able to see the login page
#     #     When user does not see prefilled user details
#     #     When user enters valid username and valid password
#     #     Then user clicks on SignIn
#     #     Then home page is displayed

#     # created a ticket to clarify this functionality, commenting this scenario for this.
#     # https://gitlab.biw-services.com/phoenix/experiences/frontend/webapp/-/issues/148

#     # @UI @identity @adminloginui @navigation @functional @other @reviewed
#     Scenario: Verify whether on clicking forgot password link, user is redirected to forgot password page
#         Given user is on adminLogin page
#         When user clicks on forgot password link
#         Then user is redirected to forgot password page
#         When user clicks on back to login link
#         Then user is on adminLogin page

# # @UI @identity @adminloginui @system @functional @other @notreviewed
# # Scenario: Verify whether on clicking BIWEmployee link, user is redirected to Super Admin Login page
# #     Given user is on adminLogin page
# #     When user clicks on BIWEmployee link
# #     Then user is redirected to Super Admin Login page

# # UI not confirmed functionality, need to be discussed with team

# # @UI @identity @adminloginui @system @functional @other @notreviewed
# # Scenario: Verify whether Sign In button is disabled when username and password fields are empty
# #     Given user is on adminLogin page
# #     When user does not enter username and password
# #     Then SignIn button is disabled
# #     When user enters username and password
# #     Then SignIn button is enabled

# # This scenario is not implemented as per the design, commenting this scenario for this.


