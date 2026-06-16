Feature: Learning Experience Platform (LXP) Management
  As an Admin, I want to manage the LXP platform with multi-tenant capabilities,
  learning content, courses, and assessments to provide a comprehensive learning experience.

  Background:
    Given I am logged in as an Admin
    And I have access to the LXP platform

  # Multi-Tenant Setup
  Scenario: Create and manage multiple tenants
    Given I am on the tenant management page
    When I create a new tenant with name "Channel Smart Program A"
    And I configure the tenant settings
    Then the tenant should be created successfully
    And the tenant should have a separate learning environment

  # Enforce Tenant Data Isolation
  Scenario: Verify tenant data isolation
    Given I have multiple tenants "Tenant A" and "Tenant B"
    And "Tenant A" has courses and learning objects
    When I switch to "Tenant B" context
    Then I should not see any courses from "Tenant A"
    And I should not see any learning objects from "Tenant A"
    And all data should remain strictly isolated

  # Manage Learning Categories
  Scenario: Create a new learning category
    Given I am on the learning categories management page
    When I create a new category with name "Technical Skills"
    And I provide a description "Categories for technical learning content"
    Then the category should be created successfully
    And it should appear in the categories list

  Scenario: Read existing learning categories
    Given I have existing learning categories
    When I navigate to the categories management page
    Then I should see a list of all categories
    And each category should display its name and description

  Scenario: Update an existing learning category
    Given I have a category named "Soft Skills"
    When I edit the category to change name to "Communication Skills"
    And I update the description
    Then the category should be updated successfully
    And the changes should be reflected in the categories list

  Scenario: Delete a learning category
    Given I have a category named "Outdated Category"
    When I delete the category
    Then the category should be removed from the system
    And it should no longer appear in the categories list

  # Unique Category Code and Multilingual Name
  Scenario: Create category with unique code and multilingual name
    Given I am creating a new learning category
    When I assign a unique internal code "TECH_001"
    And I provide display names in multiple languages:
      | Language | Display Name |
      | English  | Technology   |
      | Spanish  | Tecnología   |
      | French   | Technologie  |
    Then the category should be created with the unique code
    And the multilingual names should be stored correctly

  Scenario: Prevent duplicate category codes
    Given I have a category with code "TECH_001"
    When I try to create another category with the same code "TECH_001"
    Then I should receive an error message
    And the duplicate category should not be created

  # Update Category Name Independently
  Scenario: Update category display name without changing code
    Given I have a category with code "TECH_001" and name "Technology"
    When I update the display name to "Advanced Technology"
    But keep the code unchanged
    Then the category name should be updated
    And the code should remain "TECH_001"
    And existing data linkages should remain intact

  # Manage Learning Tags
  Scenario: Create a new learning tag
    Given I am on the learning tags management page
    When I create a new tag with name "Beginner Level"
    Then the tag should be created successfully
    And it should appear in the tags list

  Scenario: Read existing learning tags
    Given I have existing learning tags
    When I navigate to the tags management page
    Then I should see a list of all tags
    And each tag should display its name

  Scenario: Update an existing learning tag
    Given I have a tag named "Basic"
    When I edit the tag to change name to "Fundamental"
    Then the tag should be updated successfully
    And the changes should be reflected in the tags list

  Scenario: Delete a learning tag
    Given I have a tag named "Obsolete Tag"
    When I delete the tag
    Then the tag should be removed from the system
    And it should no longer appear in the tags list

  # Unique Tag Code and Multilingual Name
  Scenario: Create tag with unique code and multilingual name
    Given I am creating a new learning tag
    When I assign a unique internal code "LVL_001"
    And I provide display names in multiple languages:
      | Language | Display Name |
      | English  | Beginner     |
      | Spanish  | Principiante |
      | French   | Débutant     |
    Then the tag should be created with the unique code
    And the multilingual names should be stored correctly

  # Update Tag Name Independently
  Scenario: Update tag display name without changing code
    Given I have a tag with code "LVL_001" and name "Beginner"
    When I update the display name to "Entry Level"
    But keep the code unchanged
    Then the tag name should be updated
    And the code should remain "LVL_001"
    And course associations should remain intact

  # Manage Learning Objects
  Scenario: Create a new learning object
    Given I am on the learning objects management page
    When I create a new learning object with:
      | Field       | Value                    |
      | Title       | Introduction to Python   |
      | Content Type| Video                    |
      | Description | Basic Python concepts    |
      | Language    | English                  |
      | Status      | Active                   |
      | Duration    | 30 minutes               |
    Then the learning object should be created successfully

  Scenario: Update an existing learning object
    Given I have a learning object "Introduction to Python"
    When I update the title to "Python Fundamentals"
    And I change the duration to "45 minutes"
    Then the learning object should be updated successfully

  Scenario: Delete a learning object
    Given I have a learning object "Outdated Content"
    When I delete the learning object
    Then it should be removed from the system

  # View Learning Object List
  Scenario: View list of learning objects with key information
    Given I have multiple learning objects in the system
    When I navigate to the learning objects list page
    Then I should see a list displaying:
      | Column          |
      | Title           |
      | Content Type    |
      | Status          |
      | Last Updated    |
    And the information should be accurate for each learning object

  # Perform Actions on Learning Objects
  Scenario: Preview a learning object
    Given I am on the learning objects list page
    And I have a learning object "Python Basics"
    When I click the preview action for "Python Basics"
    Then I should see a preview of the learning object content

  Scenario: Edit a learning object from list view
    Given I am on the learning objects list page
    And I have a learning object "Python Basics"
    When I click the edit action for "Python Basics"
    Then I should be taken to the edit page
    And I should be able to modify the learning object

  Scenario: Delete a learning object from list view
    Given I am on the learning objects list page
    And I have a learning object "Test Content"
    When I click the delete action for "Test Content"
    And I confirm the deletion
    Then the learning object should be removed from the list

  # Filter Learning Objects
  Scenario: Filter learning objects by title
    Given I have learning objects with different titles
    When I filter by title containing "Python"
    Then I should only see learning objects with "Python" in the title

  Scenario: Filter learning objects by content type
    Given I have learning objects of different content types
    When I filter by content type "Video"
    Then I should only see learning objects with content type "Video"

  Scenario: Filter learning objects by status
    Given I have learning objects with different statuses
    When I filter by status "Active"
    Then I should only see learning objects with status "Active"

  # Multiple Content Types for Learning Objects
  Scenario Outline: Create learning objects with various content types
    Given I am creating a new learning object
    When I select content type "<ContentType>"
    And I upload content in "<ContentType>" format
    Then the learning object should be created successfully
    And it should support the "<ContentType>" format

    Examples:
      | ContentType  |
      | SCORM        |
      | xAPI         |
      | Video        |
      | Document     |
      | Audio        |
      | Image        |
      | Link         |
      | Assessment   |

  # Manage Courses
  Scenario: View courses list with details
    Given I have multiple courses in the system
    When I navigate to the courses management page
    Then I should see a list displaying:
      | Column              |
      | Name                |
      | Author              |
      | Assigned Audiences  |
      | Last Updated Date   |

  # Filter and Search Courses
  Scenario: Filter courses by title
    Given I have courses with different titles
    When I filter by title containing "Leadership"
    Then I should only see courses with "Leadership" in the title

  Scenario: Filter courses by status
    Given I have courses with different statuses
    When I filter by status "Published"
    Then I should only see courses with status "Published"

  Scenario: Filter courses by categories
    Given I have courses assigned to different categories
    When I filter by category "Technical Skills"
    Then I should only see courses in the "Technical Skills" category

  Scenario: Filter courses by tags
    Given I have courses with different tags
    When I filter by tag "Beginner"
    Then I should only see courses tagged as "Beginner"

  # Perform Actions on Courses
  Scenario: Preview a course
    Given I am on the courses list page
    And I have a course "Leadership Fundamentals"
    When I click the preview action for "Leadership Fundamentals"
    Then I should see a preview of the course content

  Scenario: Edit a course
    Given I am on the courses list page
    And I have a course "Leadership Fundamentals"
    When I click the edit action for "Leadership Fundamentals"
    Then I should be taken to the course edit page

  Scenario: Duplicate a course
    Given I am on the courses list page
    And I have a course "Leadership Fundamentals"
    When I click the duplicate action for "Leadership Fundamentals"
    Then a copy of the course should be created
    And it should appear in the courses list with a modified name

  Scenario: Archive a course
    Given I am on the courses list page
    And I have a course "Outdated Course"
    When I click the archive action for "Outdated Course"
    Then the course should be archived
    And it should no longer appear in the active courses list

  # Create a New Course
  Scenario: Create a new course with complete metadata
    Given I am on the create course page
    When I provide the following course details:
      | Field               | Value                           |
      | Name                | Advanced Python Programming     |
      | Description         | Deep dive into Python concepts |
      | Unique Code         | PY_ADV_001                     |
      | Estimated Duration  | 120 minutes                    |
      | Language            | English                        |
      | Author              | John Smith                     |
      | Visibility          | Public                         |
      | Learning Objectives | Master advanced Python topics  |
    And I assign categories "Technical Skills, Programming"
    And I assign tags "Advanced, Python, Programming"
    Then the course should be created successfully
    And it should be available for assignment to participants

  # Assign Courses to Audience Groups
  Scenario: Assign course to specific audience groups
    Given I have a course "Leadership Training"
    And I have audience groups "Managers" and "Team Leads"
    When I assign the course to audience groups "Managers" and "Team Leads"
    Then members of these groups should see the course in "My Courses"
    And the course should be automatically available to them

  # Participant's course enrollment eligibility for existing users
  Scenario: Existing users get enrollment date as course publication date
    Given I have a course "Safety Training" ready to publish
    And I have participants already in the course audience group
    When I publish the course on "2024-01-15"
    Then existing participants should have enrollment date as "2024-01-15"
    And they should see the course in their "My Courses" section

  # Participant's course enrollment eligibility for newly added users
  Scenario: New users get enrollment date when added to audience group
    Given I have a published course "Safety Training" published on "2024-01-15"
    And a new participant is added to the course audience group on "2024-01-20"
    When the participant's attributes qualify them for the audience
    Then their course enrollment date should be "2024-01-20"
    And they should see the course in their "My Courses" section

  # Participant's course eligibility termination
  Scenario: Terminate course eligibility when removed from audience group
    Given I have a participant enrolled in course "Safety Training"
    And the participant is removed from the course audience group on "2024-02-01"
    When their audience membership ends
    Then their course termination date should be set to "2024-02-01"
    And they should no longer see the course in "My Courses"

  # Associate Language-Specific LOs to Courses
  Scenario: Create course with language-specific learning objects
    Given I am creating a new course
    When I specify the language as "Spanish"
    And I add learning objects in Spanish language to the course
    And I target the course to Spanish-speaking dynamic audience group
    Then audience members should see course content in Spanish
    And the content should match their preferred language

  # Track Course Completion
  Scenario: Automatically track SCORM content completion
    Given I have a course with SCORM learning objects
    And a participant is enrolled in the course
    When the participant completes the SCORM content
    Then the system should automatically track the completion
    And update the participant's progress

  Scenario: Automatically track xAPI content completion
    Given I have a course with xAPI learning objects
    And a participant is enrolled in the course
    When the participant completes the xAPI content
    Then the system should automatically track the completion
    And update the participant's progress

  Scenario: Allow self-reporting for other content formats
    Given I have a course with document-based learning objects
    And a participant is enrolled in the course
    When the participant marks the content as complete
    Then the system should accept the self-reported completion
    And update the participant's progress

  # Quiz Completion Rule
  Scenario: Mark quiz complete only when passed
    Given I have a course with a quiz that requires 80% to pass
    And a participant attempts the quiz and scores 70%
    When the quiz attempt is submitted
    Then the quiz should not be marked as complete
    And the participant should be able to retake the quiz

  Scenario: Mark quiz complete when passed
    Given I have a course with a quiz that requires 80% to pass
    And a participant attempts the quiz and scores 85%
    When the quiz attempt is submitted
    Then the quiz should be marked as complete
    And the participant's progress should be updated

  # Manage Course Versions
  Scenario: Create new version of existing course
    Given I have an existing course "Python Basics v1.0"
    When I create a new version of the course
    Then a new version "Python Basics v2.0" should be created
    And it should be in draft status
    And the original version should remain unchanged

  Scenario: View detailed version history
    Given I have a course with multiple versions
    When I view the course version history
    Then I should see all versions listed chronologically
    And each version should show creation date and status
    And I should be able to access historical context

  # Track Version-Specific Metrics
  Scenario: View metrics for each course version
    Given I have a course with multiple versions
    When I view the version metrics
    Then I should see for each version:
      | Metric           |
      | Number of LOs    |
      | Enrolled Users   |
      | Completion Rate  |
    And the metrics should help inform update decisions

  # Edit Course Version Before Publishing
  Scenario: Edit draft course version before publishing
    Given I have created a new course version in draft status
    When I edit the course metadata
    And I add or remove learning objects
    And I update the course content
    Then the changes should be saved to the draft version
    And the course should remain unpublished until I choose to publish

  # Create and Manage Assessments
  Scenario: Create a new assessment
    Given I am on the assessments management page
    When I create a new assessment with title "Python Knowledge Check"
    And I provide a description "Test your Python programming knowledge"
    Then the assessment should be created successfully
    And it should appear in the assessments list

  Scenario: Update an existing assessment
    Given I have an assessment "Python Knowledge Check"
    When I update the title to "Advanced Python Assessment"
    And I modify the description
    Then the assessment should be updated successfully

  Scenario: Delete an assessment
    Given I have an assessment "Outdated Quiz"
    When I delete the assessment
    Then it should be removed from the system

  # Define Assessment Settings
  Scenario: Configure comprehensive assessment settings
    Given I am creating a new assessment
    When I configure the following settings:
      | Setting                    | Value                |
      | Title                      | Java Fundamentals    |
      | Description                | Basic Java concepts  |
      | Pass Percentage            | 75%                  |
      | Overall Time Limit         | 60 minutes           |
      | Backward Navigation        | Enabled              |
      | Question Randomization     | Enabled              |
      | Number of Questions        | 20                   |
      | Show Correct Answers       | After completion     |
      | Allowed Attempts           | 3                    |
    Then the assessment should be configured with these settings
    And participants should experience the quiz according to these rules

  # Support for Question Types
  Scenario: Create multiple choice single select questions
    Given I am creating questions for an assessment
    When I create a question of type "Multiple Choice Single Select"
    And I provide the question text and radio button options
    Then the question should be created successfully
    And participants should see radio button options

  Scenario: Create multiple choice multi-select questions
    Given I am creating questions for an assessment
    When I create a question of type "Multiple Choice Multi-Select"
    And I provide the question text and checkbox options
    Then the question should be created successfully
    And participants should see checkbox options for multiple selections

  Scenario: Mix different question types in assessment
    Given I am creating an assessment
    When I add both single select and multi-select questions
    Then the assessment should support both question types
    And participants should see appropriate interface elements for each type