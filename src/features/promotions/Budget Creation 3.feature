Feature: Budget Creation and Management

    Background: Budget Promotion Setup
        Given I am logged in as an Admin
        And I have access to the Budget Management interface
        And the system is configured for budget functionality

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Create a new budget with valid details <Field> and <Value>
        Given I am on the Budget Management page
        When I click "Create New Budget"
        And I enter the following budget details:
            | Field  | Value          |
            | Name   | Q1 2025 Budget |
            | Code   | Q1_2025_BUD    |
            | Status | Active         |
        And I click "Save Budget"
        Then I should see "Budget created successfully" message
        And the budget should appear in the budget list
        And the budgetDetails table should contain the new record
        And the createdBy field should show my username
        And the createdOn field should show current timestamp

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Create budget with duplicate code
        Given a budget with code "DUPLICATE_CODE" already exists
        When I try to create a new budget with code "DUPLICATE_CODE"
        Then I should see "Budget code already exists" error message
        And the budget should not be created

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Create budget with invalid data <Field> as <Value> with error <error_message>
        Given I am creating a new budget
        When I enter "<field>" as "<value>"
        And I try to save the budget
        Then I should see "<error_message>" error message

        Examples:
            | field  | value | error_message             |
            | Name   |       | Budget name is required   |
            | Code   |       | Budget code is required   |
            | Status |       | Budget status is required |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View list of all existing budgets
        Given multiple budgets exist in the system
        When I navigate to the Budget Management page
        Then I should see a list of all budgets with the following columns:
            | Column Name  |
            | Budget Name  |
            | Budget Code  |
            | Status       |
            | Created By   |
            | Created Date |
            | Actions      |
        And the list should be sortable by each column
        And pagination should be available for large datasets

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Edit existing budget details
        Given a budget "Q1 2025 Budget" exists
        When I click "Edit" for the budget
        And I update the name to "Q1 2025 Updated Budget"
        And I change the status to "Inactive"
        And I click "Save Changes"
        Then I should see "Budget updated successfully" message
        And the budget list should show the updated details
        And the system should log the changes

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View budget details with associated promotions
        Given a budget "Q1 2025 Budget" exists
        And promotions "Jan Promo" and "Feb Promo" are mapped to this budget
        When I click "View Details" for the budget
        Then I should see the budget information
        And I should see the associated promotions as read-only text:
            | Promotion Name |
            | Jan Promo      |
            | Feb Promo      |
        And the promotion names should not be editable

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Automatic budget refresh with new promotions
        Given a budget "Q1 2025 Budget" exists
        And the budget refresh schedule is configured for every 5 minutes
        When a new promotion "Mar Promo" is mapped to this budget
        And the refresh schedule triggers
        Then the budget should include the new promotion "Mar Promo"
        And the budgetPromotions table should be updated
        And the system should log the refresh activity

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Track budget modification logs
        Given a budget "Q1 2025 Budget" exists
        When I update the budget name to "Q1 2025 Modified"
        And I change the status to "Inactive"
        Then the system should create audit logs with:
            | Log Type      | Details                                 |
            | Name Change   | From Q1 2025 Budget to Q1 2025 Modified |
            | Status Change | From Active to Inactive                 |
            | Modified By   | Admin username                          |
            | Modified Date | Current timestamp                       |
  

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Map promotion to budget during creation
        Given I am creating a new promotion
        When I complete the Basic Details section
        And I enable the "Budgets" section
        And I select budget "Q1 2025 Budget"
        And I complete the promotion setup
        Then the promotion should be successfully created
        And the budgetPromotions table should contain the mapping
        And the promotion should appear in the budget's associated promotions list

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Create promotion without budget mapping
        Given I am creating a new promotion
        When I complete the Basic Details section
        And I keep the "Budgets" section disabled
        And I complete the promotion setup
        Then the promotion should be created successfully
        And no budget mapping should be created
        And the promotion should not contribute to any budget

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Attempt to map multiple budgets to single promotion
        Given I am creating a new promotion
        When I try to select multiple budgets for the promotion
        Then I should see "A promotion can have only one budget" error message
        And only one budget should be selectable

    @promotion @budget_mapping @immutable
    Scenario: Attempt to remove budget from existing promotion
        Given a promotion "Jan Promo" is mapped to budget "Q1 2025 Budget"
        When I try to edit the promotion and remove the budget mapping
        Then I should see "Budget mapping cannot be removed for audit integrity" message
        And the budget mapping should remain unchanged
        And the budgetPromotions table should not be modified

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify organization budget calculation from mapped promotions
        Given budget "Q1 2025 Budget" exists
        And promotions "Jan Promo", "Feb Promo", "Mar Promo" are mapped to this budget
        And organization "ORG001" participants earned the following non-spendable points:
            | Promotion | Points Earned |
            | Jan Promo | 1000          |
            | Feb Promo | 1500          |
            | Mar Promo | 2000          |
        When the budget refresh process runs
        Then the orgBudgetSummary table should show:
            | Field          | Value       |
            | orgId          | ORG001      |
            | budgetId       | Q1_2025_BUD |
            | totBudget      | 4500        |
            | budgetUtilized | 0           |
            | budgetBalance  | 4500        |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Calculate budgets for multiple organizations
        Given budget "Q1 2025 Budget" exists
        And promotion "Jan Promo" is mapped to this budget
        And the following organizations have participants who earned points:
            | Organization | Points Earned |
            | ORG001       | 2000          |
            | ORG002       | 1500          |
            | ORG003       | 3000          |
        When the budget calculation runs
        Then the orgBudgetSummary should contain separate records for each organization
        And each organization should have their respective totBudget values
        And all budgetUtilized values should be 0 initially
        And budgetBalance should equal totBudget for each organization

  

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Successfully distribute points to team members
        Given my organization "ORG001" has budget balance of 1000 points
        And I am on the BudgetPoint promotion page
        When I fill the Point Distribution Form with:
            | Email ID              | Points |
            | john.doe@org001.com   | 200    |
            | jane.smith@org001.com | 300    |
        And I click "Submit"
        Then I should see "Points successfully awarded" confirmation message
        And the budgetAwarded table should contain both transactions
        And the orgBudgetSummary should show:
            | Field          | Value |
            | budgetUtilized | 500   |
            | budgetBalance  | 500   |
        And the recipients should receive spendable points

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Use autosuggest to select organization members
        Given I am on the Point Distribution Form
        When I click on the email autosuggest field
        Then I should see a list of all my organization members' email IDs
        And the list should include my own email ID
        And the list should be filtered as I type
        When I select "john.doe@org001.com"
        Then the following fields should be auto-populated:
            | Field      | Value    |
            | Username   | johndoe  |
            | First Name | John     |
            | Last Name  | Doe      |
            | Job Role   | Mechanic |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Add multiple award entries in single submission
        Given I am on the Point Distribution Form
        When I fill the first entry with "john.doe@org001.com" and 200 points
        And I click "Add More" button
        And I fill the second entry with "jane.smith@org001.com" and 300 points
        And I click "Add More" button
        And I fill the third entry with "mike.wilson@org001.com" and 150 points
        And I click "Submit"
        Then all three awards should be processed in a single transaction
        And the budgetAwarded table should contain 3 records
        And the total budgetUtilized should be 650 points

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent distribution exceeding budget balance
        Given my organization has budget balance of 500 points
        When I try to distribute 600 points to team members
        And I click "Submit"
        Then I should see "Award amount exceeds available budget balance" error message
        And the form submission should be blocked
        And no points should be deducted from the budget
        And no records should be created in budgetAwarded table

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent duplicate submissions due to multiple clicks
        Given I am on the Point Distribution Form
        When I fill valid award details
        And I click "Submit" button multiple times quickly
        Then only one submission should be processed
        And the system should show a debounce timer of 2-4 seconds
        And subsequent clicks should be ignored during the debounce period
        And only one record should be created in budgetAwarded table

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View real-time budget information on promotion page
        Given my organization "ORG001" has the following budget status:
            | Total Budget    | 2000 |
            | Budget Utilized | 500  |
            | Budget Balance  | 1500 |
        When I navigate to the BudgetPoint promotion page
        Then I should see three card widgets displaying:
            | Card Name       | Value |
            | Total Budget    | 2000  |
            | Budget Utilized | 500   |
            | Budget Balance  | 1500  |
        And the values should be specific to my organization only

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: See updated budget values after point distribution
        Given my organization has budget balance of 1000 points
        And I am viewing the promotion page
        When I distribute 300 points to team members
        And the transaction is completed
        Then the budget cards should automatically update to show:
            | Card Name       | Value |
            | Budget Utilized | 800   |
            | Budget Balance  | 700   |
        And the Total Budget should remain unchanged

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: View transaction history of awarded points
        Given I have previously awarded points to team members
        When I view the transaction history table on the promotion page
        Then I should see all my previous award transactions
        And the table should display:
            | Column Name    |
            | Award Date     |
            | Awarded To     |
            | Points Awarded |
            | Recipient Name |
        And the records should be sorted by date (latest first)
        And I should only see transactions that I initiated

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle workflow failure with data rollback
        Given I am distributing points to team members
        When the Budget Point Distribution Workflow fails after creating budgetAwarded records
        But before updating orgBudgetSummary
        Then the system should rollback the budgetAwarded records
        And the orgBudgetSummary should remain unchanged
        And I should see "Transaction failed. Please try again" error message
        And data integrity should be maintained

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Award points to myself
        Given my organization has available budget
        When I select my own email ID in the Point Distribution Form
        And I enter 100 points for myself
        And I submit the form
        Then the points should be awarded to my account
        And I should receive the spendable points
        And the transaction should be recorded in budgetAwarded table

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Concurrent budget creation with same code
        Given two admins are creating budgets simultaneously
        When Admin A creates budget with code "CONCURRENT_TEST"
        And Admin B creates budget with code "CONCURRENT_TEST" at the same time
        Then only one budget should be created successfully
        And the second admin should see "Budget code already exists" error
        And no duplicate records should exist in budgetDetails table
        And database integrity should be maintained

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Create budget with special characters in name and code <name> and <code> with result <result>
        Given I am creating a new budget
        When I enter budget name as "<name>"
        And I enter budget code as "<code>"
        And I try to save the budget
        Then I should see "<result>"

        Examples:
            | name                                                             | code         | result                            |
            | Budget@#$%                                                       | BUD@#$       | Special characters not allowed    |
            | Budget with spaces                                               | BUD SPACE    | Spaces not allowed in code        |
            | Budget_with_underscore                                           | BUD_UNDER    | Budget created successfully       |
            | Budget-with-dash                                                 | BUD-DASH     | Budget created successfully       |
            | 123NumericBudget                                                 | 123BUD       | Budget created successfully       |
            | VeryLongBudgetNameThatExceedsMaximumCharacterLimitForBudgetNames | VERYLONGCODE | Name/Code exceeds character limit |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle extremely large budget values
        Given an organization has earned 999999999 non-spendable points
        When the budget calculation runs
        Then the system should handle the large number correctly
        And the orgBudgetSummary should store the value without overflow
        And mathematical operations should remain accurate
        And no data truncation should occur

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Handle zero and negative point distributions <points> with result <result>
        Given my organization has budget balance of 1000 points
        When I try to distribute "<points>" points to a team member
        Then I should see "<result>"

        Examples:
            | points | result                           |
            | 0      | Points must be greater than zero |
            | -100   | Negative points not allowed      |
            | 0.5    | Decimal points not allowed       |
            | abc    | Invalid number format            |
            | null   | Points value is required         |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Distribute points to user who gets deleted during transaction
        Given I am filling the Point Distribution Form
        And I select user "john.doe@org001.com" for 200 points
        When the user "john.doe@org001.com" gets deleted from the system
        And I submit the form
        Then I should see "Selected user no longer exists" error message
        And no points should be deducted from budget
        And no transaction should be recorded

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Distribute points to user who changes organization
        Given I select user "john.doe@org001.com" from my organization
        And I enter 200 points for distribution
        When the user "john.doe@org001.com" moves to a different organization
        And I submit the form
        Then I should see "User no longer belongs to your organization" error
        And the transaction should be rejected
        And budget should remain unchanged

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Submit form when promotion expires during transaction
        Given a BudgetPoint promotion expires in 30 seconds
        And I am filling the Point Distribution Form
        When I take 60 seconds to complete the form
        And I submit the form after promotion expiry
        Then I should see "Promotion has expired" error message
        And the form should be disabled
        And no points should be distributed

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle session timeout during point distribution
        Given I am logged in and filling the Point Distribution Form
        When my session expires due to inactivity
        And I try to submit the form
        Then I should be redirected to login page
        And I should see "Session expired. Please login again" message
        And no points should be distributed
        And form data should be preserved if possible

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle network interruption during form submission
        Given I am submitting the Point Distribution Form
        When network connection is lost during submission
        And the request times out
        Then I should see "Network error. Please check your connection" message
        And I should be able to retry the submission
        And the system should prevent duplicate transactions
        And I should be able to verify transaction status in history table

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Map maximum number of promotions to single budget
        Given a budget "STRESS_TEST_BUDGET" exists
        When I try to map 1000 promotions to this budget
        Then all promotions should be mapped successfully
        And the budgetPromotions table should handle large datasets
        And budget refresh should complete within acceptable time
        And system performance should remain stable

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent circular budget dependencies
        Given budget "BUDGET_A" exists
        And budget "BUDGET_B" exists
        When I try to create a promotion that references both budgets
        Then I should see "A promotion can have only one budget" error
        And no circular dependency should be created
        And data integrity should be maintained

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle unicode characters in user names and emails
        Given users exist with unicode characters in their names
        When I select user "राजेश.कुमार@org001.com" in the autosuggest
        Then the user details should display correctly:
            | Field      | Value |
            | First Name | राजेश |
            | Last Name  | कुमार |
        And points distribution should work normally
        And unicode characters should be stored and displayed correctly

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle email case sensitivity in autosuggest
        Given a user exists with email "John.Doe@ORG001.COM"
        When I search for "john.doe@org001.com" in autosuggest
        Then the user should be found and displayed
        And case-insensitive matching should work
        And points distribution should succeed

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle database constraint violations
        Given the budgetDetails table has unique constraints
        When a database constraint violation occurs during budget creation
        Then I should see a user-friendly error message
        And the system should not expose database error details
        And the transaction should be rolled back completely
        And system should remain in consistent state

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle large point distribution forms
        Given I am creating a point distribution with 1000 recipients
        When I submit the form with maximum allowed entries
        Then the system should process all entries successfully
        And memory usage should remain within limits
        And the transaction should complete within reasonable time
        And all recipients should receive their points

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle budget operations across different timezones
        Given users are operating from different timezones
        And a BudgetPoint promotion ends at "23:59 IST"
        When a user in "PST" timezone tries to submit at "11:30 PST" (equivalent to 00:00 IST next day)
        Then the system should use server timezone for validation
        And the user should see "Promotion has expired" message
        And timezone conversion should be handled correctly

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle duplicate email entries in single form submission
        Given I am filling the Point Distribution Form
        When I add "john.doe@org001.com" with 100 points
        And I add "john.doe@org001.com" again with 200 points in the same form
        Then I should see "Duplicate recipient detected" error
        And the form should highlight the duplicate entries
        And submission should be blocked until duplicates are resolved

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Maintain audit trail during system failures
        Given budget operations are being performed
        When a system failure occurs during audit log writing
        Then the main transaction should be rolled back
        And audit trail integrity should be maintained
        And no partial audit records should exist
        And system should recover gracefully

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle browser refresh during form submission
        Given I am submitting the Point Distribution Form
        When I refresh the browser page during submission
        Then the system should handle the interruption gracefully
        And I should see the current state of the form
        And I should be able to check transaction history to verify completion
        And no duplicate transactions should occur

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle budget data during system migrations
        Given budget data exists in the system
        When a data migration is performed
        Then all budget relationships should be preserved
        And orgBudgetSummary calculations should remain accurate
        And no data should be lost or corrupted
        And system should function normally after migration

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle API rate limiting during high usage
        Given multiple users are distributing points simultaneously
        When API rate limits are reached
        Then users should see "System busy. Please try again" message
        And requests should be queued or throttled appropriately
        And no transactions should be lost
        And system should recover automatically

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle orphaned budget data
        Given budget records exist with missing references
        When the system cleanup process runs
        Then orphaned budgetPromotions records should be identified
        And orphaned orgBudgetSummary records should be handled
        And data integrity should be restored
        And cleanup logs should be generated

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent form validation bypass attempts
        Given the Point Distribution Form has client-side validation
        When a user attempts to bypass validation using browser tools
        And submits invalid data directly
        Then server-side validation should catch the invalid data
        And the transaction should be rejected
        And appropriate error messages should be displayed
        And security should not be compromised

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle system clock changes during operations
        Given budget operations are in progress
        When the system clock is adjusted (daylight saving, manual change)
        Then timestamp consistency should be maintained
        And date-based validations should work correctly
        And audit trails should reflect accurate times
        And no operations should fail due to time inconsistencies

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Concurrent budget creation with same code
        Given two admins are creating budgets simultaneously
        When Admin A creates budget with code "CONCURRENT_TEST"
        And Admin B creates budget with code "CONCURRENT_TEST" at the same time
        Then only one budget should be created successfully
        And the second admin should see "Budget code already exists" error
        And no duplicate records should exist in budgetDetails table
        And database integrity should be maintained

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Create budget with special characters in name and code <name> and <code> with result <result>
        Given I am creating a new budget
        When I enter budget name as "<name>"
        And I enter budget code as "<code>"
        And I try to save the budget
        Then I should see "<result>"

        Examples:
            | name                                                             | code         | result                            |
            | Budget@#$%                                                       | BUD@#$       | Special characters not allowed    |
            | Budget with spaces                                               | BUD SPACE    | Spaces not allowed in code        |
            | Budget_with_underscore                                           | BUD_UNDER    | Budget created successfully       |
            | Budget-with-dash                                                 | BUD-DASH     | Budget created successfully       |
            | 123NumericBudget                                                 | 123BUD       | Budget created successfully       |
            | VeryLongBudgetNameThatExceedsMaximumCharacterLimitForBudgetNames | VERYLONGCODE | Name/Code exceeds character limit |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle extremely large budget values
        Given an organization has earned 999999999 non-spendable points
        When the budget calculation runs
        Then the system should handle the large number correctly
        And the orgBudgetSummary should store the value without overflow
        And mathematical operations should remain accurate
        And no data truncation should occur

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario Outline: Handle zero and negative point distributions <points> with result <result>
        Given my organization has budget balance of 1000 points
        When I try to distribute "<points>" points to a team member
        Then I should see "<result>"

        Examples:
            | points | result                           |
            | 0      | Points must be greater than zero |
            | -100   | Negative points not allowed      |
            | 0.5    | Decimal points not allowed       |
            | abc    | Invalid number format            |
            | null   | Points value is required         |

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Distribute points to user who gets deleted during transaction
        Given I am filling the Point Distribution Form
        And I select user "john.doe@org001.com" for 200 points
        When the user "john.doe@org001.com" gets deleted from the system
        And I submit the form
        Then I should see "Selected user no longer exists" error message
        And no points should be deducted from budget
        And no transaction should be recorded

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Distribute points to user who changes organization
        Given I select user "john.doe@org001.com" from my organization
        And I enter 200 points for distribution
        When the user "john.doe@org001.com" moves to a different organization
        And I submit the form
        Then I should see "User no longer belongs to your organization" error
        And the transaction should be rejected
        And budget should remain unchanged

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Submit form when promotion expires during transaction
        Given a BudgetPoint promotion expires in 30 seconds
        And I am filling the Point Distribution Form
        When I take 60 seconds to complete the form
        And I submit the form after promotion expiry
        Then I should see "Promotion has expired" error message
        And the form should be disabled
        And no points should be distributed

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle session timeout during point distribution
        Given I am logged in and filling the Point Distribution Form
        When my session expires due to inactivity
        And I try to submit the form
        Then I should be redirected to login page
        And I should see "Session expired. Please login again" message
        And no points should be distributed
        And form data should be preserved if possible

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle network interruption during form submission
        Given I am submitting the Point Distribution Form
        When network connection is lost during submission
        And the request times out
        Then I should see "Network error. Please check your connection" message
        And I should be able to retry the submission
        And the system should prevent duplicate transactions
        And I should be able to verify transaction status in history table

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Map maximum number of promotions to single budget
        Given a budget "STRESS_TEST_BUDGET" exists
        When I try to map 1000 promotions to this budget
        Then all promotions should be mapped successfully
        And the budgetPromotions table should handle large datasets
        And budget refresh should complete within acceptable time
        And system performance should remain stable

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent circular budget dependencies
        Given budget "BUDGET_A" exists
        And budget "BUDGET_B" exists
        When I try to create a promotion that references both budgets
        Then I should see "A promotion can have only one budget" error
        And no circular dependency should be created
        And data integrity should be maintained

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle unicode characters in user names and emails
        Given users exist with unicode characters in their names
        When I select user "राजेश.कुमार@org001.com" in the autosuggest
        Then the user details should display correctly:
            | Field      | Value |
            | First Name | राजेश |
            | Last Name  | कुमार |
        And points distribution should work normally
        And unicode characters should be stored and displayed correctly

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle email case sensitivity in autosuggest
        Given a user exists with email "John.Doe@ORG001.COM"
        When I search for "john.doe@org001.com" in autosuggest
        Then the user should be found and displayed
        And case-insensitive matching should work
        And points distribution should succeed

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle database constraint violations
        Given the budgetDetails table has unique constraints
        When a database constraint violation occurs during budget creation
        Then I should see a user-friendly error message
        And the system should not expose database error details
        And the transaction should be rolled back completely
        And system should remain in consistent state

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle large point distribution forms
        Given I am creating a point distribution with 1000 recipients
        When I submit the form with maximum allowed entries
        Then the system should process all entries successfully
        And memory usage should remain within limits
        And the transaction should complete within reasonable time
        And all recipients should receive their points

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle budget operations across different timezones
        Given users are operating from different timezones
        And a BudgetPoint promotion ends at "23:59 IST"
        When a user in "PST" timezone tries to submit at "11:30 PST" (equivalent to 00:00 IST next day)
        Then the system should use server timezone for validation
        And the user should see "Promotion has expired" message
        And timezone conversion should be handled correctly

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle duplicate email entries in single form submission
        Given I am filling the Point Distribution Form
        When I add "john.doe@org001.com" with 100 points
        And I add "john.doe@org001.com" again with 200 points in the same form
        Then I should see "Duplicate recipient detected" error
        And the form should highlight the duplicate entries
        And submission should be blocked until duplicates are resolved

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Maintain audit trail during system failures
        Given budget operations are being performed
        When a system failure occurs during audit log writing
        Then the main transaction should be rolled back
        And audit trail integrity should be maintained
        And no partial audit records should exist
        And system should recover gracefully

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle browser refresh during form submission
        Given I am submitting the Point Distribution Form
        When I refresh the browser page during submission
        Then the system should handle the interruption gracefully
        And I should see the current state of the form
        And I should be able to check transaction history to verify completion
        And no duplicate transactions should occur

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle budget data during system migrations
        Given budget data exists in the system
        When a data migration is performed
        Then all budget relationships should be preserved
        And orgBudgetSummary calculations should remain accurate
        And no data should be lost or corrupted
        And system should function normally after migration

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle API rate limiting during high usage
        Given multiple users are distributing points simultaneously
        When API rate limits are reached
        Then users should see "System busy. Please try again" message
        And requests should be queued or throttled appropriately
        And no transactions should be lost
        And system should recover automatically

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle orphaned budget data
        Given budget records exist with missing references
        When the system cleanup process runs
        Then orphaned budgetPromotions records should be identified
        And orphaned orgBudgetSummary records should be handled
        And data integrity should be restored
        And cleanup logs should be generated

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent form validation bypass attempts
        Given the Point Distribution Form has client-side validation
        When a user attempts to bypass validation using browser tools
        And submits invalid data directly
        Then server-side validation should catch the invalid data
        And the transaction should be rejected
        And appropriate error messages should be displayed
        And security should not be compromised

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle system clock changes during operations
        Given budget operations are in progress
        When the system clock is adjusted (daylight saving, manual change)
        Then timestamp consistency should be maintained
        And date-based validations should work correctly
        And audit trails should reflect accurate times
        And no operations should fail due to time inconsistencies

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Generate BudgetPoints Report
        Given I am a manager accessing the BudgetPoints Report
        When I apply the following filters:
            | Organisation Name | Awarded User | Date Range               |
            | Org A             | User 1       | 2023-01-01 to 2023-12-31 |
        Then the report should display the relevant budget points data
        And the data should be accurate and consistent with the underlying tables

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the org code in the budget point reports
        Given I am a manager accessing the BudgetPoints Report
        When I view the report for Org A
        Then the Organisation Code should be displayed correctly
        And the Organisation Name should match the expected value

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the awarded user in the budget point reports
        Given I am a manager accessing the BudgetPoints Report
        When I view the report for Org A
        Then the Awarded User should be displayed correctly
        And the Awarded Points should match the expected value

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the budget points in the budget point reports
        Given I am a manager accessing the BudgetPoints Report
        When I view the report for Org A
        Then the Budget Points should be displayed correctly
        And the Budget Points should match the expected value

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the org name in the budget point reports
        Given I am a manager accessing the BudgetPoints Report
        When I view the report for Org A
        Then the Organisation Name should be displayed correctly
        And the Organisation Name should match the expected value

    #### Filters
    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Organisation name
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Organisation Name filter with "Org A"
        Then the report should show only records where Organisation Name equals "Org A"
        And all displayed rows should correspond to records from BudgetAwarded and orgBudgetSummary for "Org A"

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Awarded user
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Awarded User filter with "user1@example.com"
        Then the report should show only records where Awarded User equals "user1@example.com"
        And all displayed Awarded Points should match values from BudgetAwarded for that user

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Date Range (from and to)
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Date Range filter from "2023-01-01" to "2023-12-31"
        Then the report should show only records with Award Date between "2023-01-01" and "2023-12-31" inclusive
        And the results should match BudgetAwarded and orgBudgetSummary data for that period

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Organisation and Awarded user
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Organisation Name filter with "Org A"
        And I apply the Awarded User filter with "user1@example.com"
        Then the report should show only records matching Organisation "Org A" AND Awarded User "user1@example.com"

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Organisation and Date Range
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Organisation Name filter with "Org A"
        And I apply the Date Range filter from "2023-06-01" to "2023-06-30"
        Then the report should show only records for "Org A" within the specified date range
        And totals should aggregate correctly from underlying tables

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report by Awarded user and Date Range
        Given I am a manager accessing the BudgetPoints Report
        When I apply the Awarded User filter with "user1@example.com"
        And I apply the Date Range filter from "2023-03-01" to "2023-03-31"
        Then the report should show only records for that user within the specified dates

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Filter BudgetPoints Report with all filters applied
        Given I am a manager accessing the BudgetPoints Report
        When I apply the following filters:
            | Organisation Name | Awarded User      | Date Range               |
            | Org A             | user1@example.com | 2023-01-01 to 2023-12-31 |
        Then the report should show only records that match all three filter criteria
        And summary totals should equal aggregated values from BudgetAwarded and orgBudgetSummary for the selection

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Handle invalid Date Range input
        Given I am a manager accessing the BudgetPoints Report
        When I set the Date Range filter from "2023-12-31" to "2023-01-01"
        Then I should see "Invalid date range: 'From' must be earlier than or equal to 'To'" error message
        And no report results should be returned until the date range is corrected
    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Show friendly message when no records match filters
        Given I am a manager accessing the BudgetPoints Report
        When I apply the following filters:
            | Organisation Name | Awarded User    | Date Range               |
            | NonExistingOrg    | nonuser@org.com | 2025-01-01 to 2025-01-31 |
        Then the report should display "No records found for selected filters"
        And no rows should be shown from BudgetAwarded or orgBudgetSummary

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Export respects applied filters
        Given I am a manager accessing the BudgetPoints Report
        And I apply the Organisation Name filter with "Org A"
        And I apply the Date Range filter from "2023-01-01" to "2023-12-31"
        When I click "Export"
        Then the exported file should contain only rows matching the applied filters
        And exported totals should match the on-screen aggregates from BudgetAwarded and orgBudgetSummary

    #All report data should be drawn directly from the BudgetAwarded and orgBudgetSummary tables, ensuring accuracy and consistency with operational workflows.
    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: BudgetPoints Report data matches BudgetAwarded and orgBudgetSummary tables
        Given I am a manager accessing the BudgetPoints Report
        When I view the report for "Org A" and "user1@example.com" for date range "2023-01-01" to "2023-12-31"
        Then every row in the report should correspond to a record in the BudgetAwarded table
        And summary totals should match the aggregated values from orgBudgetSummary for the selected filters
        And no discrepancies should exist between the report and the underlying tables

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: BudgetPoints Report updates in real-time with operational workflows
        Given a new budget point award is processed for "Org A" and "user2@example.com"
        When I refresh the BudgetPoints Report
        Then the new transaction should appear in the report immediately
        And the totals should update to reflect the new award
        And the data should remain consistent with BudgetAwarded and orgBudgetSummary tables

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: BudgetPoints Report reflects rollback and failed transactions
        Given a budget point award transaction fails and is rolled back
        When I view the BudgetPoints Report for the affected organisation and user
        Then the failed transaction should not appear in the report
        And only successfully committed records from BudgetAwarded and orgBudgetSummary should be shown

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: BudgetPoints Report excludes orphaned or inconsistent data
        Given there are orphaned records in BudgetAwarded or orgBudgetSummary
        When I generate the BudgetPoints Report
        Then the report should exclude any records with missing or invalid references
        And only valid, consistent data should be displayed
        And the report should accurately reflect the current state of the underlying data


    #Widgets
    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display banner widget on BudgetPoint promotion page
        Given I am viewing the BudgetPoint promotion page
        Then a banner widget should be displayed by default
        And the banner image should be configurable for the promotion

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display datecard widget with promotion dates
        Given I am viewing the BudgetPoint promotion page
        Then a datecard widget should be displayed by default
        And it should show the promotion start date, end date, and days remaining

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display budget card widgets for user organisation
        Given I am viewing the BudgetPoint promotion page
        And my organisation has budget data in orgBudgetSummary
        Then three card widgets should be displayed:
            | Card Name       | Value from orgBudgetSummary |
            | Total Budget    | totBudget                   |
            | Budget Utilized | budgetUtilized              |
            | Budget Balance  | budgetBalance               |
        And the values should be specific to my organisation only

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display Point Distribution Form widget on promotion page
        Given I am viewing the BudgetPoint promotion page
        Then a Point Distribution Form widget should be available
        And the form should allow eligible participants to distribute spendable points to themselves or organisation members
        And the form should be configurable in the Form Builder section for all tenants


    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display Point Distribution Form with repeatable object array
        Given I am viewing the BudgetPoint promotion page
        Then the Point Distribution Form should include a repeatable object array for point awards
        And each entry should have:
            | Component         | Functionality                                              |
            | Autosuggest Field | Lists email IDs of all organisation members via custom API |
            | Username          | Auto-populated based on selected email ID                  |
            | First Name        | Auto-populated based on selected email ID                  |
            | Last Name         | Auto-populated based on selected email ID                  |
            | Job Role          | Auto-populated based on selected email ID                  |
            | Points Textbox    | Allows entry of points to award                            |
        And a "+" button should allow adding more award entries
        And a hidden field should specify the budgetId associated with the promotion

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent awarding points exceeding budget balance
        Given my organisation has a budget balance of 500 points
        When I fill the Point Distribution Form with a total of 600 points across all entries
        And I submit the form
        Then I should see "Award amount exceeds available budget balance" error message
        And the form submission should be blocked

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Successful submission of Point Distribution Form
        Given my organisation has a budget balance of 1000 points
        When I fill the Point Distribution Form with valid entries totaling 700 points
        And I submit the form
        Then the system should record the transaction and update budget balances
        And I should see "Points successfully awarded" confirmation message
        And the form should be disabled for 2-4 seconds to prevent duplicate submissions

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent duplicate submissions with debounce timer
        Given I am submitting the Point Distribution Form
        When I click "Submit" multiple times quickly
        Then only one transaction should be processed
        And subsequent clicks within 2-4 seconds should be ignored

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Display transaction history table for awarded points
        Given I am viewing the BudgetPoint promotion page
        Then a transaction history table should be displayed
        And the table should show all points previously awarded by me
        And the records should be sorted by award date in descending order
        And the table should be based on the budgetAwarded schema

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify transaction status after network interruption
        Given I am submitting the Point Distribution Form
        When a network error occurs during submission
        Then I should be able to view the transaction history table
        And I should be able to verify if my last transaction was processed
        And duplicate awards should be prevented

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Prevent access to Point Distribution Form after promotion expiry
        Given the BudgetPoint promotion has ended
        When I try to access the promotion page
        Then the Point Distribution Form should not be available
        And I should see "Promotion has expired" message

    #banking
    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Automatic Banking for the budget Points

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the event based banking

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Budget Transcation logs Event for the banking

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the schedule banking

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the automatic banking

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Score for the non spending promotion users

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the score to point convert in the spendable Promotions

    @platformui @budgetpromotion @budgetpromotion @integration @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the End to End for the budget point creation
