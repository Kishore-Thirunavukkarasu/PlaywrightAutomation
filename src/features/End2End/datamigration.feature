Feature: Data migration test cases

    @adminui @Migration @defaultdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by creating a new tenant and one program and migrating the data from one tenant to new tenant

    @adminui @Migration @defaultdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by creating a new tenant and two program and migrating the data from one tenant to new tenant

    @adminui @Migration @defaultdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by creating a new tenant and one program and migrating the data from one environment to another environment

    @adminui @Migration @defaultdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by creating a new tenant and two program and migrating the data from one environment to another environment

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by creating a new tenant with one program and create new schema and create new workflow and migrate the data from one tenant to new tenant

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by moving the new data which contains date, datetimestamp and move it into the new tenant and verify

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by moving the new data which contains integer, float, decimal and move it into the new tenant and verify

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify by moving the new data which contains string, text, long text and move it into the new tenant and verify

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data migration for the <table> with default data and verify the migration after moving it to new tenant
        Examples:
            | table               |
            | __flowNodes         |
            | __dataView          |
            | __masterConfigs     |
            | flows               |
            | forms               |
            | __programCatalogues |
            | medias              |
            | menus               |
            | menuItems           |
            | notificationGroups  |
            | notificationMasters |
            | promotionTypes      |
            | eventQueries        |
            | connectors          |
            | icons               |
            | templates           |
            | pages               |
            | __tenantPrograms    |
            | translations        |
            | widgets             |

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data migration by updating the scoped table with new column in both target and source and verify the migration after moving it to new tenant

    @adminui @Migration @newdata @integration @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the data migration for the <table> by setting up user defined values and verify the migration after moving it to new tenant

        Examples:
            | table                |
            | __flowNodes          |
            | __dataView           |
            | __masterConfigs      |
            | audiences            |
            | audienceMappings     |
            | productAndBehaviors  |
            | claimConfigurations  |
            | flows                |
            | forms                |
            | __programCatalogues  |
            | hooks                |
            | medias               |
            | menus                |
            | menuItems            |
            | notificationGroups   |
            | notificationMasters  |
            | measureNotifications |
            | hierarchies          |
            | organizations        |
            | promotionTypes       |
            | tags                 |
            | eventQueries         |
            | connectors           |
            | icons                |
            | templates            |
            | pages                |
            | __tenantPrograms     |
            | promotions           |
            | promotionMeasures    |
            | translations         |
            | widgets              |

