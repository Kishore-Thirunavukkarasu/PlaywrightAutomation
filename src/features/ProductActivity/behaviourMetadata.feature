Feature: Create a new schema for Behavior

    Background:
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the user is on the program landing page
        When User click on "Foundation Tools"
        When User click on the "Schema Builder" submenu
        Then Verify the "Schema Builder" page is displayed

    # @adminui @behaviour @create @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Create a new schema for Behaviour
    #     When User is on the schema builder page
    #     When User click on "Add Schema" button to create a new schema
    #     When User enters the mandatory fields for "Course Behaviour" Schema Creation
    #     Then Verify the schema "Course Behaviour" is created successfully
    #     When User adds a new column for schema with fieldType
    #         | column      | fieldType |
    #         | courseName  | String    |
    #         | coursePrice | String    |
    #         | courseType  | String    |
    #     When User click on "Submit" button in schema page
    #     Then "Successful" message shown up

    # @adminui @behaviour @create @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Create a new schema for Behaviour File Specification
    #     When User is on the schema builder page
    #     When User click on "Add Schema" button to create a new schema
    #     When User enters the mandatory fields for "Course Behaviour File Specification" Schema Creation
    #     Then Verify the schema "Course Behaviour File Specification" is created successfully
    #     When User adds a new column for schema with fieldType
    #         | column      | fieldType |
    #         | courseName  | String    |
    #         | coursePrice | String    |
    #         | courseType  | String    |
    #     When User click on "Submit" button in schema page
    #     Then "Successful" message shown up

    @adminui @behaviour @create @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create a new schema for Behaviour Claim
        When User is on the schema builder page
        When User click on "Add Schema" button to create a new schema
        When User enters the mandatory fields for "Course Claim" Schema Creation
        Then Verify the schema "Course Claim" is created successfully
        When User adds a new column for schema with fieldType
            | column      | fieldType |
            | courseName  | String    |
            | coursePrice | String    |
            | courseType  | String    |
        When User click on "Submit" button in schema page
        Then "Successful" message shown up

    @adminui @behaviour @create @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Create a new schema for Behaviour Claim File Specification
        When User is on the schema builder page
        When User click on "Add Schema" button to create a new schema
        When User enters the mandatory fields for "Course Claim File Specification" Schema Creation
        Then Verify the schema "Course Claim File Specification" is created successfully
        When User adds a new column for schema with fieldType
            | column      | fieldType |
            | courseName  | String    |
            | coursePrice | String    |
            | courseType  | String    |
        When User click on "Submit" button in schema page
        Then "Successful" message shown up