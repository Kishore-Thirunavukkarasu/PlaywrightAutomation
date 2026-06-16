Feature: Bank Logs Test cases

    @adminui @banking @banklogs @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to see the bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Bank dropdown has Nackle, UK, Rewards and DataFlux options

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the combination of search criteria for bank details should display the respective results

    @adminui @banking @banklogs @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching with Invalid username throws respective error message

    @adminui @banking @banklogs @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching with valid user and Invalid Bank Name throws respective error message

    @adminui @banking @banklogs @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching with valid user, bank and status filter as Failed displays only Failed bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching with valid user, bank and status filter as Success displays only Success bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify searching with valid user, bank and status filter as All displays all bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify refresh button functionality in bank logs page should refresh the bank logs page and display the latest bank logs eliminating the applied filters

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the columns are sorted

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to see the bank logs with pagination

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify failed and success bank logs are captured

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the response body of the user bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the errorDescription when the user search with failed bank account creation

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Transaction ID is generated for each bank log entry when any transaction is made

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the bank logs for each and every transaction made by the user are accurately recorded and displayed in the bank logs section

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the bank logs are updated in real-time as transactions occur, ensuring that users can see the most recent activity without needing to refresh the page

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the transaction details are captured in response body of the bank logs

    @adminui @banking @banklogs @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the refresh button functionality in bank logs page should refresh the bank logs page and display the latest bank logs eliminating the applied filters