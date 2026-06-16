Feature: User - self registration

    # Created by = Kishore Gunasekaran
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url =

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the options shown under Signup method in Login settings page

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user is able to enable 'Allow non-members to self register to program using self registration form' field

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user is able to select self registration form name once 'Allow non-members to self register to program using self registration form' is enabled

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the self registration option is shown only when the admin enables the toggle and selects the Registration form

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration option is not shown when user does not select the registration form

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify user is able to enable 'User upload' field

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify upload button is displayed in Participant page when user enables 'User upload' toggle.

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify upload button is not displayed in Participant page when 'User upload' toggle is disabled.

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the anonymous user can view the self registration form in the platform site

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the mandatory fields are shown in the self registration form in the platform site

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the fields organization, job role, username are shown in the self registration form as mandatory fields

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the anonymous user can register in the platform site using the registration form

    @platformui @users @USR001SelfRegistration @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the anonymous user cannot register in the platform site without filling the mandatory fields

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the anonymous user can register in the platform site without filling the optional fields

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can configure the registration form in the admin site

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to update the configured self registration form

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to create a new self registration form

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to configure a new self registration form

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the anonymous user can able to view the new self registration form in the platform site once the admin is configured

    @adminui @users @USR001SelfRegistration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the error message is shown for already existing user name through self registration

    @adminui @users @USR001SelfRegistration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the error message is shown for already existing email through self registration

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration form can be configured in different locale

    @adminui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the anonymous user can view the self registration form in different locale

    @adminui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the anonymous user can switch the multiple locale in the self registration form

    @adminui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the anonymous user can view country in the self registration form configured for the specific program

    @adminui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the countries are loaded in the self registration form accordingly to the program

    @adminui @users @USR001SelfRegistration @system @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the success message is shown upon completion of self registration with valid details
        Given site is configured with self registration form
        When user enters valid details in the self registration form
        When user clicks on the submit button
        Then user should see the success message

    @adminui @users @USR001SelfRegistration @integration @form @functional @smoke @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is registered without user approval via self registration and completed the registration via activation code
        Given site is configured with self registration form
        When user enters <valuetype> details in the self registration form
        When user clicks on the submit button
        Then "Successful" message shown up in platform
        When Quering the user "username" from the table through query engine
        When Get the activation code and insert it to the valid data
        When Navigate to the "User Activation" platform
        When user enters the "username" and activation code in platform
        When user click on submit in account activation
        Then "Successful" message shown up in platform
        Then Preview activation form is shown up
        When Navigate to the "Password" platform
        When user enters the password and confirm password
        When user click on submit in password activation
        Then "Successful" message shown up in platform
        When Platform user logout
        When Platform valid user login
        Then "Successful" message shown up in platform
        Then Verify "home page" is displayed in platform
        Examples:
            | valuetype          |
            | for L1 approval    |
            | for L1 rejected    |
            | for super approval |


    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification is triggered when an anonymous user self registration is completed

    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification is triggered to the admin when an anonymous user self registration is completed

    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification is triggered along with temporary password to the email when an anonymous user completes the self registration

    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the temporary password is saved in the tenant specific database for verification

    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the temporary password is changed in the tenant specific database once the user updates the password

    @adminui @users @USR001SelfRegistration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user data is stored in the tenant specific database once the user completes the self registration

    @adminui @users @USR001SelfRegistration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the user data is not stored in the tenant specific database when the self registration is not completed

    @adminui @users @USR001SelfRegistration @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration form is deactivated from the admin site

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration form is deactivated and the form is not shown in the platform site

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration form is activated from the admin site

    @adminui @users @USR001SelfRegistration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the self registration form is activated and the form is shown in the platform site

    @adminui @users @USR001SelfRegistration @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the sensitive user datas are encrypted and stored in the database

    @adminui @users @USR001SelfRegistration @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the self registration form is enabled with encryption for specific fields

    @adminui @users @USR001SelfRegistration @scenario @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the encrypted values are not displayed as plain text in the user details

    @adminui @users @USR001SelfRegistration @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the encrypted values are decrypted and retrived by the admin


    #*********************************************************Defered Test Cases#*********************************************************

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the captcha is shown to the users while naviagation in the register page in the platform

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the captcha is entered Successfully then only registration form will be shown

    @platformui @users @USR001SelfRegistration @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the captcha is not Successfull then registration will not be shown

