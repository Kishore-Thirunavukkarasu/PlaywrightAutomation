Feature: Fraud Management Test cases

    # created by  = Ruthrakanth
    # reviewed by =

    Background: Hierarchy Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program" from the program list
        Then Verify the user is on the program landing page

    # Change in Contact details
    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify visibility of special components in Form Builder
        Given the admin opens the Form Builder screen
        When the admin selects profile form
        Then the "Mobile Number Special" and "Email ID Special" components should be visible
        And the admin should be able to drag and drop them into the Edit Profile form

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Successful mobile number change using "Mobile Number Special"
        Given the participant opens the Edit Profile form that includes the "Mobile Number Special" component
        And their current mobile number is registered
        When the participant enters a new valid mobile number
        And the system sends an OTP to the old mobile number
        And the participant enters the correct OTP
        Then the mobile number should be successfully updated
        And the new mobile number should be saved in the system
        And a log entry should be created with status "Success"

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Incorrect OTP entered for mobile number update
        Given the participant has received an OTP on their old mobile number
        When the participant enters an incorrect OTP
        Then the system should reject the update request
        And display a validation message "Incorrect OTP. Please try again."

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Mobile number update without OTP entry
        Given the participant initiates mobile update using "Mobile Number Special"
        When they do not enter any OTP
        Then the system should prevent the update
        And show a message "OTP verification required to complete update"

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Mobile number update rejected due to OTP expiry
        Given the participant has received an OTP on their old mobile number
        When the configured OTP expiry time has elapsed
        And the participant enters the valid OTP
        Then the system should reject the update request
        And display a validation message "OTP expired. Please request a new OTP."

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Email ID change using "Email ID Special" successful update
        Given the participant opens the Edit Profile form containing "Email ID Special"
        And the participant has a currently registered email ID
        When they enter a new valid email ID
        And the system sends an OTP to the old registered email
        And the participant enters the correct OTP
        Then the new email should be updated successfully

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Incorrect OTP entered for email update
        Given an OTP was sent to the previous email address
        When the participant enters an invalid OTP
        Then the update should not be processed
        And the system should display "Invalid OTP entered"

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Email update without old email access
        Given the participant does not have access to their previously registered email
        When they attempt to update their email ID using "Email ID Special"
        Then the system should block the change
        And display a message suggesting to "Raise a support request for manual update"

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin manually changes participants mobile number
        Given the participant has raised a support ticket for mobile number change
        When the BIW Admin updates the mobile number manually from admin console
        Then the new number should be saved
        And a log entry should record the admin user, timestamp, and status as Admin Updated

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin manually changes participants email ID
        Given the participant has requested admin support for email change
        When the BIW Admin updates the email ID from backend or admin panel
        Then the updated email should reflect in participants profile
        And the change should be logged under userEmailIds history table with timestamp

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate log creation for every update attempt
        Given a participant initiates update of mobile or email using "Special" fields
        When the action completes - either success or failure
        Then a log entry should be recorded
        And the log should include admin id/participant ID, component type, timestamp, and outcome status

    # Update by participant or admin - dev

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate audit storage of all previous mobile numbers
        Given a participant has updated their mobile number multiple times
        When the admin views the userPhoneNumbers audit table
        Then all previously registered mobile numbers should be visible with the time stamp

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate audit storage of all previous email IDs
        Given the participant has modified their email multiple times
        When the admin views userEmailIds audit table
        Then all previous emails should be listed with timestamps

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Resend OTP request
        Given the participant initiated an OTP-based update
        When they click "Resend OTP"
        Then a new OTP should be generated and sent to the old contact
        And the previous OTP should become invalid

    @adminui @fraudmanagement @001ProfileLogincontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Invalid email format
        Given the participant enters a malformed email address
        When they submit the form
        Then the update should be blocked
        And a validation error "Enter a valid email address" should appear


    # Earning controls
    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can view Earning Controls configuration - RBAC
        Given the admin navigates to the Fraud Management configuration screen
        When the admin should be able to see "Earning Controls" section
        Then the system should display options for "Value," "Volume," and "Velocity" threshold configuration under Earning Controls

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure fraud thresholds for Value
        Given the admin is in the Earning Controls configuration
        When the admin chooses to configure threshold for "Value"
        And selects "Daily," "Weekly," or "Monthly" evaluation frequency
        And enters a valid numeric threshold value
        Then the system should save the configuration successfully
        And persist the data at program level

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Ensure only one frequency can be enabled for Value threshold
        Given admin attempts to enable multiple frequencies for Value e.g., Daily and Weekly
        When they select the second one
        Then the system should restrict the selection and show a message "Only one frequency can be active for Value threshold at a time."

    # velocity threshold -

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate threshold-based fraud detection for invoice claims
        Given the system has daily Value threshold set for ₹50,000
        When a participant submits invoice claims totaling ₹60,000 in a single day
        Then the system should flag the user as "Potential Fraud - Value Breach"

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify fraud detection not triggered when claim within threshold
        Given weekly Value threshold is ₹1,00,000
        When participants total claims equal ₹90,000
        Then no fraud flag should be generated

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate fraud detection for coupon claims in claimedInventories schema
        Given the Fraud Module is active for claimedInventories schema
        When the participant redeems coupon claims exceeding weekly threshold
        Then the system should create a fraud flag specific to "Coupon Claim Breach"
        And log the event in Fraud Tracking table

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate threshold-based fraud detection for sales claims
        Given the system has daily Value threshold set for ₹50,000
        When a participant submits sales claims totaling ₹60,000 in a single day
        Then the system should flag the user as "Potential Fraud - Value Breach"

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify fraud detection not triggered when sales claim within threshold
        Given weekly Value threshold is ₹1,00,000
        When participant's total sales claims equal ₹90,000
        Then no fraud flag should be generated

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can configure fraud thresholds for Volume
        Given the admin is in the Earning Controls configuration
        When the admin chooses to configure threshold for "Volume"
        And selects "Daily," "Weekly," or "Monthly" evaluation frequency
        And enters a valid numeric threshold value
        Then the system should save the configuration successfully

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Volume threshold breach should raise fraud alert
        Given daily Volume threshold is 10
        When participant submits 15 invoice claims in one day
        Then fraud alert should be generated
        And the participant should have a fraud score incremented accordingly

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Velocity threshold configuration - Value
        Given admin chooses to enable Velocity threshold for "Value"
        When Admin is able to enter value under 'Monthly value' field
        Then This should be taken in to consideration for fraud score calculation

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Velocity threshold configuration - Volume
        Given admin chooses to enable Velocity threshold for "Volume"
        When Admin is able to enter value under 'Monthly volume' field
        Then This should be taken in to consideration for fraud score calculation

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to set the Sensitivity level under Velocity thresholds for Monthly Value
        Given admin is in Velocity threshold configuration
        When admin selects Sensitivity level as "Low", "Medium", or "High"
        Then the system should save the selected sensitivity level successfully

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @c
    Scenario: Verify admin is able to set sensitivity level under Velocity thresholds for Monthly Volume
        Given admin is in Velocity threshold configuration
        When admin selects Sensitivity level as "Low", "Medium", or "High" for Monthly Volume
        Then the system should save the selected sensitivity level successfully

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin configures automatic redemption block
        Given the admin enables the  "block redemption if fraud score crosses' field
        And defines fraud score threshold = 80 a numeric value
        When a participant exceeds fraud score of 80 due to detected anomalies
        Then redemption access should be automatically blocked

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether the user recieves notification regarding the automatic redemption block
        Given the admin enables the  "block redemption if fraud score crosses' field
        And defines fraud score threshold = 70 a numeric value
        And enables notification setting for blocked participants
        When a participant exceeds fraud score of 70 due to detected anomalies
        Then redemption access should be automatically blocked
        And participant should receive a notification message stating that their redemption access has been blocked due to suspicious activities

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to configure notification message to be sent to blocked participants
        Given the admin is in Earning Controls configuration
        When the admin enables notification setting for blocked participants
        And enters a custom notification message in the provided text area
        Then the system should save the custom notification message successfully
        Then Verify that the message is sent to participants when their redemption access is blocked

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error message when invalid data is entered in "block redemption if fraud score crosses' field
        Given the admin is in Earning Controls configuration
        When the admin enters non-numeric or negative value in the 'block redemption if fraud score crosses' field
        Then the system should display an error message "Please enter a valid value"

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether Program Owner is able to unblock participant from Fraud Dashboard
        Given the participants redemption access is blocked
        When Program Owner views participant in the Fraud Dashboard
        And chooses to "Unblock"
        Then redemption access should be restored
        And the unblock action should be logged with timestamp and actor details

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Missing frequency selection in Value threshold configuration
        Given the admin defines a threshold value but does not choose frequency
        When they save the rule
        Then an error should appear asking the user to select a frequency

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Missing frequency selection in Volume threshold configuration
        Given the admin defines a threshold volume but does not choose frequency
        When they save the rule
        Then an error should appear asking the user to select a frequency

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Notification not triggered when auto-block is disabled
        Given auto-block configuration is disabled
        When participants fraud score exceeds the configured threshold
        Then the system should not block redemption
        And should only generate fraud alert without sending notification

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Invalid numeric threshold entry
        Given the admin attempts to set Value threshold as text "abc"
        When they try to save
        Then validation message "Enter numeric threshold value" should display
        And configuration should not be saved

    @adminui @fraudmanagement @002Earningcontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify fraud score aggregation from multiple rule breaches
        Given participant exceeds daily Value and Volume thresholds
        When both violations are detected
        Then the fraud score should reflect cumulative risk based on both breaches
        And system should store fraud score with breakdown of contributing rules

    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enable Velocity threshold for Value
        Given admin is in Earning Controls configuration
        When admin enables the toggle button for Monthly value under Velocity threshold section
        Then the Velocity threshold for Value should be enabled successfully

    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate setting of number of historical months (n) for Velocity threshold - Value
        Given admin chooses to enable Velocity threshold for "Value"
        When admin sets the "Historical Months" value as n = 6
        Then system should save and use the last 6 months of claim data to compute median and MAD
    # 3 to 24 months

    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is able to enable Velocity threshold for Volume
        Given admin is in Earning Controls configuration
        When admin enables the toggle button for 'Monthly volume' under Velocity threshold section
        Then the Velocity threshold for Value should be enabled successfully

    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate setting of number of historical months (n) for Velocity threshold - Volume
        Given admin chooses to enable Velocity threshold for "Volume"
        When admin sets the "Historical Months" value as n = 6
        Then system should save and use the last 6 months of claim data to compute median and MAD

    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin disables velocity check for claimed Value
        Given velocity-based rule for Value is enabled
        When the admin disables it
        Then all velocity-based checks for Value should stop evaluating new claims

    # either disable or change the threshold value for the existing period and edit should create a new policy version (not the user should write from the scratch)
    # -dev
    @adminui @fraudmanagement @002AVelocitythreshold @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin disables velocity check for claimed Volume
        Given velocity-based rule for Volume is enabled
        When the admin disables it
        Then all velocity-based checks for Volume should stop evaluating new claims

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Prevent invalid historical month inputs
        Given the admin has enabled velocity check
        When they enter an invalid value e.g., negative number, zero, non-numeric for historical months
        Then the system should display a validation message "Enter a valid positive number of months."

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin selects sensitivity level for Value as Low
        Given the admin configures sensitivity as Low
        When the fraud engine runs
        Then the system should apply k=4 in anomaly detection formula

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin selects sensitivity level for Value High
        Given the admin configures sensitivity as High
        When the detection engine evaluates the current claim
        Then the system should apply k=2 in the threshold formula for stricter detection

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin selects sensitivity level for Value  Medium
        Given the admin configures sensitivity as Medium
        When the fraud computation runs
        Then the system should apply k=3
        And this should be the default if no other sensitivity is selected


    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate MAD computation for claimed Value
        Given the participant has claim values for the past 5 months
        When the fraud system runs the velocity check
        Then it should compute: "Median of past 5 months claimed values, Absolute deviation of each claim from median, Median of deviations as MAD"

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify threshold calculation for Value rule
        Given median = ₹10,000 and MAD = ₹1,000 with sensitivity k=3 Medium
        When current months claim value is evaluated
        Then the allowed range is ₹7,000 to ₹13,000
        And values outside this range should be flagged as anomalies

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: No fraud flag when Value within allowed range
        Given the current claim = ₹11,000
        And limits is ₹13,000
        When evaluated
        Then system should not raise any fraud flag

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Missing historical data handling
        Given velocity check requires 6 months of history
        When only 3 months of claims are available
        Then the system should compute median and MAD using available months without error

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin changes historical month setting dynamically
        Given the initial configuration is 3 months
        When admin updates to 6 months and saves
        Then all subsequent evaluations should use last 6 months data

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Enable velocity check for claimed Quantity (Volume)
        Given the admin accesses Earning Controls → Velocity rules
        When they enable Velocity check for "Quantity"
        Then system should display and allow configuration for Historical Months and Sensitivity

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: High anomaly detected for Quantity
        Given current month claim quantity = 180 units
        And upper limit = 145 units
        When detection runs
        Then "Potential Fraud  High Quantity Surge" should be logged

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scenario 20: Verify no fraud when within MAD range for Quantity
        Given participant claim = 120 units
        And allowed band  145
        When verified
        Then transaction should be marked legitimate

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate Sensitivity switch effect on detection
        Given same historical median and MAD values
        When sensitivity changes from "Low k=4" to "High k=2"
        Then the fraud trigger range should narrow, resulting in stricter detection

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin enters non-numeric sensitivity
        Given admin tries to input alphabetic value for sensitivity e.g., "ABC"
        When saving configuration
        Then validation "Invalid sensitivity value selected" must appear

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin disables rule after activation
        Given velocity checks were active for Volume and Value
        When the admin disables them
        Then no further evaluations or fraud flags should occur for subsequent claims

    # doubt: How to handle repeated breaches?
    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Cross-check with previous breach
        Given participant was flagged last month for a velocity anomaly
        When system re-evaluates and breach repeats
        Then participant fraud score should increment accordingly, based on recurring threshold violations (within the same period)

    # what happens with this edge case having identical claim values in past months
    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Edge Case Zero MAD scenario
        Given participants past months all have identical claim values leading to MAD = 0
        When current claim differs even slightly from median
        Then system should treat any deviation as anomaly and flag with "MAD = 0 edge case" indicator

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multi-section config validation
        Given Value, Volume, AND Velocity all configured differently
        When Save all sections
        Then backend should store 3 independent rule sets
        And detection engine applies ALL active rules simultaneously

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Page-level Save with partial config - draft
        Given only Value thresholds configured, Volume/Velocity empty
        When Save clicked
        Then only Value rules activate
        And Volume/Velocity remain disabled - no fraud checks

    @adminui @fraudmanagement @002AVelocitycontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Cancel button resets unsaved changes
        Given admin modifies Daily Value from 50k → 60k
        When clicks Cancel
        Then field reverts to original 50k value
        And no backend changes occur

    # Redemptioncontrol

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: First-time Broadleaf marketplace access prompts identity capture
        Given participant first time accessing Merchandise Marketplace
        When they connect to Broadleaf marketplace
        Then modal prompts for personal email and/or mobile number

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Broadleaf identity capture stores data securely
        Given participant enters email/mobile in identity capture modal
        When they submit and connect to marketplace
        Then data stored encrypted in participant profile
        And marketplace SSO proceeds successfully

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Broadleaf re-prompts identity every 6 months

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin enables OTP for redemption
        Given the admin is in fraud management configuration page
        When the admin enables 'Redemption Security'
        Then the setting should be saved at the program level
        And future redemption attempts must require OTP verification

    # OTP for redemption enabled - before SSO this should be verified. - dev

    # OTP for redemption-5.4.2
    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin disables OTP for redemption
        Given the admin is in fraud management configuration page
        When the admin disables 'Redemption Security'
        Then the setting should be saved at the program level
        And future redemption attempts should not require OTP verification

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Redeem from portal menu triggers OTP
        Given OTP verification is enabled
        And the participant is on the partner portal
        When the participant clicks the Redeem button from the portal menu
        Then an OTP should be generated
        And the OTP should be sent to the participants registered mobile number and email ID

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Redeem from profile card triggers OTP
        Given OTP verification is enabled
        And the participant is on the partner portal home page
        When the participant clicks the Redeem button from the Profile Card
        Then the same OTP flow should be triggered
        And OTP should be sent to the registered mobile number and email ID

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Redeem from Achievo app triggers OTP
        Given OTP verification is enabled
        And the participant is logged into the Achievo app
        When the participant taps the Redeem button in the app
        Then an OTP should be generated and sent to the registered mobile and email
        And the app should show an OTP entry screen

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Successful OTP verification initiates SSO
        Given an OTP has been sent for a redemption attempt
        When the participant enters the correct OTP within the validity period
        Then OTP authentication should succeed
        And SSO to the redemption catalogue should be initiated
        And the participant should land on the redemption catalogue home page

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Incorrect OTP prevents SSO
        Given an OTP has been sent for a redemption attempt
        When the participant enters an incorrect OTP
        Then OTP authentication should fail
        And SSO to the redemption catalogue should not be initiated
        And an error message should be displayed indicating that the OTP is invalid

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: OTP expiry handling
        Given an OTP has been generated for redemption
        When the participant tries to verify after the OTP validity period has passed
        Then OTP authentication should fail with an "OTP expired" message
        And SSO to the redemption catalogue should not be initiated

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Resend OTP during redemption
        Given an OTP has been sent and the participant is on the OTP entry screen
        When the participant clicks on "Resend OTP"
        Then a new OTP should be generated and sent to the registered mobile and email
        And the previous OTP should no longer be valid

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Missing registered mobile but valid email
        Given the participant does not have a registered mobile number
        And a valid registered email ID exists
        When the participant attempts to redeem with OTP enabled
        Then OTP should be sent only to the registered email address
        And OTP verification using the email OTP should still permit SSO on success

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Retailer shared login  OTP goes to retailer
        Given the program is a retailer program
        And multiple counter sales reps use the same retailer login in the Achievo app
        When any sales rep clicks Redeem using the shared retailer credentials
        Then the OTP should be sent to the retailers registered mobile number and/or email ID
        And the redemption should only proceed when the OTP received by the retailer is successfully entered

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Retailer denies redemption by not sharing OTP
        Given a counter sales rep requests redemption using the retailer’s login
        When the retailer chooses not to share or enter the OTP
        Then the redemption should not proceed
        And SSO to the redemption catalogue should not be initiated

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Missing registered email but valid mobile
        Given the participant does not have a registered email ID
        And a valid registered mobile number exists
        When the participant attempts to redeem with OTP enabled
        Then OTP should be sent only to the registered mobile number
        And OTP verification using the mobile OTP should still permit SSO on success

    @adminui @fraudmanagement @003Redemptioncontrol @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: No registered mobile or email - cannot use OTP flow
        Given the participant has neither a registered mobile number nor a registered email ID
        And OTP verification is enabled
        When the participant clicks Redeem
        Then the system should display an error indicating that contact details are missing for OTP
        And SSO to the redemption catalogue should not be initiated
        And the participant should be instructed to update contact details or contact support

    #Fraud Dashboard
    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scenario 1: Dashboard lists only breached participants
        Given some participants have breached at least one fraud control rule
        And others have never breached any fraud rule
        When the Program Owner opens the Fraud Dashboard
        Then only participants with at least one breach appear in the "Participant Fraud Risk Summary"

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Dashboard filter by username
        Given the Fraud Dashboard is open
        And a valid username is entered in the filter
        When the Program Owner clicks "Apply"
        Then only the matching participant appears in the table

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud dashboard page
        Given Admin is on Fraud dashboard page
        When the dashboard loads
        Then the row should show: Username, Email ID, Fraud Score value, Fraud Risk label (Critical/High/Medium/Low), and Recommended Action, status and action .

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: View Fraud Profile from Actions
        Given the Program Owner is on the dashboard
        When they click the "view" icon under Actions for a participant
        Then a Fraud Profile view opens
        And it shows the detailed history of that participants past breaches and period-wise scores.

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter by fraud score threshold
        Given the Fraud Dashboard is open
        And a fraud score threshold of 70 is entered
        When the Program Owner clicks "Apply"
        Then only participants with fraud scores greater than or equal to 70 are displayed

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter by fraud risk level
        Given the Fraud Dashboard is open And "High" is selected in the fraud risk filter
        When the Program Owner clicks "Apply"
        Then only participants with "High" fraud risk are shown

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Suspend participant account
        Given a participant is marked with "Critical" fraud risk And the participants status is "Active"
        When the Program Owner clicks "Suspend"
        Then the participants status changes to "Suspended"
        And the blockAccount flag is set to true

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reactivate suspended account
        Given a participants status is "Suspended"
        When the Program Owner clicks "Reactivate"
        Then the participants status changes to "Active"
        And the fraudFlag is set to false
        And the fraud score remains unchanged

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Block redemption access
        Given a participant has breached fraud rules
        When the Program Owner blocks redemption access
        Then the blockRedemption flag is set to true

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Restore redemption access
        Given a participants redemption access is blocked
        When the Program Owner restores redemption access
        Then the blockRedemption flag is set to false

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Export table to CSV
        Given the Fraud Dashboard is open
        When the Program Owner clicks "Export to CSV"
        Then the current table data is downloaded as a CSV file

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Navigate through pagination
        Given the Fraud Dashboard shows multiple pages of results
        When the Program Owner clicks the next page button
        Then the next set of participants is displayed

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Fraud score is zero
        Given a participant has a fraud score of 0
        When the Program Owner views the dashboard
        Then the participant is not flagged for fraud, fraud risk should show the status as low.

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score is 100
        Given a participant has a fraud score of 100
        When the Program Owner views the dashboard
        Then the participant is flagged as "Critical"
        And immediate suspension is recommended

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multiple actions on same user
        Given a participant is suspended and redemption is blocked
        When the Program Owner reactivates the account and restores redemption
        Then the fraudFlag is set to false
        And both blockAccount and blockRedemption flags are cleared

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filters by User Status, Fraud Risk, and Fraud Score
        Given participants exist with different Statuses Active/Suspended, Risk bands, and scores
        When the Program Owner uses:
        And User Status filter = "Active", Fraud Risk = "Critical", Fraud Score operator ">" with value 70, then clicks Apply
        Then only participants matching all three filters are displayed in the summary table

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reset clears filters
        Given filters have been applied on Username, Status, Risk, and Score
        When the Program Owner clicks "Reset"
        Then all filters return to default (e.g., User Status = Active, Fraud Risk = All, Fraud Score cleared)
        And the grid refreshes to show the default set of breached participants

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reactivate should not reset Fraud Score
        Given a suspended participant has Fraud Score = 200
        When the Program Owner Reactivates the account
        Then if the Fraud Score becomes 0, this should be treated as a defect
        And expected behavior is that Fraud Score remains 200.

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Concurrent actions by multiple owners
        Given multiple Program Owners act on the same participant simultaneously
        When one suspends and another approves the account
        Then the system resolves the conflict
        And the final status reflects the latest valid action

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Filter by invalid username
        Given the Fraud Dashboard is open
        And an invalid username is entered in the filter
        When the Program Owner clicks "Apply"
        Then no participants are displayed in the table

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Verify the options that are displayed for the users whose status is 'Suspended', 'active'
        Given the Fraud Dashboard is open
        When the Program Owner views a participant with status 'Suspended'
        Then "Reactivate" action should be available
        When the Program Owner views a participant with status 'Active'
        Then "Suspend" action should be available

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Validate admin be able to block the user with low fraud risk

    @adminui @fraudmanagement @005Frauddashboard @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomatedy
    Scenario: Export with no results
        Given filters are applied that yield no results
        When the Program Owner clicks "Export to CSV"
        Then an empty CSV file is downloaded or a warning is shown


    # Fraud score
    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Score generated when threshold is breached
        Given a weekly Value Threshold of 20
        And the cumulative observed value is 40
        When the system evaluates the rule for the week
        Then a score is generated as 10 + ((40-20)/20)*50 = 60

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Score updated when multiple breaches occur in same period
        Given a weekly Value Threshold of 20
        And the cumulative observed value increases to 50 after additional transactions
        When the system evaluates the rule again in the same week
        Then the score is recomputed as 10 + ((50-20)/20)*50 = 85
        And the previous score of 60 is overwritten

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: No score generated when threshold not breached
        Given a weekly Value Threshold of 20
        And the cumulative observed value is 15
        When the system evaluates the rule for the week
        Then no score is generated for that period

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Final Fraud Score is sum of all rule scores
        Given Value, Volume, and Velocity rules are enabled
        And each rule generates a score for the evaluation period
        When the system calculates the Final Fraud Score
        Then the Final Fraud Score equals the sum of all rule scores

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Dynamic threshold calculation
        Given a velocity-based rule with threshold defined as Median + k * MAD
        And the observed cumulative value exceeds this dynamic threshold
        When the system evaluates the rule
        Then the deviation% is computed against the dynamic threshold
        And the score is generated using the formula S = Base Penalty + (Deviation% * K)

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multiple scores per transaction not allowed
        Given multiple transactions breach the rule in the same period
        When the system evaluates each transaction
        Then only one score is maintained for the period
        And the score is updated, not duplicated

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: No breach, no score
        Given a daily rule with threshold 100
        And the cumulative observed value is 95
        When the system evaluates the rule
        Then no score is generated for that day

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multiple periods accumulate scores
        Given a weekly rule with threshold 20
        And Week 1 cumulative score is 85
        And Week 2 cumulative score is 85
        When the system calculates the total
        Then the cumulative score across weeks is 170

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Different frequency configurations
        Given one rule is configured as daily
        And another rule is configured as weekly
        When the system evaluates transactions
        Then each rule generates scores independently at its configured frequency
        And both contribute to the Final Fraud Score

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override triggers recalculation for impacted rule-period pairs
        Given a transaction is marked as overridden
        And it contributed to breaches in specific rule-period pairs
        When the override is applied
        Then the system recalculates scores only for those impacted rule-period pairs

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override removes transaction from dataset
        Given a transaction is overridden
        When the scoring engine processes the impacted rule-period
        Then the transaction is removed from the periods dataset
        And the cumulative observed value or volume is updated

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Score gets deleted if breach no longer exists after override
        Given a rule-period score exists
        And the override causes the cumulative value to fall below the threshold
        When the system re-evaluates the breach
        Then the score for that period is deleted

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Score updated if breach still exists after override
        Given a rule-period score exists
        And the override reduces the cumulative value but still exceeds the threshold
        When the system re-evaluates the breach
        Then the score is recalculated using the updated deviation

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Cumulative rule score updated after override
        Given a rule has multiple period scores
        And one period score is recalculated due to an override
        When the system updates the rules cumulative score
        Then the new cumulative score reflects the sum of remaining valid period scores

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Final Fraud Score updated after override
        Given one or more rules are affected by an override
        When the system recalculates the Final Fraud Score
        Then the updated score equals the sum of updated scores for affected rules
        And unchanged scores for unaffected rules

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override applied to transaction outside configured period
        Given a transaction occurred outside the configured evaluation period
        When the transaction is overridden
        Then the system recalculates the score for previous days/month/week as per the config
        And overall final score should reflect this change

    # recalculation should happen for calculating the overall final score.- ruthra

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override causes breach to flip from "Yes" to "No"
        Given a weekly volume threshold of 20
        And cumulative volume is 50 before override
        And the overridden transaction volume is 25
        When the override is applied
        Then the new cumulative volume becomes 25
        And the breach status changes from "Yes" to "No"
        And the score is recalculated as 10 + ((25-20)/20)*50 = 23


    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override causes breach to disappear completely
        Given a weekly volume threshold of 20
        And cumulative volume is 40 before override
        And the overridden transaction volume is 25
        When the override is applied
        Then the new cumulative volume becomes 15
        And the breach status changes from "Yes" to "No"
        And the score for that period is deleted

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override applied to transaction in monthly velocity rule
        Given a transaction contributes to the monthly velocity volume period
        When the transaction is overridden
        Then the system recalculates the monthly velocity score
        And updates the rules cumulative score

    @adminui @fraudmanagement @006Fraudscore @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override applied to transaction in daily value threshold
        Given the program is configured with daily value thresholds
        And a transaction breaches the daily threshold
        When the transaction is overridden
        Then the daily score is recalculated
        And the rules cumulative score is updated


    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score in Low range shows "Low" risk and "No action"
        Given a participant has a Fraud Score of 20
        When the system evaluates the score
        Then the Fraud Risk Level is "Low"
        And the Next Best Action is "No action"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score in Medium range shows "Medium" risk and "Monitor user"
        Given a participant has a Fraud Score of 35
        When the system evaluates the score
        Then the Fraud Risk Level is "Medium"
        And the Next Best Action is "Monitor user"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score in High range shows "High" risk and "Manual review / possibly suspend"
        Given a participant has a Fraud Score of 60
        When the system evaluates the score
        Then the Fraud Risk Level is "High"
        And the Next Best Action is "Manual review / possibly suspend"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score in Critical range shows "Critical" risk and "Immediate suspension / escalation"
        Given a participant has a Fraud Score of 85
        When the system evaluates the score
        Then the Fraud Risk Level is "Critical"
        And the Next Best Action is "Immediate suspension / escalation"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score below 0 is invalid
        Given a participant has a Fraud Score of -5
        When the system evaluates the score
        Then the system rejects the score as invalid
        And no Fraud Risk Level or Next Best Action is displayed

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score above maximum supported value
        Given a participant has a Fraud Score of 5000
        When the system evaluates the score
        Then the system caps the score at "Critical" range
        And the Next Best Action is "Immediate suspension / escalation"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score exactly at boundary of Medium range
        Given a participant has a Fraud Score of 26
        When the system evaluates the score
        Then the Fraud Risk Level is "Medium"
        And the Next Best Action is "Monitor user"

    @adminui @fraudmanagement @007FraudRisk @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud score exactly at boundary of Critical range
        Given a participant has a Fraud Score of 76
        When the system evaluates the score
        Then the Fraud Risk Level is "Critical"
        And the Next Best Action is "Immediate suspension / escalation"

    # fraud profile
    @adminui @fraudmanagement @008Fraudprofile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display breach counts for value thresholds
        Given a participant has breached daily, weekly, and monthly value thresholds
        When the Program Owner views the Fraud Profile
        Then the breach counts for each frequency are displayed correctly

    @adminui @fraudmanagement @008Fraudprofile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display breach counts for volume thresholds
        Given a participant has breached daily, weekly, and monthly volume thresholds
        When the Program Owner views the Fraud Profile
        Then the breach counts for each frequency are displayed correctly

    @adminui @fraudmanagement @008Fraudprofile @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display breach counts for velocity rules
        Given a participant has breached monthly velocity rules for both value and volume
        When the Program Owner views the Fraud Profile
        Then the breach counts for velocity value and velocity volume are displayed correctly under Breach summary

    @adminui @fraudmanagement @008Fraudprofile @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Display account suspension history
        Given a participants account has been suspended in the past
        When the Program Owner views the Fraud Profile
        Then the suspension history shows the date of suspension
        And the identity of the Program Owner who performed the suspension

    @adminui @fraudmanagement @008Fraudprofile @system @ui @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: No suspension history
        Given a participants account has never been suspended
        When the Program Owner views the Fraud Profile
        Then the suspension history section is empty or not displayed

    @adminui @fraudmanagement @008Fraudprofile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multiple suspensions recorded
        Given a participants account has been suspended multiple times
        When the Program Owner views the Fraud Profile
        Then all suspension dates and Program Owner identities are displayed in chronological order

    @adminui @fraudmanagement @008Fraudprofile @system @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Breach counts across all rule types
        Given a participant has breached value thresholds, volume thresholds, and velocity rules
        When the Program Owner views the Fraud Profile
        Then breach counts for all rule types are displayed together in the profile

    @adminui @fraudmanagement @008Fraudprofile @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter breach history by date range
        Given the Program Owner enters a "From" and "To" date in the filter
        When the Program Owner applies the filter
        Then only transactions within the selected date range are displayed

    # Updating fraud threshold
    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Historical scores unchanged after threshold update
        Given a participant has existing fraud breaches scored using Daily Value Threshold = ₹20,000
        And their cumulative Fraud Score is 150
        When the admin updates the Daily Value Threshold to ₹30,000
        Then all previously stored breach scores remain the same
        And the participants cumulative Fraud Score stays 150.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: New breaches use updated thresholds (based on the sale date)
        Given the Daily Value Threshold has been updated from ₹20,000 to ₹30,000
        And a participant submits new claims after the update
        When a breach occurs on a new day
        Then the fraud engine uses ₹30,000 to compute deviation and score
        And the new score is added to the existing cumulative Fraud Score.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Separate handling for weekly threshold updates
        Given Weekly Volume Threshold was 100 units and is updated to 150 units
        When a new weekly breach occurs after the update
        Then the deviation calculation uses 150 units for that week
        And past weekly scores calculated with 100 units remain unchanged.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Policy Version ID saved on threshold change
        Given the current threshold config has Policy Version ID = V1
        When the admin updates any threshold daily, weekly, or monthly and saves
        Then a new Policy Version ID = V2 is generated and stored with the configuration
        And V1 remains associated with older breaches.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Breach linked to active policy version
        Given Policy Version V2 is active
        When a new breach is recorded
        Then the breach record stores a reference to Policy Version V2
        And the score for that breach is computed using V2 thresholds.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Cumulative score aggregation across versions
        Given a participant has breaches under V1 with total score 120
        And additional breaches under V2 with total score 80
        When the fraud engine computes the Final Fraud Score
        Then it sums scores from both versions → 200
        And does not recompute any V1 breaches using V2 thresholds.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Threshold update for one frequency does not affect others
        Given a rule has Daily and Weekly thresholds configured separately
        When the admin updates only the Weekly threshold
        Then Daily threshold remains the same
        And daily breach scoring behavior is unchanged.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Historical breach counts remain unchanged
        Given the system tracks number of breaches per rule
        When thresholds are updated
        Then the count of past breaches is not altered
        And no past breach is removed or merged.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Threshold lowered causing more future breaches
        Given Monthly Value Threshold was ₹200,000 and is lowered to ₹150,000 under Policy Version V3
        When a participants future monthly claims are between 150k and 200k
        Then these months now count as breaches under V3
        And no past months with 180k are retroactively marked as breaches under V3.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Threshold increased above historical values
        Given Weekly Volume Threshold was 100 units (many historical breaches between 100 and 120)
        And it is increased to 150 units under V4
        When the fraud engine runs cumulative scoring
        Then historical breach scores for weeks 100-120 units remain in place
        And no historical breaches are removed or reduced, even though they would not breach at 150 units.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Multiple updates in short time
        Given an admin updates thresholds three times in one day, creating V5, V6, and V7
        When breaches are recorded before, between, and after these changes
        Then each breach must carry the correct policy version (V5/V6/V7) based on the latest published version on that date
        And final Fraud Score must sum all scores across versions without double-counting.

    # it should take the latest.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reporting across policy versions
        Given a reporting API or dashboard shows fraud history for a participant
        When the report loads
        Then it should be able to display each breach with its associated policy version
        And the total Fraud Score should match the engines cumulative computation.

    # UI
    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Block redemption for user already logged into Merchandise marketplace
        Given the participant is currently logged into the Merchandise marketplace
        And the participant can see catalogue items and has an available points balance
        When the Program Owner blocks the participants redemption access from the Fraud Management Dashboard
        Then any further attempt by the participant to redeem points (e.g., add to cart, proceed to checkout, or confirm order) should be blocked with an appropriate error message
        And redemption should be blocked immediately without requiring the participant to log out and log in again
        And the participant may continue to browse the marketplace catalogue but cannot complete any redemption transaction.


    @adminui @fraudmanagement @009UpdateFraudThreshold @system @filter @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: User Status filter returns correct users (Suspended)
        Given participants exist with different Statuses Active/Suspended
        When the Program Owner uses the User Status filter
        And sets User Status = Suspended.
        And applies the filter.
        Then only Suspended users are displayed.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud Risk filter returns correct users - Critical
        Given participants exist with different Fraud Risk levels Critical/High/Medium/Low
        When the Program Owner uses the Fraud Risk filter
        And sets Fraud Risk = Critical.
        And applies the filter.
        Then only Critical users are displayed.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud Score filter: "> value" returns correct users

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Combine filters (Status + Risk + Score + Username)

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reset clears filters and reloads default results

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: No-result state shown gracefully
        When Admin Apply filters that return zero matches.
        Then No result found should be displayed.

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Fraud Profile contains Breach Summary section

    @adminui @fraudmanagement @009UpdateFraudThreshold @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filters persist while paginating


    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the profile section in the fraud profile page
        Given the Fraud Profile page is opened for a participant
        When the Program Owner views the profile & Breach Summary section
        Then profile section should display username, email, user status, fraud risk, recommended action, and  fraud score
        Then the section displays breach counts for Value breaches, Volume breaches, and Velocity breaches

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Suspend an active user
        Given the user status is "Active"
        When I click "Suspend" and confirm the action
        Then the user status should change to "Suspended"
        And I should see a confirmation message
        And I should see the header action change to "Reactivate"
        And an "Suspend" action entry should appear in Action History with my user and the current timestamp

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Reactivate a suspended user
        Given the user status is "Suspended"
        When I click "Reactivate" and confirm the action
        Then the user status should change to "Active"
        And I should see a confirmation message
        And I should see the header action change to "Suspend"
        And a "Reactivate" action entry should appear in Action History with my user and the current timestamp

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Drilldown from summary to filtered history
        Given Value Weekly count displayed under Value breaches is "60"
        When I click on the "60" under Value Weekly
        Then 'Weekly value threshold breaches' should open
        And this shows the breaches with the threshold value according to the policy version
        And the total number of matching items should reflect "60"

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Consider the situation where admin has created a new policy version and updated the thresholds.
        Given the admin has created a new policy version and updated the thresholds.
        When the Program Owner views the Fraud Profile of a participant with breaches under both old and new policy versions.
        Then the breach counts should reflect breaches from both policy versions separately.
        And it should display when the admin clicks on the breach counts.

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Default to Flagged tab with data render
        When I open the Fraud Profile page
        Then the "Breach History" section should be visible
        And the "Flagged" tab should be selected by default
        And I should see a list of flagged breaches with columns Transaction ID, Date, Product, QTY, Value, Breach Type, Action

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter breaches by date range
        Given there are flagged breaches across multiple dates
        When I set the From date to "01/01/2025"
        And I set the To date to "03/31/2025"
        And I apply the filter
        Then I should see only breaches within the date range
        And the total count and pagination should reflect the filtered results

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Date filter validation prevents invalid ranges
        When I set the From date later than the To date
        Then I should see a validation error "From date cannot be later than To date"
        And the Apply action should be disabled
        And no network call should be triggered

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Use pagination controls
        Given there are more records than fit on a single page
        When I click "Next"
        Then I should see the next page of results
        When I click "Previous"
        Then I should see the previous page of results
        And on the first page the "Previous" control should be disabled
        And on the last page the "Next" control should be disabled

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Download filtered breaches
        Given I have applied a date filter
        When I click "Download"
        Then a file should download containing only the filtered breaches
        And the file should include the correct headers
        And the filename should include a timestamp
        And number and date formats should follow the user locale

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: View Cleared tab without Override actions
        When I click the "Cleared" tab
        Then I should see only cleared breaches
        And the Action column should not show "Override"
        And I should see who cleared each item and when

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Override a single flagged transaction
        When I click "Override" on transaction "11010"
        And I confirm the override
        Then the transaction "11010" should move to the "Cleared" tab
        And a recalculation should happen
        And the fraud score should update when the recalculation completes
        And the breach summary counts should decrease accordingly
        And an "Override" action should be recorded in Action History with userid, timestamp, and version.

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:Override multiple selected transactions
        Given bulk selection is supported
        And I select transactions "11011" and "11012"
        When I click the bulk "Override" and confirm
        Then both transactions should move to the "Cleared" tab
        And recalculation should be triggered
        And the fraud score and summary counts should update after recalculation.

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Program Owner can see the breach counts for each policy version (corresponding to each threshold configured in the past)

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scenario: Cleared tab renders with expected columns and data
        When the Cleared tab is displayed
        Then I should see the table header columns in order:
            | Transaction ID | Date | Breach Reason | Cleared On | Cleared By | Comments |
        And each row should display a transaction ID, transaction date,breach reason, Cleared on, cleared by and the comments

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Transaction moves to Cleared after manual override
        Given a transaction "11010" is currently in the Flagged tab
        When I switch to the Flagged tab
        And I click "Override" on transaction "11010" and confirm
        And I switch back to the Cleared tab
        Then transaction "11010" should appear in the Cleared list
        And "Cleared By" should equal my user ID
        And "Cleared On" should be the current date in the user's timezone
        And the Action History should record an "Override" action for transaction "11010"

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter Cleared transactions by date range in Breach history tab
        Given the Cleared list contains records across multiple dates
        When I set the From date to "01/07/2025"
        And I set the To date to "31/07/2026"
        And I apply the filter
        Then only transactions with "Cleared On" between "01/07/2024" and "31/07/2024" should be listed
        And the total count and pagination summary should reflect the filtered results

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Date filter validation blocks invalid ranges
        When I set the From date to "31/07/2024"
        And I set the To date to "01/07/2024"
        Then I should see a validation error "From date cannot be later than To date"
        And the filter apply action should be disabled
        And no network request should be sent

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Paginate through Cleared results
        Given there are more cleared records than the page size
        When I click "Next"
        Then I should see the next page of cleared results
        When I click "Previous"
        Then I should see the previous page of cleared results
        And on the first page the "Previous" control should be disabled
        And on the last page the "Next" control should be disabled

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: View comments for a cleared transaction
        Given a cleared transaction "11007" has comments
        When I click the "Comments" icon for transaction "11007"
        Then a modal or drawer should open with the full comment text
        And the comment should show who added it and when (if audit is available)

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Cleared list remains consistent if another user clears while I am viewing
        Given another Program Owner clears transaction "11012" while I am on the Cleared tab
        When the Cleared list auto-refreshes or I manually refresh
        Then transaction "11012" should appear in the Cleared list
        And the "Cleared By" should reflect the other user's ID
        And no duplicate entries should appear

    @adminui @fraudmanagement @010Fraudprofilepage @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Download Cleared list with current filters applied
        Given I have applied a date filter for "01/07/2024" to "31/07/2024"
        When I click the "Download" button on the Cleared tab
        Then a file should download containing only the filtered cleared transactions
        And the file should include headers:
            | Transaction ID | Date | Breach Reason | Cleared On | Cleared By | Comments |

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scenario: Notify participant when account is suspended
        Given the Program Owner suspends the participant's account via Fraud Dashboard
        When the suspension event is raised
        Then a notification should be sent to the participant

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Notify participant when account is reactivated
        Given the Program Owner reactivates the participant's account via Fraud Dashboard
        When the reactivation event is raised
        Then a notification should be sent to the participant

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Notify participant when redemption access is blocked
        Given the Program Owner blocks the redemption access
        When the redemption-block event is raised
        Then a notification should be sent to the participant

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Notify participant when redemption access is restored
        Given the Program Owner restores redemption access
        When the redemption-unblock event is raised
        Then a notification should be sent to the participant

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate no placeholder content leaks into the notification
        Given a notification is triggered
        When the message is generated
        Then the message should not contain raw template keys such as {{firstname}}, {{reason}}, {{action}}, or {{accessType}}

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Send scheduled Fraud Risk Summary to Program Owner
        Given a cron schedule is configured to run daily at 9:00 AM
        And fraud-risk categories have the following counts:
            | Critical | 10  |
            | High     | 25  |
            | Medium   | 40  |
            | Low      | 120 |
        When the scheduled notification cron executes
        Then a Fraud Risk Summary notification should be sent to the Program Owner

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scheduled notification sends valid summary even if some risk categories are empty
        Given fraud risk categories have:
            | Critical | 0  |
            | High     | 0  |
            | Medium   | 5  |
            | Low      | 12 |
        When the scheduled notification executes
        Then the message should reflect the values exactly as per the data

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Scheduled notification not sent if the cron is disabled
        Given the fraud-summary cron is disabled
        When the scheduled time occurs
        Then notification should not be sent

    @adminui @fraudmanagement @011Notification @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Program Owner receives only one summary per schedule execution
        Given the cron runs once
        When the execution completes
        Then only one summary message should be delivered per Program Owner

    @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 3. Consider if a user has the pattern of sales with upward distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 3. Consider if a user has the pattern of sales with downward distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 3. Consider if a user has the pattern of sales with equal distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 3. Consider if a user has the pattern of sales with v distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 3. Consider if a user has the pattern of sales with ^ distribution

   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for sales value based velocity threshold (monthly value) and n value (months) is 3. Consider if a user has the pattern of sales with upward distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for sales value based velocity threshold (monthly value) and n value (months) is 3. Consider if a user has the pattern of sales with downward distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Configured for sales value based velocity threshold (monthly value) and n value (months) is 3. Consider if a user has the pattern of sales with equal distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for sales value based velocity threshold (monthly value) and n value (months) is 3. Consider if a user has the pattern of sales with v distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for sales value based velocity threshold (monthly value) and n value (months) is 3. Consider if a user has the pattern of sales with ^ distribution

   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with vv distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with ^^ distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with ^V distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with V^ distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with vv| distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with |vv distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with ^^| distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales quantity based velocity threshold (monthly volume) and n value (months) is 5. Consider if a user has the pattern of sales with |^^ distribution

   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with vv distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with ^^ distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with ^V distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with V^ distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with vv| distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with |vv distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with ^^| distribution
   
   @adminui @fraudmanagement @E2EFraud @system @ui @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Configured for Sales Value based velocity threshold (monthly value) and n value (months) is 5. Consider if a user has the pattern of sales with |^^ distribution





