Feature: Reset Password

    # Created by = Kishore Gunasekaran
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url =


    Scenario: Verify the fields available under Password tab present in Login settings page

    Scenario: Verify user is able to enter input to the 'RegEx Configuration' field for both Mobile and Web

    Scenario: Verify user is able to enter input to the 'Error message' field for both Mobile and Web

    Scenario: Verify user is able to enter input to the 'Expiry' field for both Mobile and Web

    Scenario: Verify user is able to enter input to the 'Max failed loin attempts allowed' field for both Mobile and Web

    Scenario: Verify error message is not thrown when the user enters the password that matches with the RegEx pattern

    Scenario: Verify error message is thrown when the user enters the password that does not match with the RegEx pattern

    Scenario: Verify error message shown in platform site is as per the configuration shown 


    @platformui @users @USR011SetPassword @system @navigation @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the authenticated user can able to navigate to the reset password page

    @platformui @users @USR011SetPassword @system @navigation @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the non-authenticated user cannot able to navigate to the reset password page

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the participant user can reset the password with the username

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the participant user can reset the password with email

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the participant user can reset the password with the mobile number

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the admin can configure the reset password link can be sent to the user registered email/mobile number/both

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reset password link with OTP

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reset password link with the scheduled time

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the reset password link expires after the scheduled time

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify after the reset password, user should login into the platform site automatically with the updated password

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the enter password and confirm password matches for reset password

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verifiy the enter password and confirm password are with in the regex pattern

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the error message when password and confirm password are different for reset password

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the error message when password is blank for reset password

    @adminui @users @USR011SetPassword @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the password expiry can be configured for the mobile application

    @adminui @users @USR011SetPassword @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the password expiry can be configured for the website application

    @adminui @users @USR011SetPassword @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the password expiry should not be set at the Program level in the website

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password expiry should be set globally for program level

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the platform user cannot able to login with old password after the password expiry

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the length of the password is accepted within the configured length

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password should be changed after the expiry date with the configured password rule

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user cannot able to login with the old password after the password expiry date

    #Change password scenarios

    @platformui @users @USR011SetPassword @navigation @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user can able to navigate to the change password page

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the authenticated user can able to change the password

    @platformui @users @USR011SetPassword @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the non-authenticated user cannot able to change the password

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user can able to change the password with the configured password rule

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user cannot able to change password without following the configured password rule

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password and confirm password are same while changing the password

    @platformui @users @USR011SetPassword @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the correct error message if password and confirm passowrd didnot match

    @platformui @users @USR011SetPassword @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the password is updated without the logout the session in the platform site

    @platformui @users @USR011SetPassword @system @navigation @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the not activated user cannot able to navigate change the password page

    @platformui @users @USR011SetPassword @system @navigation @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the impersonate users cannot able to navigate change the password page

    @platformui @users @USR011SetPassword @system @navigation @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the successful message after changing the password in the platform site

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password fields without any data for the validation

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the locked user cannot able to navigate change the password page

    @platformui @users @USR011SetPassword @system @form @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the password cannot be changed using existing password

    @platformui @users @USR011SetPassword @system @form @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password cannot be changed with previous used passwords

    @adminui @userss @USR011SetPassword @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password is encrypted(hashing) and cannot be decrypted

    @adminui @userss @USR011SetPassword @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password is stored in the database in the encrypted format

    @adminui @userss @USR011SetPassword @scenario @special @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the password is not stored in the database in the plain text format

    @adminui @userss @USR011SetPassword @scenario @special @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the password is masked and not visible to the user

    #*********************************************************Defered Test Cases#*********************************************************

    @platformui @users @USR011SetPassword @form @system @functional @positive @reviewed @platform @updated @notautomated
    Scenario: Verify the user can reset the password using the security questions

    @platformui @users @USR011SetPassword @form @system @functional @negative @reviewed @platform @updated @notautomated
    Scenario: Verify the user cannot reset the password using the security questions with invalid answers



