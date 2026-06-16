Feature: LXP Admin

  # User story 1 needs to be removed or updated we dont have tenant create setup in LXP
  # Tag and category  tenant specific  not program specific

  Scenario: All the courses and LO should be tenant specific
    

  @adminui @lxp @002DataIsolation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Tenant user accesses only own courses
    Given a user belongs to Tenant A
    When the user opens the course catalog
    Then the user should see only courses associated with Tenant A

  @adminui @lxp @002DataIsolation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Tenant admin manages only own learning objects
    Given an admin belongs to Tenant B
    When the admin accesses the learning objects library
    Then the admin should view and manage only learning objects within Tenant B
 
  @adminui @lxp @002DataIsolation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Associated data for users is tenantspecific
    Given a user has learning progress within Tenant C
    When the user checks their learning analytics
    Then only data related to courses in Tenant C are available

    Scenario: Verify User should not have access to other tenant Learning Categories unless he have the permission for that
    Scenario: Verify the Learning Categories are Program Specific and user should only see categories related to their program


  @adminui @lxp @003Learningcategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin creates a new learning category
    Given the admin is logged in to the LXP platform
    When the admin navigates to the categories section
    And the admin enters a valid name and description for the new category
    And the admin saves the new category
    Then the new category appears in the list of learning categories

  @adminui @lxp @003Learningcategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin edits an existing learning category
    Given the admin is logged in to the LXP platform
    When the admin navigates to the categories section
    And the admin selects an existing category to edit
    And the admin updates the category name and description
    And the admin saves the changes
    Then the updated category details are reflected in the list

  @adminui @lxp @003Learningcategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin deletes a learning category
    Given the admin is logged in to the LXP platform
    When the admin navigates to the categories section
    And the admin selects an existing category to delete
    And the admin confirms the deletion
    Then the category is removed from the list of learning categories
    And any courses associated with that category are updated accordingl

  @adminui @lxp @003Learningcategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin views existing learning categories
    Given categories exist in the system
    When the admin navigates to the categories section
    Then a list of all current learning categories is displayed
  
  @adminui @lxp @003Learningcategory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to create a category with an existing name
    Given a learning category called "Soft Skills" exists
    When the admin attempts to create another category named "Soft Skills"
    Then an error message about duplicate category names is displayed
    And the category is not created

  @adminui @lxp @003Learningcategory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to create a category without a name
    Given the admin is on the category creation form
    When the admin submits the form with no category name entered
    Then an error message that the name is required is displayed
    And the category is not created

  @adminui @lxp @003Learningcategory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario:Verify whether Admin is able to delete a category that is linked to active courses
    Given the category "Safety" is associated with active courses
    When the admin tries to delete the "Safety" category
    Then a warning message is shown that prevents deletion
    And the category remains in the list


  @adminui @lxp @004MultilingualName @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin assigns a unique internal code to a category
    Given the admin is in the category management section
    When the admin creates a new category with code "CS101"
    And provides display names in English Spanish and German
    Then the category "CS101" is saved with its multilingual display names

  @adminui @lxp @004MultilingualName @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Display names appear in the user's selected language
    Given a category "Leadership" has display names in multiple languages
    And a user selects "Spanish" as their preferred language
    When the user views the list of categories
    Then the user sees [translate:Liderazgo] as the category nam

  @adminui @lxp @004MultilingualName @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin edits display names for an existing category
    Given a category "Data Science" exists
    When the admin updates the French display name to [translate:Science des données]
    Then the updated French name should appear properly

  @adminui @lxp @004MultilingualName @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: User selects a language which has no display name available
    Given a category has display names only in English and Spanish
    And the user selects "German" as their language
    When the user views the category list
    Then the system should show the default name in English
  
  # doubt  where do we have the option to assign the code?
  # remove the below 2 scenario if code is autogenerated and not editable

  @adminui @lxp @005updatecategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin changes display name attempts code update at the same time
    Given a category with code "SAFETY1" exists
    When the admin edits the display name and tries to change the code field
    Then the system blocks the code change allowing only the display name update
    And the category code remains "SAFETY1"

    Scenario: Admin updates display name code stays unchanged
    Given a category exists with code "HR001" and display name "Human Resources"
    When the admin changes the display name to "People Operations"
    Then the category code remains "HR001"
    And the display name is now "People Operations"
    And all linked courses and data remain associated with "HR001"

  @adminui @lxp @005updatecategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates display name
    Given a category exists with code "PROG001" and display name "Programming"
    When the admin changes the display name to "Software Development"
    Then the category's code remains "PROG001"
    And the display name is updated to "Software Development"
    And all course and data associations remain linked to "PROG001"

  @adminui @lxp @005updatecategory @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates multilingual display name
    Given a category exists with French display name [translate:Programmation] and code "PROG001"
    When the admin updates the French display name to [translate:Développement logiciel]
    Then users viewing in French see [translate:Développement logiciel]
    And the code "PROG001" stays the same

  @adminui @lxp @005updatecategory @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to update display name to an empty value
    Given a category with code "DATA101" exists
    When the admin clears the display name field and saves
    Then the system displays a required field error
    And the display name remains unchanged

  
  @adminui @lxp @006LearningTags @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin creates a new learning tag
    Given the admin is in LXP screen
    When the admin adds a tag with the name "Project Management"
    Then the tag "Project Management" appears in the list of tags

  @adminui @lxp @006LearningTags @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin views all learning tags
    Given multiple tags have been created
    When the admin navigates to the tag screen
    Then the admin sees a list of all existing tags

  @adminui @lxp @006LearningTags @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates a learning tag
    Given a tag named "Soft Skills" exists
    When the admin changes its name to "Communication Skills"
    Then the tag name in the list updates to "Communication Skills"

  @adminui @lxp @006LearningTags @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
   Scenario: Admin deletes a learning tag
    Given a tag named "Obsolete" exists
    When the admin deletes the tag "Obsolete"
    Then "Obsolete" is removed from the list of tags

  @adminui @lxp @006LearningTags @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to create a duplicate tag
    Given a tag named "Leadership" exists
    When the admin attempts to add another tag named "Leadership"
    Then the system prevents the creation and displays a duplicate tag error

  @adminui @lxp @006LearningTags @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
   Scenario: Admin creates a tag with an empty name
    Given the admin is creating a new tag
    When the admin clicks save without entering a tag name
    Then an error message is displayed that the name is required
    And no new tag is created

  @adminui @lxp @006LearningTags @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates a tag to an existing tag name
    Given tags "Teamwork" and "Collaboration" exist
    When the admin renames "Teamwork" to "Collaboration"
    Then the system shows an error about duplicate names
    And the tag name is not updated

  @adminui @lxp @006LearningTags @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
   Scenario: Admin deletes a tag that is assigned to active courses
    Given the tag "Cloud Computing" is assigned to courses
    When the admin tries to delete the "Cloud Computing" tag
    Then the system shows a warning or prevents the deletion
    And the tag remains available


  @adminui @lxp @007TagsinMultilingual @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin creates a tag with a unique internal code and multilingual names
    Given the admin is in the tag screen
    When the admin creates a new tag with code "PM001"
    And assigns display names "Project Management" (English) [translate:Gestión de Proyectos] (Spanish) and [translate:Projektmanagement] (German)
    Then the tag "PM001" is saved with all provided display names

  @adminui @lxp @007TagsinMultilingual @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: User views tag display name in selected language
    Given a tag "PM001" has display names in English Spanish and German
    And the user selects German as their preferred language
    When the user browses tags
    Then the user sees [translate:Projektmanagement] as the tag name

  @adminui @lxp @007TagsinMultilingual @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates multilingual display names for a tag
    Given tag "PM002" exists with an English name "Agile"
    When the admin adds French display name [translate:Agile] and Italian display name [translate:Agile]
    Then users in French and Italian contexts see the respective display name

  @adminui @lxp @007TagsinMultilingual @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: User selects a language for which no display name exists
    Given tag "SALE001" has display names only in English and Spanish
    When the user selects French as their preferred language
    Then the system shows the English display name as fallback


  @adminui @lxp @008UpdateTag @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates a tag's display name code remains unchanged
    Given a tag exists with code "DATA001" and display name "Data Science"
    When the admin changes the display name to "Data Analytics"
    Then the tag code stays "DATA001"
    And the display name updates to "Data Analytics"
    And all course associations linked to "DATA001" remain intact

  @adminui @lxp @008UpdateTag @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates multilingual display name only
    Given a tag "TEAM01" exists with Spanish display name [translate:Trabajo en equipo]
    When the admin updates the Spanish display name to [translate:Colaboración]
    Then users viewing in Spanish see [translate:Colaboración]
    And the code "TEAM01" is unchanged

  @adminui @lxp @008UpdateTag @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to clear display name field
    Given a tag with code "SEC001" exists
    When the admin deletes the display name and saves
    Then the system shows an error for required display name
    And the display name is not removed

    #Questions: What happens if an user is halfway through the learning object and when admin make any changes in it

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin can create a new Learning Object with content type as <contentType>
    When I enter a valid course name in the search box
    When User "View" the course
    When Create a new version from course
    When User search for the version
    When User "View" the version from course
    When User create a new Learning Object with content type as <contentType>
        Examples:
            | contentType |
            | SCORM       |
            | xAPI        |

   @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Admin can create a new Learning Object with accessibility features as <accessibilityFeature>
        Examples:
            | accessibilityFeature |
            | Captions             |
            | Transcripts          |

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Successfully create a learning object with mandatory fields
  When admin enter "Test Title" as Title
  And admin enter "Test Description" as Description
  And admin select "SCORM" as Content Type
  And admin click Save
  Then the learning object should be created successfully

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin creates learning object with mandatory and optional fields
    Given the admin is on the Create Learning Object page
    When the admin provides a title description content type
    And adds a transcript thumbnail duration and captions
    And uploads a ZIP file for the learning object
    And the admin clicks Save
    Then the learning object is created successfully with all provided details

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin views the list of learning objects
    Given learning objects have been created
    When the admin navigates to the Learning Objects library
    Then a list of all current learning objects is displayed

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates an existing learning object
    Given a learning object named "Project Leadership" exists
    When the admin updates the title to "Advanced Project Leadership" and changes the content
    Then the updated learning object appears with the new title and content

  @adminui @lxp @009LearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin deletes a learning object
    Given a learning object "Legacy Module" exists
    When the admin deletes "Legacy Module"
    Then "Legacy Module" no longer appears in the Learning Objects list

  @adminui @lxp @009LearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin tries to create a duplicate learning object
    Given a learning object titled "Onboarding 101" already exists
    When the admin tries to add another learning object titled "Onboarding 101"
    Then a duplicate name error appears and the new object is not saved

  @adminui @lxp @009LearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin attempts to delete a learning object tied to an active course
    Given "Compliance Basics" is used in current courses
    When the admin tries to delete "Compliance Basics"
    Then the system blocks deletion and displays a warning

  @adminui @lxp @009LearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Admin updates a learning object with invalid file format
    Given a learning object titled "Customer Service Guide" exists
    When the admin uploads unsupported file types as content
    Then the system displays a file format error and does not save the update


