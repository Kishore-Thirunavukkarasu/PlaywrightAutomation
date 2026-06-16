Feature: Users - Activation Flow

  # Created by = Kishore Gunasekaran
  # reviewed by = Kishore Thirunavukkarasu
  # updated by  = Kishore Thirunavukkarasu
  # project url =

  #Platform user - User - Activation Flow

  @adminui @users @USR007Activation @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the account activation hyperlink or button for platform site can be configured in the admin site

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant can be activated by username

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant can be activated by email

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the participant can be activated by mobile number

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify whether error message is shown for the already activated user

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the username and activation code

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the email and activation code

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the mobile number and activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the username and invalid activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the email and invalid activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation with the mobile number and invalid activation code

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by username with OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by email with OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by the mobile number with OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by username with invalid OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by email with invalid OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the Participant activation by mobile number with invalid OTP as activation code

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the inactive users try to activate multiple times

  @platformui @users @USR008ValidateActivationCredentials @form @special @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user cannot be activated using expired activation code

  @platformui @users @USR008ValidateActivationCredentials @form @special @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the activation code are case sensitive

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify whether error message is shown for invalid username and activation code

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify whether error message is shown for invalid email and activation code

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify whether error message is shown for invalid mobile number and activation code

  @platform @users @USR007Activation @system @special @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user registration form is displayed when user tries to activate with valid activation code

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the user registration form is not displayed when user tries to activate with invalid activation code

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the user registration form is not displayed when existing user tries to activate with existing activation code

  @platformui @users @USR007Activation @system @special @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user registration form should contain user activation information

  @platformui @users @USR007Activation @system @special @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user registration form should contain username, email and mobile number from the activation form

  @platformui @users @USR007Activation @system @special @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the username, email and mobile number from the activation form should not be editable

  @adminui @users @USR007Activation @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the non editable fields in the activation form can be configured by the admin

  @platformui @users @USR007Activation @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the password and confirm password should have the same value in the user registration form

  @platformui @users @USR007Activation @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the error message is thrown when different password value is entered for password and confirm password

  @platformui @users @USR008ValidateActivationCredentials @system @configure @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the password with the regex pattern in the activation form

  @platformui @users @USR008ValidateActivationCredentials @form @system @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user will be navigated to the password steps once activation form and user registration form is submitted

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the notification preference can be configured in the activation form from the admin site

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the notification preference can be configured as mandatory in the admin site

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the promotional notification and transactional notification consent can be configured in the admin site

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the notification preference can be configured as optional in the admin site

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify when the notification preference is mandatory, the user should able to complete the activation only after selecting the notification consent

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify when the notification preference is mandatory, the user should not able to complete the activation without selecting the notification consent

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify when the notification preference is optional, the user should be able to complete the activation without selecting the notification consent

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the notification can be triggered to the user once the prefered notification is selected

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the admin can specify the activation flow steps

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the admin can configure form preview in the activation flow

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the admin can configure security questions in the activation flow

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the admin can configure T&C Check box in the activation flow

  @adminui @users @USR008ValidateActivationCredentials @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
  Scenario: Verify the admin can configure notification consent in the activation flow

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the success message is shown once the user is activated successfully

  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @negative @reviewed @platform @updated @notautomated
  Scenario: Verify the notification message is sent to the user registered email once the user is activated successfully






#*********************************************************Defered Test Cases#*********************************************************


  @platformui @users @USR008ValidateActivationCredentials @system @form @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the security Questions with answers in the activation Flow

  @platformui @users @USR008ValidateActivationCredentials @form @system @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user will be navigated to the security question steps once activation form and user details page is submitted

  @platformui @users @USR008ValidateActivationCredentials @form @system @functional @positive @reviewed @platform @updated @notautomated
  Scenario: Verify the user can update the security questions and answers
