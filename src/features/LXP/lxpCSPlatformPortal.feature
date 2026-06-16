Feature: LXP Channels Platform Portal

@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the learning dashboard widget
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @dashboard @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can only able to see the courses he has enrolled
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @courseenrollment @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant should not other courses apart from the enrolled courses
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @coursevisibility @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the number of courses completed out of enrolled courses
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @coursecompletion @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the total enrolled learning objects
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @totalenrolledLOs @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the learning objects completed out of total enrolled learning objects
@platformui @LXPCSPlatform @LXPCSPartnerPortal_01 @scenario @completedLOs @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the scroller functionality in the learning dashboard widget

@platformui @LXPCSPlatform @LXPCSPartnerPortal_02 @scenario @scrollerfunctionality @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the points earned by the participant through learning activities are displayed in the learning dashboard widget
@platformui @LXPCSPlatform @LXPCSPartnerPortal_02 @scenario @pointsearned @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the points are displyed as cummulative if the participant has earned points from multiple learning activities\

@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @cummulativepoints @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning status are displayed in the learning dashboard widget for each and every course enrolled by the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @learningstatus @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to resume the inprogressed courses by click on "Continue Learning" button in the learning dashboard widget
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @continuelearningbutton @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can be redirected to the respective course page when "Continue Learning" button is clicked
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @redirecttocoursepage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the course completion percentage for each and every course enrolled
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @coursecompletionpercentage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the course status as "Not Started" for the courses which are not yet started by the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @coursenotstartedstatus @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the course status as "In Progress" for the courses which are inprogressed by the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_03 @scenario @courseinprogressstatus @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the course status as "Completed" for the courses which are completed by the participant

@platformui @LXPCSPlatform @LXPCSPartnerPortal_04 @scenario @coursecompletedstatus @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the progress bar is displayed for each and every inprogressed course in the learning dashboard widget
@platformui @LXPCSPlatform @LXPCSPartnerPortal_04 @scenario @progressbardisplay @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the progress bar should reflect as percentage of course completed by the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_04 @scenario @progressbarpercentage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the progress bar should not be fully completed if participant has failed the quiz in the course
@platformui @LXPCSPlatform @LXPCSPartnerPortal_04 @scenario @progressbarquizfail @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the progress bar should be fully completed if participant has passed the quiz in the course

@platformui @LXPCSPlatform @LXPCSPartnerPortal_05 @scenario @progressbarquizpass @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant should be navigated to course details page in new tab when clicked on the course tile from widget
@platformui @LXPCSPlatform @LXPCSPartnerPortal_05 @scenario @coursetiledetailsnavigation @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to continue the learning when new tab is opened from the course tile in the widget

@platformui @LXPCSPlatform @LXPCSPartnerPortal_06 @scenario @coursetilecontinuenavigation @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the widget content in preferred language
@platformui @LXPCSPlatform @LXPCSPartnerPortal_06 @scenario @widgetpreferredlanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the widget content in default language if preferred language is not set
@platformui @LXPCSPlatform @LXPCSPartnerPortal_06 @scenario @widgetdefaultlanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the multiple laqnguages are uploaded in json from admin site so that participant can able to see the widget content in multiple languages

@platformui @LXPCSPlatform @LXPCSPartnerPortal_07 @scenario @widgetmultilanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant can able to see the widget displayed with date and time format as per his region preference
@platformui @LXPCSPlatform @LXPCSPartnerPortal_07 @scenario @widgetdatetimeformat @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the widgets are not displayed in UST time format if participant region is prefered

@platformui @LXPCSPlatform @LXPCSPartnerPortal_08 @scenario @widgetnotustformat @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page is displayed in preferred language of the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_08 @scenario @learningpagepreferredlanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page is displayed in default language if preferred language is not set by the participant
@platformui @LXPCSPlatform @LXPCSPartnerPortal_08 @scenario @learningpagedefaultlanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page and widget both are displayed in same language as per participant preference

@platformui @LXPCSPlatform @LXPCSPartnerPortal_09 @scenario @learningpagewidgetlanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify opening the learning page from the menu
@platformui @LXPCSPlatform @LXPCSPartnerPortal_09 @scenario @learningpagenavigation @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify there is no data lose when new tab is duplicated from learning page
@platformui @LXPCSPlatform @LXPCSPartnerPortal_09 @scenario @learningpagedatatabduplicate @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the participant course contenet should not start from the begining when new duplicate tab is opened from learning page

@platformui @LXPCSPlatform @LXPCSPartnerPortal_09 @scenario @learningpagecontinuetabduplicate @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page opens in a new tab from the widget should load in user preferred language
@platformui @LXPCSPlatform @LXPCSPartnerPortal_10 @scenario @learningpagewidgettablanguage @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page opened from widget in new tab should load with date and time format as per participant region preference
@platformui @LXPCSPlatform @LXPCSPartnerPortal_10 @scenario @learningpagewidgettabdatetimeformat @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the learning page opened from widget in new tab should not load in default language if participant region is prefered

##Reports are kept for clarification with Roshni, it is yet to complete after the user story are clarified