@adminui @lxp @010ViewLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display all Learning Objects with key details
    When the Admin navigates to the "Learning Objects" page
    Then the system should display a list of all Learning Objects
    And each Learning Object should show Title Content Type Status and Last Updated Date

@adminui @lxp @010ViewLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Ensure list is sorted by Last Updated Date by default
    When the Admin views the list of Learning Objects
    Then the Learning Objects should be sorted in descending order of Last Updated Date

@adminui @lxp @010ViewLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify pagination for a large number of Learning Objects
    Given there are more Learning Objects than can fit on one page
    When the Admin views the list
    Then pagination controls should be visible
    And the Admin should be able to navigate to the next page

@adminui @lxp @010ViewLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify display when only one Learning Object exists
    Given only one Learning Object is available
    When the Admin views the list
    Then the system should display that single Learning Object with all key details

@adminui @lxp @010ViewLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify display of different statuses
    Given Learning Objects have various statuses (eg Draft Published Archived)
    When the Admin views the list
    Then the correct status should be displayed for each Learning Object



@adminui @lxp @011ActionsonLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Preview a Learning Object
    When the Admin clicks the "Preview" icon for a specific Learning Object
    Then the system should open a preview modal or page
    And the preview should display the complete content details of that Learning Object

@adminui @lxp @011ActionsonLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Edit a Learning Object
    When the Admin clicks the "Edit" icon for a specific Learning Object
    Then the system should navigate to the Learning Object edit form
    And the form fields should be prepopulated with the existing data

@adminui @lxp @011ActionsonLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Successfully update a Learning Object
    Given the Admin is on the Learning Object edit form
    When the Admin modifies valid details and clicks "Save"
    Then the system should save the changes successfully
    And the updated information should be reflected in the list view

@adminui @lxp @011ActionsonLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Delete a Learning Object with confirmation
    When the Admin clicks the "Delete" icon for a Learning Object
    Then the system should display a confirmation prompt
    When the Admin confirms the deletion
    Then the Learning Object should be removed from the list
    And the system should display a success message like "Learning Object deleted successfully"

@adminui @lxp @011ActionsonLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Cancel a deletion
    When the Admin clicks the "Delete" icon for a Learning Object
    Then the system should display a confirmation prompt
    When the Admin cancels the deletion
    Then the Learning Object should remain in the list view



@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter by Title
    When the Admin enters a Learning Object title in the Title filter field
    And clicks the "Apply Filter" button
    Then the system should display only those Learning Objects whose titles match or contain the entered text

@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter by Description
    When the Admin enters a keyword in the Description filter field
    And clicks the "Apply Filter" button
    Then the system should display Learning Objects whose descriptions contain that keyword

@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter by Content Type
    When the Admin selects a specific Content Type (eg Video Document) from the dropdown
    And clicks "Apply Filter"
    Then the system should display only Learning Objects of that selected Content Type

@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter by Status
    When the Admin selects a Status (eg Published Draft Archived)
    And clicks "Apply Filter"
    Then only Learning Objects with the chosen status should be displayed

