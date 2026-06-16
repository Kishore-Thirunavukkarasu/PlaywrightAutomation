Feature: OTP Validation during Login

    # created by  = Kishore Gunasekaran
    # reviewed by = 
    # updated by  =

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the valid OTP Entry

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the invalid OTP Entry

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify where the OTP settings is enabled for login

    @mobile @achievo @MobileOtp @system @configure @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify where the OTP settings is disabled for login

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify where the OTP settings is enabled for account activation

    @mobile @achievo @MobileOtp @system @configure @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify where the OTP settings is disabled for account activation

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the expired OTP during Login for email

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the expired OTP during Login for sms

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP is expired after the configured seconds for email

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP cannot be valid after expired duration for sms

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP is expired after the configured seconds for email

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP cannot be valid after expired duration for sms

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP is delivered in the configured pattern

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the configured length of OTP is received for sms

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the configured length of OTP is received for email

    @mobile @achievo @MobileOtp @system @configure @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the configured length of OTP is received for both sms and email

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Multiple Login Attempts with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify OTP Resend Functionality

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP cannot be sent after the maximum attempts

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP can be send after the maximum attempts

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP should be Case Sensitivity

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP Input Field Validation

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the notification is received after the OTP expiration

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP Logging and Audit Trail for Successful Attempts

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP Logging and Audit Trail for Failed Attempts

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Valid OTP With Autofill

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Invalid OTP Autofill

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Autofill Functionality after the OTP expiration

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Multiple OTP Autofill Attempts

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP Autofill is Case Sensitivity

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP Autofill Input Field Validation

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the OTP delivery fails due to network issues

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify user requests multiple OTPs in quick succession

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user enters the username and clicks on the OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Ensure that the registered phonenumber is active and can able to receive the OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Ensure the registered username is active and can able to receive the OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Ensure the registered Email is active and can able to receive the OTP

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the error messages for the invalid username while trying OTP based Login

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the error messages for the invalid email while trying OTP based Login

    @mobile @achievo @MobileOtp @system @special @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the error messages for the invalid mobilenumber while trying OTP based Login

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Activate the user via username with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Activate the user via mobilenumber with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Activate the user via email with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Login via username with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Login via mobile number with OTP

    @mobile @achievo @MobileOtp @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Login via email with OTP

