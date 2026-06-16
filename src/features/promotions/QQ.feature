Feature: QandQ Promotion

@adminui @QandQ @Adminconfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated

Scenario: Verify all the created quiz group is shown up while creating the measure for quiz promotion
    Given user is on the measure create page for quiz promotion
    When user selects the Q&Q name
    Then user should see all the created quiz group from BRIKS in the dropdown

@adminui @QandQ @Adminconfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the Q&Q configuration link is clicked in measure will redirect to the BRIKS page
    Given user is on the measure create page for quiz promotion
    When user clicks on the Q&Q configuration link
    Then user should be redirected to the BRIKS page

@adminui @QandQ @Adminconfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the Q&Q promotion source type and source name is automatically selected in the measure creation page
    Given user is on the measure create page for quiz promotion
    When user selects the Q&Q name
    Then user should see the Q&Q promotion source type and source name is automatically selected

@adminui @QandQ @Adminconfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the Q&Q will not have measure rule variable
    Given user is on the measure rule page for quiz promotion
    When user click on the add rule button
    Then user should not see the measure rule variable in the pop up

@adminui @QandQ @Adminconfiguration @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the claim settings is not present for the Q&Q promotion
    Given user is on the promotino setup for the quiz promotion
    When user navigate to setup promotion option
    Then user should not see the claim settings in the left tab

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario Outline: Verify the Q&Q promotion is rendered on the platform <site> site
    Given Q&Q promotion is created
    When Q&Q promotion is published
    When Q&Q is configured with Menu
    Then Q&Q promotion should be rendered on the platform <site> site
Examples:
    | site |
    | Web  |
    | Mobile |

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario Outline: Verify user <present> in the Q&Q audience should have <access> the promotion
    Given user is <present> in the Q&Q audience
    When user is on the Q&Q promotion page
    Then user should <access> the promotion
Examples:
    | present       | access    |
    | present       | access    |
    | not present   | not access|

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user completes the Questions and awarded points are added to the promotion points in phoenix when the trigger is automatic
    Given user is on the Q&Q promotion page
    When user completes the questions
    Then points are added to the promotion points table
    Then user can able to see the allocated points in the measure logs

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user completes the Questions and awarded points are added to the promotion points in phoenix when the trigger is manual
    Given user is on the Q&Q promotion page
    When user completes the questions
    When user click on trigger promotion
    Then points are added to the promotion points table
    Then user can able to see the allocated points in the measure logs

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to view the question group which contains more than one question in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to view the question group which contains images in the questions in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to view the question group which contains images in the answers

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify question group which contains the timer is rendered in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify question group which contains the forward only option in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to see the last completed attempt in the question group in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify can able to submit the question group offline

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to see the answer is correct or not in both the web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can attempt the question in different timezone for the participant timezone question in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the hide attempt result option is working in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can preview the questions on submit in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the confirmation message on submit the question group in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can able to see the success, failed, attempt completion message in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify by changing the platform site language, the question group is rendered in the selected language if the question group is available in the selected language

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify by changing the platform site language, the question group is rendered in the default language if the question group is not available in the selected language

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can able to see the checkbox and radio button in the question group in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can able to see the question which is formatted as bold, italic, left, right and center aligned in the platform site in both web and mobile

@adminui @QandQ @Platformsite @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can move in the question group by using next and previous in the platform site in both web and mobile