@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Combine multiple filters
    When the Admin filters by Title and Status together
    And clicks "Apply Filter"
    Then the system should display Learning Objects that match both filters

@adminui @lxp @012FilterLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Clear filters
    When the Admin clicks the "Clear Filters" button
    Then all filter criteria should reset
    And the complete list of Learning Objects should be displayed again

@adminui @lxp @012FilterLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No Learning Objects match the filter criteria
    When the Admin applies filters that do not match any Learning Objects
    Then the system should display an empty list
    And show a message "No results found"

@adminui @lxp @012FilterLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
 Scenario: Invalid or unsupported filter value
    When the Admin enters invalid characters in any of the filter field
    And clicks "Apply Filter"
    Then the system should show a validation message "Invalid input" 

@adminui @lxp @012FilterLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Network error while filtering
    When the Admin applies a filter
    And the server fails to respond
    Then the system should display an error message "Unable to retrieve filtered results Please try again later"


@adminui @lxp @013CreateLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Successfully create a new Learning Object with all valid details
    When the Admin enters a valid Title Content Type Source Description Language Status Estimated Duration and Version
    And clicks the "Save" button
    Then the system should create the new Learning Object successfully
    And display a confirmation message "Learning Object created successfully"
    And the new Learning Object should appear in the list view

@adminui @lxp @013CreateLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify mandatory fields / Validate required fields when creating Learning Object
    When the Admin opens the "Create Learning Object" form
    Then the fields Title Content Type and Status should be marked as mandatory

@adminui @lxp @013CreateLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Validate data entry formats
    When the Admin enters valid values in all fields
    Then the system should accept:
      | Field              | Format Example            |
      | Estimated Duration | 45 minutes                |
      | Version            | 10 or v23               |
      | Language           | English Spanish etc    |

@adminui @lxp @013CreateLearningObject @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Create Learning Object with optional fields left blank
    When the Admin fills only mandatory fields and leaves Description Source and Estimated Duration blank
    And clicks "Save"
    Then the system should still create the Learning Object successfully
    And optional fields should remain empty by default

@adminui @lxp @013CreateLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to create a Learning Object with missing mandatory fields
    When the Admin clicks "Save" without entering a Title or Content Type
    Then the system should display validation messages for missing fields
    And prevent saving until all mandatory fields are filled

@adminui @lxp @013CreateLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Duplicate Learning Object title
    Given a Learning Object already exists with the same Title
    When the Admin tries to create another with that Title
    Then the system should display an error message "Title already exists Please choose a different title"

@adminui @lxp @013CreateLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Invalid input format for Estimated Duration
    When the Admin enters an invalid duration value (eg "thirty minutes" as free text)
    Then the system should display an error message "Invalid format for Estimated Duration"

@adminui @lxp @013CreateLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Network or server error during creation
    When the Admin fills all valid fields and clicks "Save"
    And the server fails to process the request
    Then the system should display "Unable to create Learning Object Please try again later"
    And retain the entered data in the form

@adminui @lxp @013CreateLearningObject @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Create Learning Object with version information
    When the Admin enters a valid Title Content Type and Version (eg "10")
    And clicks "Save"
    Then Admin creates the Learning Object with the specified version
    And system should display "version 10 created successfully"


