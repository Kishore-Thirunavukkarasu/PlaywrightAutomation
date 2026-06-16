Feature: Login settings Configuration

    Background: Login settings test cases
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        # When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Program Setup"
        When User click on the "Login Settings" submenu
        Then Verify the "Login Settings" is displayed

    @adminui @users @loginsettings @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure login settings
        When user selects the valid activation form
        When user navigated to signup method tab
        When user allows self registration
        When selects the valid self registration form
        When Enable the user upload button
        When user navigated to activation tab
        When user allows preview activation form
        When user allows Edit Preview Activation Form
        When user allows promotional notification consent
        When user allows password submission
        When click on save button in login settings page
        Then "Successful" message shown up for Login settings


    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can select the valid edit profile form

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can allow self registration
        When user navigated to signup method tab
        When user allows self registration
        When selects the valid self registration form
        When click on save button in login settings page
        Then Self registration is selected

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can allow self registration and verify the user is able to register

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can allow user upload
        When user navigated to signup method tab
        When Enable the user upload button

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can allow user upload and verify the user is able to upload

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can enable preview activation form
        When user navigated to activation tab
        When user allows preview activation form
        When click on save button in login settings page
        Then Preview activation form is selected

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user enables activation preview and verify activation form is displayed during activation

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can enable password submission
        When user navigated to activation tab
        When user allows password submission
        When click on save button in login settings page
        Then Password submission is selected

    @adminui @users @loginsettings @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user enables password submission and verify password is submitted during activation