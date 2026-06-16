Feature: LXP Mobile

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the list of courses assigned to them in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that the 'My course' section is seeded by default in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the home screen
    Then The user should be able to see the 'My courses' section seeded by default on the home screen 
    
@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to access a course from the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user selects a course from the list of courses
    Then The user should be able to access the selected course and view its content

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the progress of each course in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the progress of each course displayed alongside the course title

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section updated with newly assigned courses in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When A new course is assigned to the user
    And The user navigates to the "My courses" section
    Then The user should be able to see the newly assigned course listed in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section sorted by recently accessed courses in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the courses sorted by recently accessed courses at the top of the list

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to continue the Learning from where they left off in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user selects a course they have previously accessed by clicking on 'Continue Learning' button
    Then The user should be able to continue the learning from where they left off in the selected course

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the course details in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the course details such as course title, description, course completion status, and certificate for each course listed in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section responsive across different mobile devices in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user accesses the app on different mobile devices (e.g., smartphone, tablet)
    Then The user should be able to see the 'My courses' section displayed correctly and responsively across different mobile devices

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section after app updates in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The app is updated to a new version
    And The user navigates to the home screen
    Then The user should be able to see the 'My courses' section displayed correctly after the app update


@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the logged in user is able to see the 'My courses' section in offline mode in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user switches the app to offline mode
    Then The user should be able to see the 'My courses' section with previously loaded course information in offline mode

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user is able to see the 'Certificate' option for completed courses in the 'My courses' section in LXP Mobile App (if certificate is available for the selected course)
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user has completed a course
    Then The user should be able to see the 'Certificate' option for the completed course in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user is able to download the certificate for completed courses from the 'My courses' section in LXP Mobile App
    When The user navigates to the "My courses" section
    And The user has completed a course
    And The user selects the 'Certificate' option for the completed course
    Then The user should be able to download the certificate for the completed course from the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user is able to download the certificate multiple times.
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user has completed a course
    And The user selects the 'Certificate' option for the completed course
    Then The user should be able to download the certificate for the completed course from the "My courses" section
    And The user should be able to download the certificate again if needed

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the error message that is shown when certificate download fails.
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user has completed a course
    And The user selects the 'Certificate' option for the completed course
    And The certificate fails to download
    Then The user should see an error message indicating the download failure

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user can download the course offline

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user can complete the LO offine

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that progress is getting updated in offline mode as the user completed the Learning Object

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user can take the Quiz/Assessment in offline mode

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify whether user can download the certificate from offline.

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user is able to get the certificate only when the user mets certain criteria i.e passing the assessment / quiz
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user has completed a course with an assessment / quiz
    And The user has met the passing criteria for the assessment / quiz
    Then The user should be able to get the certificate for the completed course from the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that user is not able to get the certificate if the user fails to meet certain criteria i.e passing the assessment / quiz
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    And The user has completed a course with an assessment / quiz
    And The user has failed to meet the passing criteria for the assessment / quiz
    Then The user should not be able to get the certificate when they click on Certificate icon.

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that the course that is available with a certificate shows a yellow color icon in the course card in the 'My courses' 
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see a yellow color certificate icon on the course card for courses that offer a certificate upon completion in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that for the courses which is not yet started by the user should have the button as 'Start Learning' in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the button as 'Start Learning' for the courses which is not yet started by the user in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that for the courses which is already started by the user should have the button as 'Continue Learning' in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the button as 'Continue Learning' for the courses which is already started by the user in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that for the courses which is completed by the user should have the button as 'Review course' in the 'My courses' section 
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see the button as 'Review course' for the courses which is completed by the user in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that course that is removed for the specific user is no longer visible in the 'My courses' section in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When A course is removed from the user's assigned courses
    And The user navigates to the "My courses" section
    Then The user should not be able to see the removed course listed in the "My courses" section

@mobile @lxp_Mobile @001mycourseswidget @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that the 'My courses' section displays a message when no courses are assigned to the user in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user has no courses assigned to them
    And The user navigates to the "My courses" section
    Then The user should be able to see a message indicating that no courses are available in the "My courses" section