@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload a SCORM package successfully
    When the Admin selects Content Type as "SCORM"
    And uploads a valid ZIP file containing SCORM content
    Then the system should validate and extract the package successfully
    And display a message "SCORM package uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload an xAPI package successfully
    When the Admin selects Content Type as "xAPI"
    And uploads a valid ZIP file containing xAPI statements and manifest
    Then the system should validate the xAPI structure
    And display "xAPI package uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload a video file
    When the Admin selects Content Type as "Video"
    And uploads a valid video file (eg mp4 mov)
    Then the system should accept the file
    And display a message "Video uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload a document file
    When the Admin selects Content Type as "Document"
    And uploads a valid file type (pdf docx pptx)
    Then the system should store the document
    And display "Document uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload an audio file
    When the Admin selects Content Type as "Audio"
    And uploads a valid audio file (mp3 wav)
    Then the system should successfully upload the file
    And display "Audio uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload an image file
    When the Admin selects Content Type as "Image"
    And uploads a valid image file (jpg png)
    Then the system should display a success message
    And generate a preview thumbnail

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Add a web link as a Learning Object
    When the Admin selects Content Type as "Link"
    And enters a valid URL (eg https://examplecom)
    Then the system should validate the URL format
    And display "Link added successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload an assessment file
    When the Admin selects Content Type as "Assessment"
    And uploads a valid assessment package (eg QTI)
    Then the system should validate the assessment structure
    And display "Assessment uploaded successfully"

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Upload unsupported file type
    When the Admin selects Content Type as "Video"
    And uploads an unsupported file (exe)
    Then the system should display an error message "Unsupported file format Please upload a valid video type"

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Upload file exceeding size limit
    When the Admin uploads a file larger than the allowed limit
    Then the system should display "File size exceeds the allowed limit"

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Search Learning Objects by keyword

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: View detailed metadata for Learning Object

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Create Learning Object with Assessment content

# What is the max allowed size?
# Scenario: Invalid or missing manifest in SCORM or xAPI package
#     When the Admin uploads a ZIP package missing a manifest file
#     Then the system should reject the upload
#     And display "Invalid package format Manifest not found"

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Invalid or broken URL for link type
    When the Admin enters an invalid or incomplete URL (eg "htp://example")
    Then the system should display "Invalid URL format"

@adminui @lxp @014MultipleContentType @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Duplicate upload attempt
    Given a Learning Object with the same file already exists
    When the Admin tries to upload the same file again
    Then the system should warn "A Learning Object with this file already exists"


@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display all courses in the list view
    When the Admin navigates to the "Courses" page
    Then the system should display a list of all available courses
    And each course should show Name Author Assigned Audiences and Last Updated Date

@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
 Scenario: Verify courses are sorted by Last Updated Date
    When the Admin views the list of courses
    Then the list should be sorted in descending order based on Last Updated Date
  
# what are the available sorting types?

@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify pagination for large course lists
    Given the system contains more courses than can be displayed on one page
    When the Admin views the course list
    Then pagination controls should appear
    And the Admin should be able to navigate to additional pages

@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify single course in list view
    Given only one course exists
    When the Admin views the list
    Then the system should display that single course with all details populated

@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify Assigned Audiences are displayed correctly
    Given each course has one or more assigned audiences
    When the Admin views the list
    Then the correct audience names should appear alongside each course

@adminui @lxp @015Managecourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Search or filter courses by Name
    When the Admin enters a specific course name in the search bar
    Then the system should display only the matching course(s)
 
@adminui @lxp @015Managecourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Refresh course list after update
    Given a courses details have been updated
    When the Admin refreshes the course list
    Then the updated information should be reflected immediately

@adminui @lxp @015Managecourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No courses available
    Given there are no courses in the system
    When the Admin navigates to the "Courses" page
    Then the system should display a message "No courses found"
    And the list view should appear empty


@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter courses by Title
    When the Admin enters a course title in the Title filter field
    And clicks "Apply Filter"
    Then the system should display only the courses whose titles match or contain the entered text

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter courses by Description
    When the Admin enters a keyword in the Description filter field
    And clicks "Apply Filter"
    Then the system should display only courses whose descriptions contain that keyword

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter courses by Status
    When the Admin selects a course Status (eg Published Draft Archived)
    And clicks "Apply Filter"
    Then the system should display only the courses with the selected Status

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter courses by Category
    When the Admin selects one or more Categories from the category dropdown
    And clicks "Apply Filter"
    Then the system should display only the courses belonging to those selected Categories

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Filter courses by Tags
    When the Admin selects one or more Tags associated with courses
    And clicks "Apply Filter"
    Then the system should display only the courses having those Tags

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Combine multiple filters
    When the Admin filters by Title Status and Category at the same time
    And clicks "Apply Filter"
    Then the system should display only courses matching all the selected filter criteria

@adminui @lxp @016Filtercourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Clear filters
    When the Admin clicks "Clear Filters"
    Then all selected filter options and text fields should reset
    And the complete list of courses should be displayed again

@adminui @lxp @016Filtercourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No courses match the applied filters
    When the Admin applies filters that do not match any courses
    Then the system should display an empty state message "No courses found"
    And hide any previous course results
  
@adminui @lxp @016Filtercourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Clear filter does not reset properly
    When the Admin clicks "Clear Filters"
    And the system fails to reload the complete course list
    Then an error message should appear "Unable to reset filters Please refresh the page"


@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Preview a course
    When the Admin clicks the "Preview" icon on a specific course
    Then the system should open a preview window or modal
    And display the full course details and structure in readonly mode

@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Edit a course
    When the Admin clicks the "Edit" icon on a specific course
    Then the system should navigate to the "Edit Course" form
    And all fields should be prepopulated with the current course data

@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Successfully update course details
    Given the Admin is on the Edit Course page
    When the Admin modifies valid details and clicks "Save"
    Then the system should save the changes successfully
    And display "Course updated successfully"
    And the updated information should reflect in the list view

@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Duplicate a course
    When the Admin clicks the "Duplicate" icon for a specific course
    Then the system should create a copy of that course
    And the duplicated course should appear in the list with a modified name (eg “_Copy” or “(1)”)
    And the system should display a message "Course duplicated successfully"

@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Archive a course
    When the Admin clicks the "Archive" icon on a course
    Then the system should show a confirmation dialog
    When the Admin confirms the action
    Then the course should be marked as "Archived"
    And the system should display "Course archived successfully"

@adminui @lxp @017Actionsoncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Cancel archive action
    When the Admin clicks the "Archive" icon
    And cancels the confirmation prompt
    Then the course should remain active in the list view

@adminui @lxp @017Actionsoncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Delete a course with active enrollments
    Given the course has active user enrollments
    When the Admin clicks the "Delete" icon for that course
    Then the system should prevent deletion
    And display a warning message "Cannot delete course with active enrollments"

@adminui @lxp @017Actionsoncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to edit a deleted or inaccessible course
    Given a course was deleted by another Admin
    When the Admin tries to edit it from the list
    Then the system should display "Course not found" or "This course is no longer available"
    And remove it from the list

@adminui @lxp @017Actionsoncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Duplicate a course that already exists with the same name
    Given a duplicate course name conflict occurs
    When the Admin duplicates a course
    Then the system should automatically append a unique suffix (eg “_1” “_copy”)
    And display a message "Course name adjusted to maintain uniqueness"

@adminui @lxp @017Actionsoncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated 
Scenario: Session expired during edit or archive action
    Given the Admin session has expired
    When the Admin clicks "Edit" or "Archive"
    Then the system should redirect to the login page
    And display "Session expired Please log in again"


@adminui @lxp @018Createnewcourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated 
  Scenario: Create a new course with invalid data
    Given the Admin is on the Create Course page
    When the Admin submits the form with invalid data
    Then the system should display error messages for the invalid fields
    And the course should not be created

@adminui @lxp @018Createnewcourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated 
 Scenario: Successfully create a new course with all valid fields
    When the Admin enters valid values for Name Description Unique Code Estimated Duration Language Author Visibility Learning Objectives Categories and Tags
    And clicks "Save"
    Then the system should create the course successfully
    And display a confirmation message "Course created successfully"
    And the new course should appear in the course list view

@adminui @lxp @018Createnewcourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated 
  Scenario: Verify mandatory fields for course creation
    When the Admin opens the "Create Course" form
    Then the fields Name Unique Code and Visibility should be marked mandatory

@adminui @lxp @018Createnewcourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated 
  Scenario: Create a course with required fields only
    When the Admin fills only the mandatory fields
    And leaves Description Estimated Duration Language Author Learning Objectives Categories and Tags blank
    And clicks "Save"
    Then the system should successfully create the course
    And optional fields should remain empty

@adminui @lxp @018Createnewcourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated 
  Scenario: Validate input formats for course metadata
    Given the Admin is on the "Create Course" form
    When the Admin enters valid data
    Then the system should accept:
      | Field              | Example Value                    |
      | Name               | Introduction to Python           |
      | Unique Code        | PY001                           |
      | Estimated Duration | 3 hours                           |
      | Language           | English                          |
      | Author             | John Smith                       |
      | Visibility         | Public                           |
      | Learning Objectives| Understand basic Python syntax    |
      | Categories         | Programming                      |
      | Tags               | Python Beginner Coding          |

@adminui @lxp @018Createnewcourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated 
Scenario: Attempt to create a course with missing mandatory fields
    When the Admin clicks "Save" without entering Name or Unique Code
    Then the system should display validation messages for missing required fields
    And prevent form submission

@adminui @lxp @018Createnewcourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated 
  Scenario: Duplicate Unique Code
    Given a course already exists with Unique Code "PY001"
    When the Admin tries to create another course with the same Unique Code
    Then the system should display an error message "Unique Code already exists Please use a different value"

@adminui @lxp @018Createnewcourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Exceeding character limit in Description
    When the Admin enters a Description exceeding 1000 characters
    Then the system should prevent saving
    And display a message "Description exceeds maximum allowed length"


@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Assign a single course to a single audience group
    When the Admin selects a course from the list
    And selects one audience group
    And clicks "Assign"
    Then the system should assign the course to the selected group
    And display "Course assigned successfully"
    And all members of that audience group should see the course listed in "My Courses"

@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Assign a single course to multiple audience groups
    When the Admin selects a course and multiple audience groups
    And clicks "Assign"
    Then the course should be assigned to all selected groups
    And all group members should see the course in "My Courses"

@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Assign multiple courses to a single audience group
    When the Admin selects multiple courses and a single audience group
    And clicks "Assign"
    Then all selected courses should be assigned to the group
    And all group members should see the new courses in "My Courses"

@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Update assignments by removing a course from a group
    Given a course is already assigned to an audience group
    When the Admin unassigns the course from that group
    Then the course should no longer be visible in "My Courses" for group members

@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Verify realtime update for participants
    When the Admin assigns a course to an audience group
    And a user from that group logs into the platform
    Then the new course should automatically appear in the "My Courses" section

@adminui @lxp @019Assigncourse @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Assign a course to a newly created audience group
    Given the Admin has just created a new audience group
    When the Admin assigns an existing course to this group
    Then the assignment should succeed
    And all members of the new group should see the course in "My Courses"

@adminui @lxp @019Assigncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt assignment with no audience group selected
    When the Admin selects a course but does not select any audience group
    And clicks "Assign"
    Then the system should display "Please select at least one audience group"

@adminui @lxp @019Assigncourse @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt assignment with no course selected
    When the Admin selects an audience group but no course
    And clicks "Assign"
    Then the system should display "Please select at least one course"



@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Set enrollment date at publication for existing audience participants
    When the Admin sets the course status to "Published"
    Then all participants who are members of the courses audience group(s) before publication
    #Should have the course publication date recorded as their course enrollment date

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display correct enrollment date to participants
    Given the course has been published
    When a participant views the course in "My Courses"
    Then the enrollment date displayed should match the course publication date

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Update enrollment date on future republishing
    Given the course was unpublished and then republished
    When the Admin republishes the course
    Then the system should update the enrollment date for all current audience members to the new publication date

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No audience assigned to course on publication
    When the Admin publishes a course not assigned to any audience
    Then the system should not create enrollment records

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Invalid course status transition
    When the Admin tries to publish a course already in "Published" status
    Then the system should display "Course already published"
    And should not update existing enrollment dates

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: New user is added to dynamic audience via upload after course publication
    When an Admin uploads a new user who qualifies for the courses dynamic audience
    Then the user should see the course in "My Courses"
    And the enrollment date should be set to the date they were added to the audience group

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: New user selfregisters and matches dynamic audience criteria after course publication
    When a new participant selfregisters on the platform
    And their attributes match those required by the course's audience rules
    Then the course should appear in "My Courses" for the participant
    And their enrollment date for the course should be the same as the date their registration is approved

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
 Scenario: Existing participants attribute change moves them into the course audience after publication
    Given a participant exists on the platform but does not belong to the courses audience group
    When the participants job role/tier/language is updated and this qualifies them for the courses audience
    Then the course should be added to their "My Courses"
    And their enrollment date should be the date the qualifying attribute was changed

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Participants added to several relevant audiences after publication
    When multiple participants are added to the course audience by different mechanisms (upload attribute update selfregistration)
    Then each participants enrollment date should reflect their respective audience join date

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: User is already in audience when course is published
    When a user is part of the course audience before publication
    Then their enrollment date should remain as the course publication date (not the attribute update date)
  
@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: User removed and then readded to the audience after publication
    When a participant is removed from and then reassigned to the course audience group postpublication
    Then the new enrollment date for the course should be the date they were readded

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: User added to audience but no courses assigned
    When a participant joins a dynamic audience but no active/published courses are assigned to that audience
    Then "My Courses" should show no new courses
    And no enrollment date should be set for any course

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Set termination date when attribute change removes participant from audience
    Given a participant is currently in the course audience and enrolled in the course
    When the participant's job role/tier/language is updated such that they no longer qualify for the audience
    Then the course should be removed from their "My Courses"
    And a course termination date should be set to the date their audience membership ended

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Termination date set when participant is manually removed from audience group
    Given a participant is enrolled in a course via audience group assignment
    When the Admin manually removes the participant from the audience group
    Then the system should remove the course from "My Courses" for that participant
    And set the course termination date to the removal date

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Termination date visible in participant's course history
    Given a participant lost audience membership for a course
    When the participant or Admin views the participant's course history
    Then the course termination date should be displayed and match the date of audience removal

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Multiple participants lose eligibility simultaneously
    When the Admin updates the eligibility criteria for an audience
    And several participants no longer qualify
    Then all affected participants should have course termination dates set to the date their membership ended

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to terminate course for participant not enrolled
    Given a participant was never part of the course audience
    When the Admin tries to terminate their enrollment
    Then the system should display "Participant is not enrolled in this course"
    And no termination date should be set

@adminui @lxp @020ParticipantCourseEligibility @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Restore access after ineligibility and termination
    When a participant regains eligibility for an audience after termination
    Then the course should reappear in "My Courses"
    And a new enrollment date should be set
    And the previous termination date should be retained in course history


@adminui @lxp @021LanguageSpecificLO @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Specify language during course creation
    When the Admin fills out the "Create Course" form
    And selects a language (eg English) from the Language dropdown
    Then the system should save the course with the specified language metadata

@adminui @lxp @021LanguageSpecificLO @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Add a Learning Object in the selected language to the course
    Given the course language is set to "English"
    When the Admin adds a Learning Object (LO) in English to the course
    Then the LO should be associated with the course
    And the system should validate that the LO matches the course language

@adminui @lxp @021LanguageSpecificLO @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Add multiple LOs in the selected course language
    Given the course language is set (eg Spanish)
    When the Admin adds several LOs in Spanish
    Then all LOs should be associated with the course
    And stored with the correct language metadata

@adminui @lxp @021LanguageSpecificLO @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Target course to dynamic audience group based on language preference
    Given a course exists with language set to "Spanish"
    And a dynamic audience group is configured for participants preferring Spanish
    When the course is assigned to that audience
    Then only participants whose preferred language is Spanish should see the course in "My Courses"

@adminui @lxp @021LanguageSpecificLO @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Participants see course and all included LOs in their preferred language
    Given the course and LOs are in Spanish
    When a participant with preferred language "Spanish" views the course
    Then all displayed course content and LOs should be in Spanish

@adminui @lxp @021LanguageSpecificLO @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to add LO in a nonmatching language
    Given the course is created with language "French"
    When the Admin tries to add an LO in English
    Then the system should display an error message "LO language does not match course language"
    And prevent adding the LO

@adminui @lxp @021LanguageSpecificLO @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No available LOs in selected course language
    When the Admin selects "German" as course language
    And no LOs are available in German
    Then the system should notify "No Learning Objects available in selected language"

@adminui @lxp @021LanguageSpecificLO @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Audience members see nothing if preferred language is not available
    Given a participant prefers "Italian"
    And no courses or LOs exist in Italian
    When they log into "My Courses"
    Then the system should not show the course in "My Courses"

@adminui @lxp @021LanguageSpecificLO @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Change course language after adding LOs
    Given a course was created in "English" with English LOs
    When the Admin tries to change the course language to "Hindi"
    Then the system should prompt "Changing course language will require removing nonmatching LOs"


@adminui @lxp @022CourseCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Automatically mark SCORM content as completed when participant finishes module
    Given a participant starts a SCORM Learning Object
    When they complete all mandatory steps in the module
    Then the system should automatically record the LO as completed for the participant
    And update their learning progress without any manual action

@adminui @lxp @022CourseCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Automatically track completion of xAPI content
    Given a participant interacts with an xAPI Learning Object
    When the xAPI module sends a "completed" statement
    Then the platform should receive the statement
    And mark the LO as completed for the participant

@adminui @lxp @022CourseCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Allow selfreporting for nonautomated formats (eg document video link)
    Given a participant accesses an LO in a format such as video document audio image or link
    When the participant finishes learning and clicks "Mark as Completed"
    Then the platform should record their completion via selfreport
    And update their learning progress accordingly

@adminui @lxp @022CourseCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display completion status in "My Courses" and "Course Details"
    When a participant completes LOs by either automated tracking or selfreporting
    Then their learning progress should be visible in "My Courses" and "Course Details"

@adminui @lxp @022CourseCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Record both types of completion in admin reports
    When the Admin views course completion reports
    Then both automatically tracked and selfreported LO completions should be displayed
    And data should indicate the completion method ("Automated" or "SelfReported")

@adminui @lxp @022CourseCompletion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Completion recording fails due to system error
    When a participant completes a SCORM or xAPI LO
    And the platform fails to record completion
    Then the system should display "Unable to save completion Please try again later"
    And not update progress until error is resolved

@adminui @lxp @022CourseCompletion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to selfreport completion for LO never accessed
    When a participant attempts to selfreport completion for an LO they havent accessed
    Then the system should display "You must access the content before reporting completion"



@adminui @lxp @023QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Participant passes the quiz
    Given a participant takes the quiz
    And obtains a score equal to or above the passing threshold
    When the quiz is submitted
    Then the system should mark the quiz as "Completed" for that participant
    And update the participants learning progress accordingly

@adminui @lxp @023QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Participant reviews completion status
    When a participant who has passed views "My Courses"
    Then the quiz should appear as "Completed" or equivalent status

@adminui @lxp @023QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Admin views quiz completion in reports
    When the Admin reviews course completion or quiz reports
    Then only participants who have passed the quiz are listed as having completed it

@adminui @lxp @023QuizCompletion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Participant fails initially then passes upon retaking
    Given a participant first takes the quiz and fails
    When the participant retakes and passes the quiz
    Then the system should update the quiz status to "Completed" only after the passing attempt
    And update the completion date to the date of the passing attempt

@adminui @lxp @023QuizCompletion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Participant attempts but fails the quiz
    When a participant submits the quiz with a score below the passing threshold
    Then the system should not mark the quiz as complete
    And the quiz should not count toward learning progress completion

@adminui @lxp @023QuizCompletion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Participant attempts quiz multiple times without passing
    When a participant takes the quiz multiple times but never passes
    Then the quiz should remain incomplete in "My Courses" and in admin reports

@adminui @lxp @023QuizCompletion @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Attempt to selfreport failed quiz as complete
    When a participant attempts to manually mark a failed quiz as complete (if functionality exists)
    Then the system should display "Only passing attempts are eligible for completion"
    And not update the status



@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Create a new version of an existing course
    When the Admin opens an existing course and clicks "Create New Version"
    And specifies the changes for the new version
    And clicks "Save"
    Then the system should create a new version entry for the course
    And maintain the previous version(s) in the version history

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Edit details in a new version without affecting prior versions
    When the Admin updates metadata content or settings in a new version
    Then only that version should reflect the changes
    And prior versions should remain unchanged in the version history

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: View complete version history of a course
    When the Admin opens the "Version History" for a course
    Then the system should list all previous versions in chronological order
    And display details such as version number creation date author and change summary for each

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Publish a previous version of a course
    Given multiple versions of a course exist
    When the Admin selects a prior version from version history and clicks "Publish"
    Then the system should set that version as the active course version
    And indicate the restoration in the version history

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Compare details between versions
    When viewing version history
    Then the Admin should be able to compare fields content and settings across different versions

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Audit/version history reflects every change on course versions
    When the Admin creates or edits a course version
    Then the changes should be logged in the version history with a timestamp and author attribution

@adminui @lxp @024CourseVersion @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Unable to view version history due to permissions
    Given the Admin logins with Tenant admin credentials lacking version history access
    When they try to view "Version History"
    Then the system should not display the version history option



@adminui @lxp @025VersionSpecificMetrics @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display number of LOs and enrolled users for current version
    When the Admin views the current version of a course
    Then the system should display the total number of LOs included in that version
    And the number of currently enrolled users

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Display metrics for previous versions from version history
    When the Admin opens the version history for a course
    Then each version entry should show the number of LOs and enrolled users for that specific version

# doubt whether the old changes will be reflected in the metrics or should the user start the course again
@adminui @lxp @025VersionSpecificMetrics @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Metrics update when course version changes
    Given an Admin restores or updates a course to a new version
    When the Admin views metrics for the newly active version
    Then the values for LOs and enrolled users should reflect the latest state for that version

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Compare metrics across multiple course versions
    When the Admin selects two or more versions in the version history
    Then the system should display number of LOs and enrolled users for each
    And allow the Admin to compare to inform update decisions

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Metrics update in real time with enrollment changes
    Given users are added to or removed from a course version
    When the Admin revisits the metrics dashboard
    Then the enrolled user count should reflect the latest data

# US026
@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: New course version is created in draft status
    When the Admin creates a new version of an existing course
    Then the system should set the version status as "Draft" by default
    And the version should not be visible to participants

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Draft course version allows full editing
    Given a course version is in "Draft" status
    When the Admin edits metadata or adds/removes Learning Objects
    Then the system should save all changes without restriction

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Publishing draft version
    Given the Admin has finished updating a draft course version
    When the Admin clicks "Publish"
    Then the system should change the version status to "Published"
    And the version should become visible to the intended audience(s)

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Cancel or delete draft version before publishing
    Given a draft course version exists
    When the Admin chooses to cancel or delete the draft
    Then the version should be removed from version history
    And should never become visible to participants

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to publish an incomplete draft version
    Given a draft course version is missing required metadata or Learning Objects
    When the Admin clicks "Publish"
    Then the system should display "Cannot publish Please complete all required fields before publishing"

@adminui @lxp @025VersionSpecificMetrics @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Accidental exposure of draft version
    When a new version is created and left in draft status
    Then the draft should not appear in any participant's course list search or dashboards


@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Admin submits valid certificate template with all fields
    Given I am on the Add Certificate Template screen
    When I enter "Course Completion" in the Certificate Name field
    And I enter "Awarded for successful course completion" in the Description field
    And I upload "valid_templatehtml" less than 10MB with required placeholders
    And I click the "Create" button
    Then the certificate template should be created successfully

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Admin submits certificate template with only required fields
    Given I am on the Add Certificate Template screen
    When I enter "Python Basics" in the Certificate Name field
    And I leave the Description field blank
    And I upload "valid_templatehtml" less than 10MB with required placeholders
    And I click the "Create" button
    Then the certificate template should be created successfully

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Admin submits form without entering Certificate Name
    Given I am on the Add Certificate Template screen
    When I leave the Certificate Name field blank
    And I upload "valid_templatehtml" less than 10MB with required placeholders
    And I click the "Create" button
    Then an error message "Certificate Name is required" should be shown
    And the certificate template should not be created

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
 Scenario: Admin submits form without uploading Template File
    Given I am on the Add Certificate Template screen
    When I enter "Java Basics" in the Certificate Name field
    And I do not upload a template file
    And I click the "Create" button
    Then an error message "Template File is required" should be shown
    And the certificate template should not be created

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Edit Certificate template details
    Given a Certificate template exists
    When the Admin edits its name description or design
    And clicks "Save"
    Then the system should update the template accordingly
    And reflect the changes in the management section

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Assign Certificate to a course or learning path
    When the Admin configures completion criteria for a course or learning path
    And selects a Certificate to be awarded
    Then the Certificate should be linked to the course or path for eligible learners

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Award Certificate upon course completion
    Given a learner completes a course with assigned Certificate
    Then the system should automatically generate and award the Certificate
    And notify the learner with access to download or view the Certificate

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Award Certificate upon learning path completion
    Given a learner completes an entire learning path
    And a Certificate is configured for that path
    Then the learner should receive the Certificate upon completion

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: View list of Certificates and track awards
    When the Admin views the Certificate management section
    Then all created templates and issued Certificates should be listed
    And the Admin can see how many learners have received each Certificate

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Admin uploads a nonHTML file as Template File
    Given I am on the Add Certificate Template screen
    When I enter "Digital Marketing" in the Certificate Name field
    And I upload "templatepdf" as the Template File
    And I click the "Create" button
    Then an error message "Only HTML files are allowed" should be shown
    And the certificate template should not be created

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Admin uploads an HTML file larger than 10MB
    Given I am on the Add Certificate Template screen
    When I enter "Leadership" in the Certificate Name field
    And I upload "large_templatehtml" greater than 10MB
    And I click the "Create" button
    Then an error message "File size exceeds limit" should be shown
    And the certificate template should not be created

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Admin uploads template without required placeholders
    Given I am on the Add Certificate Template screen
    When I enter "Data Analysis" in the Certificate Name field
    And I upload "template_without_placeholdershtml" less than 10MB
    And I click the "Create" button
    Then an error message "Template must include studentName courseName and completionDate" should be shown
    And the certificate template should not be created

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Learner attempts to view Certificate before qualifying
    Given a learner has not completed associated course or path
    When they attempt to access the Certificate
    Then the system should display "Certificate not available until course/path completion"

# 042
@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Define Certificate Name and save
    When the Admin enters a Certificate Name in the certificate creation form
    And completes all required certificate setup fields
    And clicks "Save"
    Then the system should store the certificate template with the defined name
    And show a confirmation message

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Associate Certificate with a specific Course
    Given a Certificate template exists
    When the Admin selects a Course in the certificate association workflow
    And links the Certificate to the Course
    Then the Course details should reflect the associated Certificate
    And upon learner completion the Certificate should be issued with the defined name

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Associate Certificate with a specific Learning Path
    Given a Certificate template exists
    When the Admin selects a Learning Path during association
    And links the Certificate to the Learning Path
    Then the Learning Path details should reflect the associated Certificate
    And upon learner completion the Certificate should be issued with the defined name

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Update association to a different Course or Learning Path
    Given the Certificate is currently associated with a Course
    When the Admin updates the association to a different Course or Learning Path
    Then only the newly linked entity should issue the certificate upon completion

@adminui @lxp @041CreateCertificate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Multiple certificates with unique names across different courses/paths
    When the Admin creates certificates with distinct names
    And associates each with different Courses or Learning Paths
    Then learners should receive the correct certificate name for each completed entity

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to associate certificate with nonexistent Course or Learning Path
    When the Admin selects a Course or Learning Path that has been deleted or does not exist
    And tries to link the Certificate
    Then the system should display "The selected Course or Learning Path does not exist"

@adminui @lxp @041CreateCertificate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Duplicate certificate names for same Course or Learning Path
    When the Admin attempts to associate two certificates with the same name to a Course or Path
    Then the system should display "Certificate Name must be unique for each Course or Learning Path"

@adminui @lxp @043CertificateTemplate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Upload a custom certificate template file
    When the Admin clicks "Upload Certificate Template"
    And selects a valid file in HTML format with the organisations branding and layout
    And clicks "Save"
    Then the system should upload and store the custom template

# do we have a option to preview the uploaded template?
@adminui @lxp @043CertificateTemplate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Preview the uploaded certificate template
    Given the Admin has uploaded a custom template
    When the Admin clicks "Preview Template"
    Then the system should display a preview of the template as it would appear to learners

@adminui @lxp @043CertificateTemplate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Replace existing certificate template with a new upload
    Given a certificate template is already assigned
    When the Admin uploads a new file to replace it
    Then the system should update the template on all future certificates for that definition 

@adminui @lxp @043CertificateTemplate @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Validate template metadata (eg dimensions fields)
    When the Admin uploads a template
    Then the system should check that required fields/placeholders for learner name course completion date etc exist in the template

@adminui @lxp @043CertificateTemplate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Upload unsupported file format
    When the Admin selects an unsupported file type (eg exe zip psd)
    And clicks "Save"
    Then the system should display "Unsupported file format Please upload a pdf docx or image file"

@adminui @lxp @043CertificateTemplate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Upload template exceeding file size limit
    When the Admin attempts to upload a template larger than the allowed maximum size
    Then the system should display "File size exceeds the limit Please choose a smaller file"

@adminui @lxp @043CertificateTemplate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Template missing required placeholders or branding
    When the Admin uploads a template without organisation branding or mandatory placeholders (eg learner name)
    Then the system should display "Template missing required branding or fields"

@adminui @lxp @043CertificateTemplate @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Failure to display template preview
    Given the Admin has uploaded a custom template
    When they click "Preview Template"
    And the preview fails to generate due to technical error
    Then the system should display "Unable to generate preview Please try again later"


@adminui @lxp @043MappingCertificateVariables @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Configure mapping of variables to template placeholders
    When the Admin views the list of available template placeholders (eg ParticipantName CompletionDate CourseName)
    And maps each placeholder to the corresponding variable (participant name completion date course name)
    And clicks "Save Mapping"
    Then the system should store the mappings and confirm "Placeholders mapped successfully"

@adminui @lxp @043MappingCertificateVariables @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Generate certificate with dynamically replaced variables
    Given the mappings are correctly configured
    When a learner completes the course
    Then the system should replace placeholders with actual values (eg learners name completion date course name) when generating the certificate
    And the learner should receive a certificate with correct personalised information

@adminui @lxp @043MappingCertificateVariables @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Preview certificate with simulated variable data
    Given the Admin has finished mapping variables
    When the Admin clicks "Preview Certificate"
    Then the preview should show placeholder values replaced with sample data for validation

@adminui @lxp @043MappingCertificateVariables @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Support multiple variables and placeholders in one template
    When the template includes placeholders for additional fields such as grade or learning path
    And the Admin maps corresponding variables
    Then all mapped fields should be correctly replaced in generated certificates

@adminui @lxp @043MappingCertificateVariables @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Edit and update variable mappings
    Given an initial mapping has been saved
    When the Admin edits the mapping (eg reassigns CompletionDate to a different date field)
    Then the system should update and use the new mapping for future certificate generation

@adminui @lxp @043MappingCertificateVariables @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to save mapping with unmapped required placeholders
    When the template includes mandatory placeholders (eg ParticipantName CompletionDate)
    And the Admin does not map all required placeholders
    And clicks "Save Mapping"
    Then the system should display "All required placeholders must be mapped before saving"

@adminui @lxp @043MappingCertificateVariables @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Placeholder and variable type mismatch
    When the Admin tries to map a placeholder (eg CompletionDate) to a variable of incorrect type (eg text instead of date)
    Then the system should display "Type mismatch in mapping Please select a variable of correct type"

@adminui @lxp @043MappingCertificateVariables @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Attempt to map multiple variables to the same placeholder
    When the Admin maps several variables to the same placeholder (eg CourseName)
    Then the system should display "Each placeholder must only be mapped to a single variable"

@adminui @lxp @043MappingCertificateVariables @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
  Scenario: Attempt to generate certificate with missing placeholder mapping
    When the Admin has not mapped all required placeholders
    And a certificate is generated for a learner
    Then the system should fail to generate the certificate
    And display "Certificate generation failed due to missing mapping"


@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Enable notifications for course completion
    When the Admin navigates to notification settings
    And enables notifications for the "Course Completion" event
    Then the system should send notifications to participants when they complete a course

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Enable notifications for learning path completion
    When the Admin enables notifications for the "Learning Path Completion" event
    Then the platform should notify participants upon successful completion of a learning path

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Disable notifications for a specific event
    When the Admin disables notifications for the "Course Completion" event
    Then participants should not receive notifications for completing courses

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: View and edit all notification event settings
    When the Admin opens the notification management section
    Then all available eventbased notifications (eg course completion LO completion certificate award) should be listed
    And the Admin can toggle enable/disable for each event

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Notification toggles are persistent
    When the Admin enables or disables a notification event
    And logs out and back in
    Then the notification settings should remain as last configured

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Notifications are delivered as per settings
    Given the Admin has enabled notifications for course completion
    When a participant successfully completes a course
    Then the participant should immediately receive a system notification/message/email about their achievement

@adminui @lxp @044Notification @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: No notification sent when event disabled
    Given notifications for "Learning Path Completion" are disabled
    When a participant completes a learning path
    Then no notification should be sent to the participant

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Specify delivery channel for notification
    When the Admin selects preferred delivery channels (eg email SMS inapp)
    And saves the notification settings
    Then the notification should be delivered using the selected channels for participants

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Notification is sent promptly upon course completion
    When a participant completes a course with notification enabled
    Then the participant should receive the completion notification within a short timeframe

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Enable notification for course completion
    When the Admin navigates to notification settings
    And enables notifications for the "Course Completion" event
    Then the system should send a notification to participants upon completing a course

@adminui @lxp @044Notification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Set custom message for course completion notification
    When the Admin enters a custom notification message for course completion
    And saves the configuration
    Then participants should receive the custom message upon course completion


@adminui @lxp @050NotificationMessages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Define notification message in multiple languages
    When the Admin creates or edits a notification
    And enters message content for each supported language (eg English Hindi Spanish)
    And clicks "Save"
    Then the system should store each language version of the notification message

@adminui @lxp @050NotificationMessages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Assign default language for notification when participants preference is missing
    When the Admin configures languagespecific messages
    And a participant does not have a language preference set
    Then the system should send the notification in the default organisational language

@adminui @lxp @050NotificationMessages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Deliver notification in participants preferred language
    Given a participant prefers Hindi
    When a relevant notification is triggered (eg course completion)
    Then the participant should receive the notification message in [translate:हिन्दी]

@adminui @lxp @050NotificationMessages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Update or edit notification messages for a specific language
    Given notification messages exist in multiple languages
    When the Admin edits the Hindi version of a message
    And clicks "Save"
    Then only the Hindi message version should be updated and delivered going forward

@adminui @050NotificationMessages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Preview multilanguage notification before saving
    When the Admin enters multilanguage message content
    And clicks "Preview"
    Then the system should show how each message variant will appear to participants by language

@adminui @lxp @050NotificationMessages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Save notification message without mandatory language variant
    When the Admin leaves the default (eg English) message blank
    And tries to save
    Then the system should display "Default message is required for notification delivery"

@adminui @lxp @050NotificationMessages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Participant language preference does not match any provided message variant
    When a participants preferred language is French
    And no notification message variant exists for French
    Then the system should send the message in the default language version


@adminui @051ExportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Validate CSV file format and encoding
    When the Admin opens the exported CSV file
    Then the file should use standard UTF8 encoding
    And all fields should be properly delimited and formatted for translation use

@adminui @051ExportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Export can be repeated without error
    When the Admin performs multiple consecutive exports of enGB content to CSV
    Then each operation should succeed and generate the requested file

@adminui @051ExportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Export specific learning pages to CSV
    When the Admin selects specific learning pages and clicks "Export to CSV"
    Then the system should generate a CSV file containing only the selected pages content in enGB

@adminui @051ExportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Export all learning page content in enGB to CSV
    When the Admin navigates to the "Export Content" section
    And selects enGB as the source language
    And clicks "Export to CSV"
    Then the system should generate and download a CSV file containing all enGB learning page content

@adminui @lxp @051ExportContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to export when no enGB content is available
    When the Admin tries to export learning page content in enGB
    And no such content exists
    Then the system should display "No content available in enGB for export"

@adminui @lxp @051ExportContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Incorrect language selection for export
    When the Admin selects a nonexistent language (eg deGB) for export
    Then the system should display "Selected language not available for export"


@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
Scenario: Successfully import translated content for the first time
    When the Admin navigates to the "Import Content" section
    And selects a valid wellformed CSV file with translated materials
    And clicks "Import"
    Then the system should read the file and update the learning pages with the new content in the specified language
    And display "Import successful"

@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Validate CSV file structure before import
    When the Admin uploads a CSV file
    Then the system should validate the file format required columns encoding and supported language
    And notify the Admin of any issues before proceeding

@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Preview changes before final import
    When the Admin uploads a valid CSV and the system parses its contents
    Then the Admin can view a summary of which learning pages will be updated and new language variants created before confirming import

@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Import for multiple learning pages at once
    When the CSV contains translations for several learning pages
    Then all specified pages should be updated in the selected target language

@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Import repeated with updated translations
    When the Admin imports a newer CSV file containing improved translations
    Then the system should overwrite the existing translations or create a new version as per platform settings

@adminui @052ImportContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
  Scenario: Imported materials visible to users in the new language
    When translated content is imported successfully
    Then learners whose preferred language matches the new language should see the updated materials automatically

@adminui @052ImportContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Import fails due to language mismatch
    When the CSV contains translations for a language not supported or configured on the platform
    Then the system should abort import and display "Target language is not available for import"

@adminui @052ImportContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to import with corrupted or malformed CSV file
    When the Admin selects a CSV file with incorrect structure missing columns or invalid encoding
    And clicks "Import"
    Then the system should reject the file and display "Invalid CSV format Please review the file and try again"

@adminui @052ImportContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
Scenario: Attempt to import translations for nonexistent learning pages
    When the CSV references page IDs that do not exist in the platform
    Then the system should log errors for those entries and display "Some referenced learning pages do not exist"