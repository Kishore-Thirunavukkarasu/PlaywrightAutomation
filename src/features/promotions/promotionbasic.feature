Feature: Promotion Basic Details

    # created by  = Ruthrakkanth
    # reviewed by = Kadarkarai
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/filemanager/productandactivity/,

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

    @adminui @promotion @PRM001CreateNewPromotion @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the promotions page without promotions
        When User click on "Promotions"
        Then "Promotions" page is displayed
        Then No promotions are displayed
        Then User is able to see the Get Started button

    @adminui @promotion @PRM001CreateNewPromotion @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is navigated to 'Select type of Promotion' screen on Clicking Get Started button
        When User is on Promotion Page
        When User click on "Get Started" button
        Then User is navigated to "Select type of Promotion" screen
        Then User is able to see the list of Promotion types

    @adminui @promotion @PRM001CreateNewPromotion @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to see the list of promotion type on Clicking Get Started button
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        Then User is able to see the list of Promotion types : "Single/Multiple Measures", Multiple Measures, Direct Point Deposit, Game, Quiz, Goal Quest

    @adminui @promotion @PRM001CreateNewPromotion @navigation @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Single measure Promotion type
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        Then User is navigated to "Select type of Promotion" page
        When User hits continue button present in "Single/Multiple Measures"
        Then User is navigated to "Create Single/Multiple Measures Promotion" page

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where the user enters invalid input in Create Single/Multiple Measures Promotion page
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When User enters invalid input data with the fields Promotion Name, Description
        When User enters data with all the other fields
        Then User clicks on "Next" Button in Basic details from promotion page
        Then "Error" message shown up

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to proceed to the next screen without entering the mandatory data
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When User enters input data with non-mandatory fields
        When User skips entering data in Mandatory field
        Then User clicks on "Next" Button in Basic details from promotion page
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to enter valid input data with Basic details & proceed to the next screen
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When User enters input data with all the fields
        Then User clicks on "Next" Button in Basic details from promotion page
        Then User is navigated to "Audience" screen

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Create promotion with mandatory fields
        When User is on Promotion Page
        When User click on "New Promotion" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When User enters input data with the mandatory fields in "Basic details" tab from promotion page
        Then User clicks on "Next" Button in "Basic details" tab from promotion page
        When User enters input data with the mandatory fields in "Audience" tab from promotion page
        Then User clicks on "Next" Button in "Audience" tab from promotion page
        Then "Successful" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Languages in the Promotion page
        When User is on Promotion Page
        When user click on "Create promotion" from the promotion page
        Then User is on the "Create Promotion" page
        When user click on "Multiple Language" link
        Then Language overlay is displayed
        Then Program languages are displayed in the overlay

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when user clicks on Multiple Language
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When user click on "Multiple Language" link
        Then User is taken to "Add Display text" screen
        Then All Languages that are configured under programs should be displayed in the screen
        When User enters Display name for each Language
        When User click on "Add" button in Add Display text screen
        Then "Successful" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @smoke @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user tries to create a promotion without mandatory basic detail
        When user is on Promotion Page
        When user click on "Get Started" from the Promotion page
        When user hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotion
        When user enters input data with all the fields except mandatory fields
        Then user clicks on "Next" Button in Basic details from promotion page
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Promotion can be scheduled with start date and end date from the calendar
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionWhen User selects valid start date in Basic details tab
        When User selects valid end date in Basic details tab
        When User fills in data with mandatory fields in Basic detail tab
        Then User click on "Next" button
        When User fills in data with mandatory fields in Audience tab
        Then User click on "Next" button
        Then User should be able to create a new promotion

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Promotion start date cannot be a past date
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionWhen Verify user selects past date as a start date
        Then User should be allowed to select past date in the calendar

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Promotion can be scheduled with start date and end date by entering the values in the text box
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionWhen User enters valid start date in Basic details tab
        When User enters valid end date in Basic details tab
        Then User click on "Next" button
        Then "Successful" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Promotion end date cannot be a past date
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionThen Verify user selects past date as a end date
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Promotion start date cannot be greater than end date
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionWhen User selects a start date greater than end date
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Promotion end date cannot be less than start date
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then user navigates to create "single/multiple" measure promotionThen User selects a end date less than start date
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: user can navigate to next page without start date and end date
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the mandatory fields in Basic details tab
        When User skips entering data for Start and End date
        Then User click on "Next" button in Basic details tab
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: user can navigate to next page without adding media
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then User enters data with all the mandatory fields
        When User skips adding picture for Mobile and Web
        Then User click on Next button in Basic details tab
        Then "Error" message shown up

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: user can navigate to Audience Page after entering all mandatory fields in Basic details
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        Then User enters data with all the mandatory fields
        Then User click on "Next" button in Basic details tab
        Then User is navigated to "Audience" tab

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: User click on Cancel after adding all the data in "Create Single/Multiple Measures Promotion" screen
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the mandatory fields in Basic details tab
        When User click on "Next" button in Basic details tab
        When User enters data with all the mandatory fields in Audience tab
        Then User click on "Cancel" button in Audience tab
        Then User is navigated to the "Promotions" screen

    #Audience page
    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the Audience screen
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button in basic details tab
        Then User is navigated to "Audience" tab
        Then Audience page contains two tabs : Eligible Audience & reporting audience

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Validate the Audience screen with no values
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button in basic details screen
        Then User is navigated to "Audience" tab
        Then Eligible Audience tab is selected by default
        Then "No Audience has been added" text should be displayed

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Eligible Audience tab is selected and user can able to click on Add Audience button
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button in basic details screen
        Then User is navigated to "Audience" tab
        Then Eligible Audience tab is selected by default
        When User click on 'Add Audience' button under Eligible Audience
        Then "Add Audience" overlay should be displayed

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Add Eligible Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects a Audience group from the list
        When User click on "Add Selected" button
        Then Selected Audience group should be displayed in the Eligible Audience screen

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Add Multiple Audience group under Eligible Audience
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects more than one Audience group from the list
        When User click on "Add Selected" button
        Then Selected Audience group should be displayed in the Eligible Audience screen

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario where user clicks on Cancel button after selecting the Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects more than one Audience group from the list
        When User click on "Cancel" button
        Then Selected Audience group should not be added

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to search for a particular Audience group in Add Audience overlay
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User enters the search keyword in the search bar
        Then All audience groups that match the search term should be displayed on the screen.

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether Audience group & the total users count is displayed in Eligible Audience screen
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects more than one Audience group
        When User click on "Add Selected" button
        Then All the Selected Audience group should be displayed in Eligible Audience section
        Then Total Users count should be displayed

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario:  Verify the eligible audience has multiple audience group and the total users count does not include the common users
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects more than one Audience group
        When User click on "Add Selected" button
        Then All the Selected Audience group should be displayed in Eligible Audience section
        Then Verify the Total users count does not include the common users within the multiple audience group

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify create promotion with more than one audience and the list shows the unique users where few users are present in both the audience.

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario:  Verify Total User count is displayed correctly when user tries to add a New Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When There is a Audience group present in Eligible Audience
        Then User count should be equal to the count of the Audience group
        When User adds two more Audience group in Eligible Audience
        When Added Audience groups should be listed in Eligible Audience page
        Then Verify that the Total users count does not include the common users within the multiple audience group

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to delete the Audience group displayed in Eligible audience
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        When User selects more than one Audience group
        When User click on "Add Selected" button
        Then All the Selected Audience group should be displayed in the Audience screen under Eligible Audience
        When User click on Delete icon against the particular audience group
        Then Selected audience group should get removed.

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the fields present in Audience screen
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        When User click on "Add Audience" button under Eligible Audience
        Then "Add Audience" overlay should be displayed
        Then User is able to see two tabs : Eligible Audience , Reporting Audience
        Then Eligible Audience tab is displayed by default
        Then List of Audience group & total Users count should be displayed under Eligible Audience
        Then Exclude Audiences section should be present.

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether user list is getting displayed when clicked on Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on any Audience group under Eligible Audience Say,'Full time service Managers'
        Then User is taken to the 'Full Time Service Managers' screen where the list of users tagged under the particular audience group is displayed
        Then Name of the User, System Id, Phone No., Email Id columns are present

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to search for a valid audience in Audience list page
        When user is on promotion page
        When user click on "Create promotion" from the promotion page
        When user hits continue button present in "Single/Multiple Measures"
        When user enters data with all the fields in basic details screen
        When user click on "Next" button
        Then user is navigated to "Audience" tab
        When user click on "Add Audience button"
        Then Audience list overlay is displayed
        When user search for a particular audience group
        Then Audience group matching the search keyword should be listed in the screen

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to search for a invalid audience in audience list page
        When user is on promotion page
        When user click on "Create promotion" from the promotion page
        When user hits continue button present in "Single/Multiple Measures"
        When user enters data with all the fields in basic details screen
        When user click on "Next" button
        Then user is navigated to "Audience" tab
        When user click on "Add Audience button"
        Then Audience list overlay is displayed
        When user search for a audience group which is not present
        Then Search result should display a Blank screen.

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to search for a valid user in Audience group page
        When User is on Promotion Page
        When User click on "Create promotion" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Add Audience button"
        Then Audience list overlay is displayed
        When user selects the audience in the overlay
        When user click on "Add Selected" button
        Then the audience will be added to the promotion
        When User clicks on any selected Audience group
        Then user list overlay is displayed for that audience
        When User search for a particular user who is not part of the audience group
        Then Users matching the search keyword should be listed in the screen

    @adminui @promotion @PRM001CreateNewPromotion @system @search @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to search for a invalid user in Audience group page
        When User is on Promotion Page
        When User click on "Create promotion" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Add Audience button"
        Then Audience list overlay is displayed
        When user selects the audience in the overlay
        When user click on "Add Selected" button
        Then the audience will be added to the promotion
        When User clicks on any selected Audience group
        Then user list overlay is displayed for that audience
        When User search for a user who is not part of the audience group
        Then Search result should display a Blank screen.


        #   Filter functionality in Audience group page is removed as per the discussion with Roshni - GIT ticket - #136

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify filter functionality in Audience group page
    #     When User is on Promotion Page
    #     When User click on "Get Started" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User clicks on any Audience group in Eligible audience Say,'Full time service Managers'
    #     Then Particular Audience group page is displayed.
    #     When User click on filter icon in audience group page
    #     Then "Add Filter" overlay is displayed.

    # @adminui @promotionbasic @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify filter can be used to sort user by Group Type
    #     When User is on Promotion Page
    #     When User click on "Get Started" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     When User click on filter icon in audience group page
    #     Then "Add Filter" overlay is displayed.
    #     When User selects the Group type from Add Filter overlay
    #     When User click on "Apply" button
    #     Then Only the matching user should get displayed in the screen

    # @adminui @promotionbasic @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user is able to filter user based on username
    #     When User is on Promotion Page
    #     When User click on "Get Started" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User clicks on any Audience group in Eligible audience Say,'Full time service Managers'
    #     Then Particular Audience group page is displayed.
    #     When User click on filter icon in audience group page
    #     Then "Add Filter" overlay is displayed.
    #     When User enters the user name in the Search Username field
    #     When User click on "Apply" button
    #     Then Only the particular user should be displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user is able to filter user based on email id
    #      When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     When User enters the email id of the user in the Email Id field
    #     When User click on "Apply" button
    #     Then Only the user which matches the entered email should get displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user is able to filter user based on mobile number
    #     When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     When User enters the mobile number of the user in the Mobile number field
    #     When User click on "Apply" button
    #     Then Only the matching user should get displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user is able to filter user based on Organisation name
    #     When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     When User enters the Organisation of the user in the Organisation field
    #     When User click on "Apply" button
    #     Then Only the matching user should get displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify whether user is able to filter user based on Audience type
    #     When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     When User selects the Audience type from Add Filter overlay
    #     When User click on "Apply" button
    #     Then Only the matching user should get displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    # Scenario: Verify user is able to create a filter with all the criteria such as : User name, emailId, mobile number, Organisation and audience type
    #     When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     Then "Add Filter" overlay is displayed.
    #     When User enters valid data with all the input fields present in the Add Filter screen
    #     When User click on "Apply" button
    #     Then Only the user matching all the above criteria should get displayed in the screen

    # @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    # Scenario: Verify the scenario when user enters invalid data in the Filter screen
    #     When User is on Promotion Page
    #     When User click on "Create promotion" from the Promotion page
    #     When User hits continue button present in "Single/Multiple Measures"
    #     When User enters data with all the fields in basic details screen
    #     When User click on "Next" button
    #     Then User is navigated to "Audience" tab
    #     When User click on "Add Audience button"
    #     Then Audience list overlay is displayed
    #     When user selects the audience in the overlay
    #     When user click on "Add Selected" button
    #     Then the audience will be added to the promotion
    #     When User clicks on any selected Audience group
    #     Then user list overlay is displayed for that audience
    #     Then "Add Filter" overlay is displayed.
    #     When User enters in-valid input data with all the input fields present in the Add Filter screen
    #     When User click on "Apply" button
    #     Then Search result should return a blank page

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to download the list of users under Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User clicks on any Audience group in Eligible audience Say,'Full time service Managers'
        Then Particular Audience group page is displayed.
        When User click on "Download" button
        Then User list should get downloaded

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to select Exclude Users
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        Then User will be displayed with Users and Organisation tabs
        Then Users tab will be selected by default

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Exclude an user
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When search for a User using Search bar
        Then selected user should be excluded from the Eligible Audience

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Exclude based on Organisation search
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When User search for a Organisation using Search bar
        Then User should be able to select the Organisation to exclude from

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when admin clicks on 'Add users' in Exclude Users/Organisation
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When User click on "Add Users" button
        Then "Exclude Users" overlay should display
        When Admin is able to select single/multiple users from the list
        When User click on "Add Selected" button
        Then the selected Users should be displayed in Exclude Users/Organisation
        When User click on "Submit" button
        Then User should be taken to the Reporting Audience screen

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when admin Excludes an user and click on Cancel
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User click on "Exclude Users" Checkbox
        When User click on "Add Users" button
        Then "Exclude Users" overlay should display
        When Admin is able to select single/multiple users from the list
        When User click on "Cancel" button
        Then User should be re-directed to the Audience page

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify organization can be searched and added in the Exclude list

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Excluded organization can be deleted

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Excluded user can be deleted

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Excluded Audience organization are removed from the Eligible Audience list

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Excluded users are removed from the Eligible Audience list

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify selected single user are added in the Excluded users list

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify selected multiple users are added in the Excluded users list

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify selected organization are added in the Exclude list
        When User click on Promotions
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When There is existing audience group under Eligible Audience
        When User click on "Exclude Users" Checkbox
        When User click on "Add Organizations" button in Organisation tab
        Then "Exclude Organisations" overlay should display
        When Admin is able to select single/multiple Organisations from the list
        When User click on "Add Selected" button
        Then the selected Organisations should be excluded
        When User click on "Submit" button
        Then User should be taken to the Eligible Audience screen

    @adminui @promotionbasic @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when admin exludes a Organisation and click on Cancel
        When User click on Promotions
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When There is existing audience group under Eligible Audience
        When User click on "Exclude Users" Checkbox
        When User click on "Add Organizations" button in Organisation tab
        Then "Exclude Organisations" overlay should display
        When Admin is able to select single/multiple Organisations from the list
        When User click on "Cancel" button
        Then User should be taken to the Eligible Audience screen

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add Reporting audience - Single Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User navigates to "Reporting audience" tab
        When User click on "Add Audience" button
        Then "Add Audience" page is displayed
        When User selects a Audience group from the list
        When User click on "Add Selected" button
        Then Particular Audience group should get added in Reporting Audience

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add Reporting audience - Multiple Audience group
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User navigates to "Reporting audience" tab
        When User click on "Add Audience" button
        Then "Add Audience" page is displayed
        When User selects multiple Audience group from the list
        When User click on "Add Selected" button
        Then All the selected Audience group should get added in Reporting Audience

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to delete the Audience group added in reporting Audience
        When User is on Promotion Page
        When User click on "Get Started" from the Promotion page
        When User hits continue button present in "Single/Multiple Measures"
        When User enters data with all the fields in basic details screen
        When User click on "Next" button
        Then User is navigated to "Audience" tab
        When User navigates to "Reporting audience" tab
        When There is existing Audience group under Reporting audience
        When User click on "Delete" button
        Then Particular Audience group should be removed


    # Promotion List  & Update Promotion
    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the same user cannot be a part of the Audience group in both Eligible Audience & Reporting Audience.

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verfy whether Eligible Audience and Reporting Audience cannot be the same

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the Inactive user are being included in the Audience group of Eligible Audience & Reporting Audience

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether Exclude User section is not displayed under Reporting Audience

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion with user overlapping in elgible and reporting audience group

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion by excluding all users from the eligible audience group

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion by eligible audience group and all users are inactive in the eligible audience group

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion by excluding a organization and verify the primary users in that organization are excluded from the promotion

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify creating a promotion by excluding a organization and verify the non primary users in that organization are excluded from the promotion

    @adminui @promotion @PRM001CreateNewPromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: verify creating a promotio nby excluding a organization and verify the non primary user who are part of more than one organization are excluded from the promotion

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify all the audience group that are created should be shown up to the admin

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the admin can see the list of created promotions

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the promotion list page should contain the promotion name, type, Audience, Start and End date, Status and Action

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the list of promotion is having the filter option to search for a promotion from list

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the admin can filter the promotion based on Name

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the admin can filter the promotion based on Promotion type

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the Pagination on Promotion list screen

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can search for a promotion from the list

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify user can filter the list of promotion based on promotion type

    @adminui @promotion @PRM002ListPromotions @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario:Verify user can see the list of promotion type in the promotion type dropdowns

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the promotion badge in list contains the name, audience, start date and end date

    @adminui @promotion @PRM002ListPromotions @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the promotion list page contains the count of promotions

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin can update an existing Promotion

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin cannot remove audience group from the promotion once it is published

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify admin cannot update the Start date once it is published

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin can extend the end date in the update flow

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin cannot reduce end date in the update flow

    @adminui @promotion @PRM003UpdatePromotion @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the admin can update the promotion by adding new Audience

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether the admin can replace the Mobile media during update

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify whether admin can replace Web Media during the update

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when admin clicks on Cancel button after making an update

    #RBAC
    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify Super Admin user who is having all the access can navigate to the Promotion creation page

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify Tenant user who is having the Create access for a particular tenant can navigate to the Promotion creation page

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify Tenant user who is having the Read access cannot navigate to the Promotion creation page

    @adminui @promotion @PRM003UpdatePromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify Tenant user who is having the Read access Cannot Edit/update the Promotion


    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify admin not adding up the bill code in promotion basic create

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify admin not adding up the bill code in promotion basic update

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify the tag is not added in the promotion basic create

    @adminui @promotion @PRM001CreateNewPromotion @system @special @functional @positive @reviewed @tenantadmin @updated @notautomated
    Scenario: Verify the tag is not added in the promotion basic update