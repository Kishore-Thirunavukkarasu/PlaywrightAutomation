Feature: Offline Capability of achievo

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can login when online
        When the user is on the login page of the achievo mobile app
        When the user enters valid credentials
        And the user taps the login button
        Then the user should be redirected to the home page

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can access the app when offline after logging in online at least once
        Given the user has logged in at least once while online
        When the user goes offline
        And the user opens the achievo mobile app
        Then the user should be able to access the home page from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user cannot access the app offline if never logged in online
        When the user opens the achievo mobile app without prior online login
        Then the user should see an error message indicating offline access is not available

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can access previously visited pages from cache when offline
        Given the user has visited the Promotions page while online
        When the user goes offline
        And the user opens the Promotions page in the achievo mobile app
        Then the Promotions page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Promotions page is accessible offline only if visited at least once online
        Given the user has visited the Promotions page while online
        When the user goes offline
        And the user opens the Promotions page in the achievo mobile app
        Then the Promotions page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Promotions page is not accessible offline if never visited online
        When the user goes offline
        And the user opens the Promotions page in the achievo mobile app
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Menu page is accessible offline only if visited at least once online
        Given the user has visited the Menu page while online
        When the user goes offline
        And the user opens the Menu page in the achievo mobile app
        Then the Menu page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Menu page is not accessible offline if never visited online
        When the user goes offline
        And the user opens the Menu page in the achievo mobile app
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Point Statement page is accessible offline only if visited at least once online
        Given the user has visited the Point Statement page while online
        When the user goes offline
        And the user opens the Point Statement page in the achievo mobile app
        Then the Point Statement page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Point Statement page is not accessible offline if never visited online
        When the user goes offline
        And the user opens the Point Statement page in the achievo mobile app
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Invoice Submission page is accessible offline if visited online before
        Given the user has visited the Invoice Submission page while online
        When the user goes offline
        And the user opens the Invoice Submission page in the achievo mobile app
        Then the Invoice Submission page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Invoice Submission page is not accessible offline if never visited online
        When the user goes offline
        And the user opens the Invoice Submission page in the achievo mobile app
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can upload invoice images/files offline
        Given the user is on the Invoice Submission page while offline
        When the user selects an invoice image/file to upload
        And the user taps the upload button
        Then the invoice image/file should be stored locally for later submission

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify invoice submission attempts while offline are stored locally
        Given the user is on the Invoice Submission page while offline
        When the user attempts to submit an invoice
        Then the submission attempt should be stored locally for later processing

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify invoice submission records sync automatically when the device goes online and displays in invoice history
        Given the user has submitted invoices while offline
        When the device goes online
        Then the invoice submissions should sync automatically
        And the synced invoices should appear in the Invoice History page

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that failed invoice submissions show an appropriate error message after sync
        Given the user has attempted to submit invoices while offline
        When the device goes online
        Then the system should check for failed submissions
        And the user should see an error message for any failed invoice submissions

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can open the Coupon Submission page offline if visited online before
        Given the user has visited the Coupon Submission page while online
        When the user goes offline
        And the user opens the Coupon Submission page in the achievo mobile app
        Then the Coupon Submission page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the Coupon Submission page is not accessible offline if never visited online
        When the user goes offline
        And the user opens the Coupon Submission page in the achievo mobile app
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the user can upload coupon images/files offline
        Given the user is on the Coupon Submission page while offline
        When the user selects a coupon image/file to upload
        And the user taps the upload button
        Then the coupon image/file should be stored locally for later submission

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify coupon submission attempts while offline are stored locally
        Given the user is on the Coupon Submission page while offline
        When the user attempts to submit a coupon
        Then the submission attempt should be stored locally for later processing

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify coupon submissions sync automatically when the device goes online and displays in coupon history
        Given the user has submitted coupons while offline
        When the device goes online
        Then the coupon submissions should sync automatically
        And the synced coupons should appear in the Coupon History page

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that invalid coupon submissions are marked and handled after sync
        Given the user has attempted to submit invalid coupons while offline
        When the device goes online
        Then the system should check for invalid submissions
        And the user should see an error message for any invalid coupon submissions

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify Invoice History is visible offline if visited online before
        Given the user has visited the Invoice History page while online
        When the user goes offline
        And the user opens the Invoice History page in the achievo mobile app
        Then the Invoice History page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify Coupon History is visible offline if visited online before
        Given the user has visited the Coupon History page while online
        When the user goes offline
        And the user opens the Coupon History page in the achievo mobile app
        Then the Coupon History page should be accessible from cache

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify history data offline matches the last synced online data
        Given the user has visited the Invoice History and Coupon History pages while online
        When the user goes offline
        And the user opens both history pages in the achievo mobile app
        Then the data displayed should match the last synced online data

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that while in the middle of submission offline, if the network comes back, the system automatically starts syncing without manual refresh
        Given the user is submitting an invoice or coupon while offline
        When the device goes online during the submission
        Then the system should automatically start syncing the submission without requiring a manual refresh

    @mobile @achievo @offlineCapability @system @achievo @functional @negative @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that partial submissions (incomplete files or forms) are not synced automatically
        Given the user has an incomplete invoice or coupon submission while offline
        When the device goes online
        Then the system should not sync the partial submission
        And the user should be notified of the incomplete submission

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that an interrupted sync process resumes once network is stable again
        Given the user has initiated a sync process while online
        When the network connection is interrupted
        And the network becomes stable again
        Then the sync process should automatically resume from where it left off

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that an appropriate error message is shown when trying to access a page offline without prerequisite online visit
        When the user goes offline
        And the user attempts to access a page that was never visited online
        Then the user should see an error message indicating the page is not available offline

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that cached pages load instantly without internet
        Given the user has visited a page while online
        When the user goes offline
        And the user opens the same page in the achievo mobile app
        Then the page should load instantly from cache without requiring an internet connection

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that clearing cache removes offline access to previously visited pages
        Given the user has visited multiple pages while online
        When the user clears the app cache
        Then the user should no longer have offline access to those previously visited pages

    @mobile @achievo @offlineCapability @system @achievo @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify that clearing cache removes the submitted invoices and coupons
        Given the user has submitted invoices and coupons while online
        When the user clears the app cache
        Then the user should no longer have access to the submitted invoices and coupons