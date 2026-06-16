Feature: Self - Registration Achievo

    # created by  = kishore Gunasekaran
    # reviewed by =
    # notupdated by =
    # project url =

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure registration method in admin
        Given SuperAdmin login to Admin application
        Then Tenant list page will be displayed with all tenants
        When user choose the existing tenant
        When Navigate to tenant settings page
        Then User can see the registration method configuration
        Then User can configure the registration method as Self Registration and File upload`

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure registration method as Self Registration

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure registration activation with Email Activation code

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure registration activation with Email Activation code & OTP

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can configure Registration flow with activation form preview

    @adminui @achievo @AchievoSelfRegistration @system @special  @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Verify the achievo platfrom user can able to see the self-registration button enabled

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the achievo platform user can able to register the user with the self-registration form as configured in the admin site

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the achievo platfrom user can able to see the register form as participant onboarding form as the same form loads in the mobile app

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the achievo platform user can able to see the login using Otp as per the configuration in the admin site

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the achievo platform user can able to see the activation using the Otp as per the configuration in the admin site

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the achievo platform user can able to see the Validity Otp seconds as per the configuration in the admin site

    @adminui @achievo @AchievoSelfRegistration @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify the achievo platform user can able to see the pattern and the length of the Otp as per the configuration in the admin site

    #password for the mobile applications

    @adminui @achievo @Achievopassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure the password regix configuration for the mobile app

    @adminui @achievo @Achievopassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure the error message for the error password congiguration and it is reflected in the mobile app

    @adminui @achievo @Achievopassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure the max failed login attempt alllowed for the users and it is working as expected in the mobile app

    @adminui @achievo @Achievopassword @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the admin user can able to configure the expiry days for the password configuration and it is working as expected in the mobile app

    #Activation Form and the configuration for the mobile app

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured activation form loads in the mobile app while activating the users

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pre-view activation form configuration is enabled and achievo platfrom user can able to pre-view the form as per the configuration

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the pre-view activation form configuration is disabled and achievo platfrom user cannot able to pre-view the form as per the configuration

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit  pre-view activation form configuration is enabled and achievo platfrom user Can able to edit the pre-view the form as per the configuration

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the edit pre-view activation form configuration is disabled and achievo platfrom user cannot able to edit pre-view the form as per the configuration

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the promotional notification configuration is enabled and achievo platfrom user can able to see the promotional notification in the mobile app

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the promotional notification configuration is disabled and achievo platfrom user cannot able to see the promotional notification in the mobile app

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the password submission configuration is enabled and achievo platfrom user can able to see the password submission while activationg the platfrom user in the mobile app

    @adminui @achievo @accountActivation @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the password submission configuration is disabled and achievo platfrom user cannot able to see the password submission while activationg the platfrom user in the mobile app

    #CMS configuration in the achievo

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the home page is shown per the configurations in the mobile applications

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the home page is set-up with the imagelist, promotion tiles, message page configuration and it is reflected in the mobile application

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the home page is displayed as per the configurations

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Cms page is displayed with the proper slug in the menu and it is reflected as per the configuration in the achievo mobile application

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Verify the cms page is displayed in the mobile app as per the configuration with the slug name in the menu configurations

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the cms page with the images and text are displayed as per the configuration in the strapi and in the admin site

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the hyperlink - url is displayed as per the configuration in the strapi and reflected in the mobile app

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the cms page with all the content type is displayed as per the configuration in the strapi admin site

    @adminui @achievo @achievoCMS @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the cms page is displayed as per the proper slug is configured in the menu and verify the cms is displayed in the mobile app 

    
