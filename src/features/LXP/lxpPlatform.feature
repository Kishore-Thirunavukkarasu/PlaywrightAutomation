Feature: LXP Partner Portal

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Dashboard displays all key learning summary metrics
    When the Participant navigates to the dashboard
    Then the system should display:
      | Metric                       | Description                                             |
      | Total Courses Assigned       | Total number of courses currently assigned              |
      | Completed Courses            | Number of assigned courses marked as complete           |
      | In-Progress Courses          | Number of assigned courses started but not yet complete |
      | Total Time Spent on Learning | Aggregate time tracked across all LOs/courses           |
      | Certificates Earned          | Number of Certificates awarded upon completion          |

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Metrics reflect up-to-date learning data
    When the Participant completes a new course or earns a certificate
    Then the dashboard should update each metric in real time to reflect the changes

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Dashboard navigation available from main menu
    When the Participant logs in
    Then a direct link to "My Dashboard" should be visible in the main navigation/menu

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Drill down to detailed views from dashboard
    When the Participant clicks on a metric (eg Completed Courses)
    Then the system should display a list of corresponding entities (eg list of completed courses)

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display zero or appropriate messaging when no data
    Given the Participant is newly onboarded with no courses assigned/completed
    When they view the dashboard
    Then each metric should display "0" or an appropriate message such as "No Certificates Earned Yet"

  @platformui @LXPPartnerPortal @001MyCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Total time spent is calculated from tracked learning activity
    When a Participant spends time learning and the platform tracks activities
    Then "Total Time Spent on Learning" should sum all learning time across courses and LOs


  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display enrolled courses with key details
    When the Participant navigates to "My Courses" or equivalent section
    Then the system should show a list of all courses the Participant is currently enrolled in
    And for each course snapshot display:
      | Field              | Description                                                         |
      | Course Name        | The name/title of the course                                        |
      | Description        | Short description/overview of the course                            |
      | Promotions         | Promotion banners discount tags announcements or special highlights |
      | Progress Bar       | Visual indicator of completion progress for the course              |
      | Start Button       | A button to start/resume the course                                 |
      | Last Accessed Date | The most recent date the Participant accessed the course            |

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Start or resume a course from list view
    When the Participant clicks the "Start" button on a course snapshot
    Then the system should navigate them to the correct course content/module

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Progress Bar updates in real time
    When the Participant completes modules/learning objects within a course
    Then the progress bar for the course should update instantly or on page refresh

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show "New" indicator for courses not yet started
    When the Participant is enrolled in a course they have not accessed
    Then the course snapshot should show a “New” tag and no progress in the progress bar

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show promotions and announcements for eligible courses
    When a course is under promotion or has an announcement
    Then the snapshot should display banners/labels for the Participant to see

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display accurate last accessed date
    When the Participant resumes a course
    Then the "Last Accessed Date" for that course snapshot should update to the latest session

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Courses are sorted or filtered by relevant criteria
    When the Participant applies filters or sorts by course name or last accessed date
    Then the list should update accordingly

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: No enrolled courses display appropriate message
    Given the Participant is not enrolled in any course
    When they visit "My Courses"
    Then the system should display "You are not enrolled in any courses yet" or similar

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Session expires while viewing or starting course
    When the Participant tries to view courses or start a new session and the session has expired
    Then the system should redirect to login

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Start button does not work due to technical issue
    When the Participant clicks "Start" but the course does not launch properly
    Then the system should show an error "Unable to launch course Please try again later"

  @platformui @LXPPartnerPortal @002ListofCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Missing or incomplete course data in snapshot
    When a course snapshot is missing Description or Last Accessed Date
    Then the system should show "N/A" or a placeholder value
    And the list layout should remain consistent


  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Filter courses by course name
    When the Participant enters a course name or partial name in the "Course Name" filter
    Then only the courses whose names match or contain the input should be displayed

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Filter courses by status
    When the Participant selects a status filter (eg Completed In Progress Not Started)
    Then only the courses with the selected status should be shown

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Filter courses by skill category
    When the Participant selects one or more skill categories from the filter dropdown
    Then the system should display only the courses tagged with those skill categories

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Filter courses by certificate availability
    When the Participant selects the filter for "Certificate Available"
    Then only courses that award certificates should be shown

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Combine multiple filters to narrow down results
    When the Participant applies more than one filter (eg skill category + status)
    Then only courses matching all selected criteria should be listed

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Sort courses by course name
    When the Participant selects "Sort by Name" (ascending or descending)
    Then courses should be sorted alphabetically as per participants choice

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Sort courses by status
    When the Participant sorts by status
    Then courses should be grouped and ordered by their completion or progress state (eg Completed first)

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Sort courses by last accessed date
    When the Participant chooses "Sort by Last Accessed"
    Then the most recently accessed courses should appear at the top of the list

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Clear filters and sort options
    When the Participant clicks "Clear Filters" or resets sort
    Then all enrolled courses should be displayed with default sort order

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: No matching courses display message
    When the filters and sort options result in no matching courses
    Then the system should display "No courses found matching your criteria"

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Attempt to filter by unsupported skill category
    When the Participant selects a skill category that has no associated courses
    Then the system should display "No courses found for selected category"

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Invalid input in name filter
    When the Participant enters unsupported characters or an excessively long string in the name filter
    Then the system should ignore the input or show "Invalid filter value"

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Sorting or filtering options result in empty course list
    When the filters and sorts exclude all courses
    Then the participant should see "No results found" and the full list should be restored when filters are cleared

  @platformui @LXPPartnerPortal @003FilterCourses @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Session expires during filter or sort action
    When the Participant filters or sorts courses and the session expires
    Then the system should redirect to login
    And return to the original filter/sort page if possible after re-authentication



  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display core course information
    When the Participant selects a course from their enrolled course list
    Then the course details page should show:
      | Detail             | Description                                                  |
      | Course Name        | The official title of the course                             |
      | Course Description | Brief overview or summary of the course                      |
      | Learning Path      | The name and overview of the associated learning path if any |
      | Promotions         | Any active banners discounts or announcements                |

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show overall course progress
    When the Participant opens the course details page
    Then a visible progress bar or percentage indicator should show overall completion status

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: List completed Learning Objects (LOs)
    When the Participant explores the course details
    Then the system should display a list or count of completed LOs for that course

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: List incomplete Learning Objects
    When viewing detailed information for a course with remaining LOs
    Then incomplete or pending LOs should be displayed and easily distinguishable

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Identify required actions for course completion
    When some LOs or activities are pending
    Then the system should highlight or summarize what is left to complete the course (eg “2 videos and 1 quiz remaining”)

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Course details accessible from dashboard and list view
    When a Participant clicks a course name or details icon in dashboard or course list
    Then the system should open the comprehensive course details page

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Details update in real time as LOs are completed
    When the Participant finishes a LO
    Then the course details view should immediately reflect updated progress and LO status

  # 05
  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display all LOs for the selected course with correct details
    When the Participant views the detailed page of a course
    Then the system should list all LOs included in the course in order
    And for each LO display:
      | Field                | Description                                      |
      | LO Title             | Name of the learning object                      |
      | Completion Indicator | Visual cue showing if the LO is complete or not  |
      | Start Button         | Visible for any uncompleted LO to begin activity |

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show completed and uncompleted LOs distinctly
    When the list of LOs is displayed
    Then completed LOs should have a filled/checkmark indicator and disabled Start button
    And uncompleted LOs should have an empty or inactive indicator and an enabled Start button

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Click Start button for uncompleted LO
    When the Participant clicks the Start button next to an uncompleted LO
    Then the system should launch the corresponding LO content for the Participant

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Completion indicator updates after finishing LO
    When the Participant completes an LO activity
    Then its visual completion indicator should immediately update to reflect completion
    And the Start button should become disabled or hidden

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: List allows sequential or direct navigation
    When the Participant clicks on any uncompleted LO in the list
    Then navigation should occur regardless of whether it is the next or a later LO (unless prerequisites exist)

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Course page view accessible at any time
    When the Participant completes or leaves an LO activity
    Then they can return to the LO list and see updated status for all LOs

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Completion indicator does not update after finishing LO
    When the Participant completes an LO but the completion indicator fails to refresh
    Then the system should display a warning "Progress may not be up to date Please refresh the page"

  @platformui @LXPPartnerPortal @004ViewCourseDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Start button fails to launch LO
    When the Participant clicks the Start button and the LO does not open as expected
    Then show "Unable to launch this Learning Object Please try again"


  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show passing requirement in quiz instructions
    When the Participant starts a quiz LO
    Then the system should display a message or instruction: "You must pass this quiz to mark it as complete"

  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Indicate passing criteria on the course details or LO list view
    When the Participant views the course details or the list of LOs
    Then the system should display the passing criteria (eg "Requires 70% or above to complete")

  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Notify after quiz attempt if not passed
    When the Participant submits the quiz and does not achieve a passing score
    Then the system should clearly notify: "Quiz not yet complete You must pass to fulfill course requirements"

  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Confirm completion on passing quiz
    When the Participant submits the quiz and achieves the passing score or higher
    Then the system should display a confirmation: "Quiz completed—passing criteria met"

  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Tooltips or help text provide explanation
    When the Participant hovers over the quiz LO or a "completion info" icon
    Then a tooltip or help text should explain: "Completion is only granted on passing this quiz"

  @platformui @LXPPartnerPortal @006QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display completion rule before starting quiz
    When the Participant clicks to begin the quiz
    Then the start screen should include a summary of the passing requirement


  @platformui @LXPPartnerPortal @001History @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display completed activities with most recent first
    When the Participant navigates to the "Completed Activities" or "Learning History" section
    Then the system should display a list of all completed courses and learning paths
    And the list should be sorted in descending order by completion date (most recent first)

  @platformui @LXPPartnerPortal @001History @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Each activity entry includes key completion details
    When the completed activities list is displayed
    Then for each entry the following details should be shown:
      | Field                 | Description                                                   |
      | Name                  | Course or Learning Path title                                 |
      | Activity Type         | Indicates whether its a course or learning path               |
      | Completion Date       | Date the activity was completed                               |
      | Certificate Earned    | Shows "Yes" if a certificate was issued                       |
      | View Certificate Link | A button or link to view/download certificate (if applicable) |

  @platformui @LXPPartnerPortal @001History @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Activities display visually distinct completion status
    When the list of completed activities is displayed
    Then completed entries should have a visual indicator (eg checkmark badge or colored label)

  @platformui @LXPPartnerPortal @001History @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: View details of completed activity
    When the Participant clicks on an activitys name
    Then the system should navigate to a summary/detail view for that course or learning path (including LOs time spent and final status)

  @platformui @LXPPartnerPortal @001History @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: "No completed activities" state handled
    Given the Participant has not yet completed any activities
    When they navigate to the completed activities section
    Then the system should display a message such as "No learning activities completed yet"


  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Completed items are displayed as snapshots
    When the Participant navigates to the Completed section of My Courses
    Then the system should display each completed course or learning path as a distinct snapshot/card

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Each snapshot provides all required details
    When a completed snapshot is displayed
    Then it should show:
      | Detail               | Description                                                   |
      | Name                 | Hyperlinked to the actual course or learning path detail page |
      | Completion Date      | The date the activity was completed                           |
      | Certificate Download | Button or link to download/view the certificate if available  |

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Click name hyperlink to access detail page
    When the Participant clicks the course or learning path name in the snapshot
    Then the system should navigate to the respective detail/overview page

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Download certificate for eligible completions
    When the Participant clicks the Download Certificate button/link for a completed item
    Then the system should provide a PDF or equivalent certificate file for download or viewing

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Certificate download/link not shown for items without certificate
    When a completed course or learning path does not provide a certificate
    Then the snapshot should not display the Download Certificate option

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Snapshots include both standalone courses and learning paths
    When both types of items are completed
    Then all are presented in a single cohesive list or view

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Snapshots sorted by most recent completion date
    When the Participant views the completed items
    Then the list should be ordered with the most recent completions at the top

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Certificate is unavailable or generation error occurs
    When the Participant clicks Download Certificate but no file can be found/generated
    Then the system should display "Certificate unavailable Please contact support"

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Certificate download fails due to system or browser error
    When the Participant clicks Download Certificate and a system/browser error occurs
    Then the download should be prevented and an appropriate error message shown

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: No completed items to display
    Given the Participant has not completed any courses or learning paths
    When they access the Completed section
    Then the system should display "No completed activities yet" or similar message

  @platformui @LXPPartnerPortal @002LearningpathDetails @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Snapshot missing required detail (eg missing date)
    When a completed item fails to display a Name Completion Date or Certificate Download correctly
    Then the system should show "N/A" or a placeholder and allow the Participant to still access details if possible


  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Show only learning path completion in history
    When the Participant navigates to the Completed section or learning history
    Then the system should display the completed learning path as a single entry
    And should not show the individual courses that comprise the learning path

  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Learning path entry includes comprehensive details
    When a completed learning path is displayed
    Then it should show:
      | Detail          | Description                                         |
      | Name            | Learning path title (hyperlinked to details)        |
      | Type            | Clearly marked as "Learning Path"                   |
      | Completion Date | Date the entire learning path was completed         |
      | Certificate     | Download option if learning path awards certificate |

  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Individual courses within learning path are not duplicated
    When the Participant completes courses as part of a learning path
    Then those individual courses should not appear separately in the completed history
    And only the parent learning path should be listed

  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Standalone courses still appear individually
    When the Participant completes courses that are not part of any learning path
    Then those standalone courses should appear individually in the completed history

  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Mixed completion history shows both types correctly
    When the Participant has completed both standalone courses and learning paths
    Then the history should show:

  @platformui @LXPPartnerPortal @003AvoidDuplicateDisplay @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Access learning path details to see constituent courses
    When the Participant clicks on a completed learning path name
    Then the system should navigate to the learning path detail page
    And show all courses within that learning path and their completion status

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display all defined Skills in a centralized view
    When the Participant navigates to the "Skills" or "Skill Catalog" section
    Then the system should display a list of all defined Skills available on the platform

  # @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  #   Scenario: Skill list includes essential details for exploration
  #     When the Skills list is shown
  #     Then each Skill entry should display:
  #       | Field         | Description                                               |
  #       | Skill Name    | Official name of the Skill                               |
  #       | Brief Overview| Description or summary of what the Skill covers          |
  #       | Related Courses/Paths | Count or links to associated learning opportunities|
  #       | Explore Link  | Button/link to view more about the Skill and its offerings|

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Skills are organized or searchable
    When the Participant is viewing the Skill list
    Then they should be able to:

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Explore learning opportunities for a selected Skill
    When the Participant clicks "Explore" or a Skill name
    Then the system should show available Courses Learning Paths and Resources relevant to that Skill area

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display recommendations for selected Skill
    When the Participant selects a Skill from the Skills catalog
    Then the system should display a list of recommended Courses and Learning Paths associated with that Skill
    And the recommendations should be generated using the platforms defined algorithm

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Recommendation entry includes key information
    When recommended Courses/Learning Paths are shown for a Skill
    Then each recommendation should display:
      | Field          | Description                                                            |
      | Name           | Course or Learning Path title                                          |
      | Type           | "Course" or "Learning Path" badge/tag                                  |
      | Short Overview | Description or summary of the offering                                 |
      | Match Reason   | Why it is recommended (eg "matches your goals popular for this skill") |
      | Action Button  | Button to view details enroll or save/bookmark                         |

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Personalized recommendations based on Participants learning history
    When the recommendation algorithm evaluates previous completions interests or goals
    Then the displayed recommendations for each Skill should reflect the Participants learning journey

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Recommendations are updated in real time
    When the Participant enrolls in or completes a recommended Course or Learning Path
    Then the system should update the Skills recommendation list to remove/add alternatives as appropriate

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Multiple recommended Courses/Paths per Skill
    When a Skill has several relevant learning opportunities
    Then the system should present multiple recommendations ordered by strength of match (eg relevance difficulty popularity)

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: No recommendations available for a Skill
    When a Skill has no Courses or Learning Paths that match the recommendation algorithm
    Then the system should display "No recommendations available for this Skill at this time"

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Recommendations accessible from Skill detail and dashboard
    When the Participant views a Skills detail page or dashboard widget
    Then recommended Courses/Learning Paths should appear contextually for that Skill

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Recommendation includes already completed Courses/Paths
    When the recommendation list includes items the Participant has already completed
    Then those items should be marked as "Already completed"

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Save a recommended Course and auto-enroll
    When the Participant clicks the "Save" or "Enroll" button on a recommended Course
    Then the system should enroll the Participant in that Course
    And the Course should immediately appear under My Courses dashboard

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Save a recommended Learning Path and auto-enroll
    When the Participant clicks the "Save" or "Enroll" button on a recommended Learning Path
    Then the system should enroll the Participant in that Learning Path
    And the Learning Path should appear under My Learning Paths section

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Confirmation of enrollment and easy access
    When the Participant completes the save/enroll action
    Then a confirmation message should appear ("You have been enrolled")
    And the Participant should have a direct link to access the enrolled Course or Learning Path

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Duplicate recommendations are handled gracefully
    When the Participant tries to save/enroll in a Course or Path already present in My Courses
    Then the system should notify "Already enrolled" and prevent duplicate entries

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Remove/un-enroll from saved recommendations
    When the Participant decides to un-enroll from a previously saved Course or Path
    Then it should be removed from My Courses or My Learning Paths sections

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Enrolled items persist across sessions
    When the Participant logs out and logs back in
    Then all saved/enrolled Courses and Learning Paths should still appear in their personal dashboards

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Saved recommendations update in real time
    When a Course or Path is saved/enrolled via recommendations
    Then it should reflect instantly in My Courses or My Learning Paths without page reload

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Enrollment exceeds course or path limit
    When there is a platform-imposed limit on the number of enrollments
    And the Participant tries to exceed the limit by saving more recommendations
    Then the system should display "Enrollment limit reached Please complete or remove a Course/Path before enrolling in new recommendations"

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Recommendation is withdrawn after save action
    When a recommended Course or Path is withdrawn (eg unpublished archived) after the save/enroll is clicked
    Then do not display in My Courses or My Learning Paths and notify "This course/path is no longer available"

  @platformui @LXPPartnerPortal @004SkillList @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Skill list search/filter produces no results
    When a search or filter is applied that does not match any Skill
    Then display "No skills found matching your criteria"


  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Learning page automatically displays in preferred language
    When the Participant navigates to any learning page
    Then the system should detect and use the Participants preferred language for all content labels and navigation elements

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Changing profile language immediately updates learning page language
    When the Participant changes their preferred language in profile settings
    And revisits or refreshes a learning page
    Then content interface text and navigation should update to the new language

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Language toggle available for manual override
    When the Participant is viewing a learning page
    Then an option should be present to toggle and select a different available language if desired

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Content and interface are fully localized
    When the learning page is shown in the selected language
    Then all text instructions buttons menus and error messages should be displayed in the appropriate language
    And any multimedia (eg subtitles) should match the selected language if supported

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Fallback to default language if translation missing
    When content is not available in the Participants preferred language
    Then the system should display the page in the default platform or organizational language
    And clearly indicate that translation is not yet available

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Learning page localization persists across sessions and devices
    When the Participant accesses learning pages from multiple devices or browsers
    Then their language preference should consistently apply to all learning content

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Preferred language reset after session expiration
    When the Participant logs out or session expires and logs in again
    Then their preferred language should remain saved and applied on future visits

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Learning page displays in default country language if preferred language is unset
    When the Participant navigates to a learning page
    And has no preferred language set
    Then the system should display all content and navigation elements in the countrys default language as configured in CS Admin Platform

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Changing country updates default language
    When the Participants country info is updated in profile or system records
    And no preferred language is set
    Then learning page content and interface should adapt to the newly configured default country language

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Indicate which language is being displayed by default
    When the Participant accesses a learning page in the fallback/default country language
    Then the system should display "Showing content in [language] (country default)" or another clear indicator

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Option to select preferred language overrides default
    When the Participant selects a preferred language in profile/settings
    Then all learning pages should display in the chosen language instead of the country default

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin can set/update country default language mapping
    When the CS Admin Platform updates default language mappings for countries
    Then new Participants or those without preference should see updated language on next login

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display LXP page in users preferred supported language
    When the Participant sets their preferred language to a supported one (eg Spanish)
    And accesses the standalone LXP page
    Then the entire page including content navigation and interface should display in Spanish

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Language selection/toggle is available on the LXP page
    When the Participant visits the standalone LXP page
    Then an option to select or switch between any of the 12 supported languages should be clearly visible and usable

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Save selected language for subsequent visits
    When the Participant chooses a supported language on the LXP page
    And returns in a new session
    Then the LXP page should automatically display in the selected language

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: All content and UI elements are fully localized
    When the LXP page is displayed in any of the 12 supported languages
    Then all menus labels buttons help text and learning content should be shown in the selected language

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Fallback to default/platform language if unsupported language is chosen
    When the Participant tries to select a language outside of the 12 supported
    Then the system should display content in the default language and notify "Selected language is not supported—showing default language"

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Content persists in preferred language across devices
    When the Participant logs in on a different device/browser
    Then the language preference should remain and LXP page should be shown in that supported language

  @platformui @LXPPartnerPortal @005Internationalization @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Language switching does not require page reload
    When the Participant switches between supported languages using the selector
    Then the page content and UI should update instantly without a full reload
