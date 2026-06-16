Feature: Learning Objects Management

    Background:

    # LXP_LXPADMIN_09 - Manage Learning Objects
    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin can access Learning Objects management interface

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
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

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin can create a new Learning Object with accessibility features as <accessibilityFeature>
        Examples:
            | accessibilityFeature |
            | Captions             |
            | Transcripts          |

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify uploading the learning object zip file

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated


    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin can update an existing Learning Object

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin can delete an existing Learning Object

    @adminui @LXP @ManageLearningObjects_09 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Admin can view the details of a Learning Object

    #Questions: What happens if an user is halfway through the learning object and when admin make any changes in it

    # LXP_LXPADMIN_10 - View Learning Object List
    @adminui @LXP @ViewLearningObjects_10 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: View Learning Objects list with key information

    @adminui @LXP @ViewLearningObjects_10 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: View empty Learning Objects list

    @adminui @LXP @ViewLearningObjects_10 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Learning Objects list displays pagination

    # LXP_LXPADMIN_11 - Perform Actions on Learning Objects
    @adminui @LXP @PerformActionLearningObjects_11 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Preview a Learning Object from list view

    @adminui @LXP @PerformActionLearningObjects_11 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Edit a Learning Object from list view

    @adminui @LXP @PerformActionLearningObjects_11 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Delete a Learning Object from list view

    @adminui @LXP @PerformActionLearningObjects_11 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Cancel deletion of a Learning Object

    # LXP_LXPADMIN_12 - Filter Learning Objects
    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter Learning Objects by Title

    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter Learning Objects by Description

    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter Learning Objects by Content Type

    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Filter Learning Objects by Status

    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Apply multiple filters simultaneously

    @adminui @LXP @FilterLearningObjects_12 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Clear all applied filters

    # LXP_LXPADMIN_13 - Create a Learning Object
    @adminui @LXP @CreateLearningObject_13 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create a new Learning Object with required fields

    @adminui @LXP @CreateLearningObject_13 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Validate required fields when creating Learning Object

    @adminui @LXP @CreateLearningObject_13 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Prevent creation of Learning Object with duplicate title

    @adminui @LXP @CreateLearningObject_13 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with version information

    # LXP_LXPADMIN_14 - Multiple Content Types for Learning Objects
    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with SCORM content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with xAPI content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Video content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Document content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Audio content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Image content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Link content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create Learning Object with Assessment content

    @adminui @LXP @CreateLearningObject_14 @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline: Validate file upload restrictions for different content types

    # Additional Scenarios for Learning Objects Management
    @learning-objects @search
    Scenario: Search Learning Objects by keyword

    @learning-objects @bulk-actions
    Scenario: Perform bulk actions on Learning Objects

    @learning-objects @sort
    Scenario: Sort Learning Objects by different criteria

    @learning-objects @export
    Scenario: Export Learning Objects list

    @learning-objects @metadata
    Scenario: View detailed metadata for Learning Object
