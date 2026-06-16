Feature: Test cases for Points Banking as a feature

    Background: Promotion Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        #When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Promotions"
        Then Verify the "Promotion" page is displayed


    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to enable Points Banking  within Basic Information tab

    @adminui @PointsBanking @BankingConfig @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to disable Points Banking within Basic Information tab

    @adminui @PointsBanking @BankingConfig @system @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the admin can able to continue without enabling the points banking

    @adminui @PointsBanking @BankingConfig @system @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the points banking is default enabled for the dpd promotion

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Type as "Transaction wise Banking" under Points Banking

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Scheduled Banking" when banking type is selected as "Transaction wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Automatic Banking" when banking type is selected as "Transaction wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Manual Banking" when banking type is selected as "Transaction wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Type as "Batch wise Banking" under Points Banking

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking is triggered transactional wise for the transactional configuration

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking is triggered Batch wise for the Batch configuration

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Scheduled Banking" when banking type is selected as "Batch wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Automatic Banking" when banking type is selected as "Batch wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Banking Trigger as "Manual Banking" when banking type is selected as "Batch wise Banking"

    @adminui @PointsBanking @BankingConfig @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to see the cron expression for the scheduled banking


    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking trigger type as manual and the banking type as transactional, the banking is triggered manually and the transaction is pushed to the points banking

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger type as automatic and the banking type as transactional, the banking is triggered automatically and the transaction is pushed to the points banking

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger type as scheduled and the banking type as transactional, the banking is triggered automatically on the scheduled cron job and the transaction is pushed to the points banking

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger type as manual and the banking type as batch, the banking is triggered manually and the transaction is pushed to the points banking in a single batch

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger type as automatic and the banking type as batch, the banking is triggered automatically and the transaction is pushed to the points banking in a single batch

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the trigger type as scheduled and the banking type as batch, the banking is triggered automatically on the scheduled cron job and the transaction is pushed to the points banking in a single batch

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify triggering the bank manually after the promotion date should not bank the points

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify configuring the banking trigger as scheduled after the promotion date should not bank the points

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking is triggered automatically on the upload for the automatic banking

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking is batch wise and the user contains multiple transaction and verify all the transaction are collated and pushed ito the points banking into a single batch

    @adminui @PointsBanking @BankingTrigger @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the banking is transactional and the user contains multiple transaction and verify pushing all transaction at a same time creates multiple transactions for a single user