@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that 'My courses' section displays courses of different learning object types (e.g., video, document, quiz) in LXP Mobile App
    Given The user is logged in to LXP Mobile App with valid "superadmin" credentials
    When The user navigates to the "My courses" section
    Then The user should be able to see courses of different learning object types (e.g., video, document, quiz) listed in the "My courses" section

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Ensure that the participant is able to access the Learning Content upon selecting a specific course from the 'My Courses' section.
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user clicks on a particular course in the "My courses" section
    Then The user should be able to see the Learning content section for the selected course

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Ensure that the user can view the full course description by clicking the 'Show more content' button when the description is lengthy.
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user navigates to a course with a lengthy description
    Then The user should be able to click the 'Show more content' button
    And The full course description should be displayed

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Collapse course description by clicking 'Show less content'
  Given the user is viewing a fully expanded course description
  When the user clicks on the 'Show less content' button
  Then the course description should collapse to show only the initial truncated portion
  And the 'Show more content' button should become visible
  And there should be no UI errors or content overlap

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Validate that every Learning Object within the course appears as expected and without errors.
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user navigates to a course with multiple Learning Objects
    Then The user should be able to see all Learning Objects listed
    And Ensure that every Learning Object presents the correct title, description, completion progress, and download option.
    And There should be no UI errors or content overlap

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify that completion percentage of each Learning Object is displayed correctly.
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user navigates to a course with multiple Learning Objects
    Then The user should be able to see the completion percentage for each Learning Object
    And The completion percentage should be displayed as a progress bar
    And There should be no UI errors or content overlap

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify whether user is able to access the 2nd Learning object, while the first learning object is in progress
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user starts the 1st Learning Object
    And The user attempts to access the 2nd Learning Object
    Then The user should be able to access the 2nd Learning Object without any issues
    And There should be no UI errors or content overlap

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify the error message displayed when the SCROM/XApi content failed to load
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user navigates to a course with SCORM/XAPI content
    And The content fails to load
    Then The user should see an error message indicating the content could not be loaded

@mobile @lxp_Mobile @002LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify whether user is able to complete the 2nd Learning object, while the first learning object is in progress.
    Given The user is logged in to LXP Mobile App with valid credentials
    When The user starts the 1st Learning Object
    And The user attempts to complete the 2nd Learning Object
    Then The user should be able to complete the 2nd Learning Object without any issues
    And There should be no UI errors or content overlap


@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display no courses available in All Courses tab when no courses assigned
    Given the user is on the "My Courses" page
    When the user selects the "All Courses" tab
    Then the message "No courses available" should be displayed
    And the description "You don't have any courses assigned yet. Please check back later." should be shown

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Both tabs are accessible and UI layout is correct
    Given the user is on the "My Courses" page
    When the user switches between the "Overview" and "All Courses" tabs
    Then the respective messages and placeholders should appear without any errors

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter and search controls are visible in All Courses tab even when no courses assigned
    Given the user is on the "My Courses" page
    When the user selects the "All Courses" tab
    Then the search bar and filter icon should be visible

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display correct learning progress summary in the Overview tab
    Given the user is on the "My Courses" page
    When the user views the "Overview" tab
    Then the total courses count should be displayed
    And the completed courses count should be displayed
    And the in-progress courses count should be displayed
    And the time spent should be visible
    And the certificates count should be visible

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display all assigned courses in the All Courses tab
    Given the user is on the "My Courses" page
    When the user navigates to the "All Courses" tab
    Then all assigned courses should be listed with their title and description
    And each course card should display the progress bar
    And a "Start Learning" button should be available for not started courses

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Start learning for a listed course
    Given the user is on the "All Courses" tab
    When the user clicks the "Start Learning" button for a course
    Then the learning module for the selected course should launch

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display correct progress status for course
    Given a course is in progress or completed
    When the user views the "All Courses" tab
    Then the progress bar should show the correct value
    And the button should indicate "Continue Learning" or "Completed" as appropriate

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Dashboard reflects changes after course progress update
    Given the user completes a course
    When the user returns to the "Overview" tab
    Then the completed count should increase
    And the in-progress count should decrease
    And the certificates count should update if a certificate is earned

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Dashboard reflects changes after course progress update - Offline
    Given the user completes a course while offline
    When the user returns to the "Overview" tab
    Then the completed count will not increase
    And User connects the device online
    Then User should be able to see the progress once the offline data is synced.   

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Progress and access updates after starting the 2nd learning object
    Given the user starts the 2nd learning object while the 1st is in progress
    When the user returns to the "Overview" tab
    Then the "In Progress" counter should increment
    And both objects should display appropriate progress on the "All Courses" tab

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Courses do not appear in All Courses tab despite being assigned
    Given courses are assigned to the user
    When the user views the "All Courses" tab
    Then the assigned courses should not be missing from the list

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: UI elements overlap or do not render correctly when switching tabs
    Given the user is on the "My Courses" page
    When the user quickly switches between "Overview" and "All Courses"
    Then all UI elements should render and no graphical glitches should occur

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Verify user is able to search for a particular course by using the search bar

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Verify the search results for a invalid course

@mobile @lxp_Mobile @003MycoursePage @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Verify user is able to filter the courses based on the following criteria:  All courses, Not started, In progress, Completed

# What is the order in which courses will be displayed in My Courses widget?  - doubt

# need input from dev regarding the character count from ehich we have - show more content
# need to check with Ruben, for implementing - Filter along with search - Ruben needs to confirm.


# How do we handle the scenario : User has downloaded the course content for offline access and proceeds with it, and the admin has removed the course from the catalog? What happens to the User? - Need to confirm with Roshni