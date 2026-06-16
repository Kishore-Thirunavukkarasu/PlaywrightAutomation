Feature: Meta Data Test cases contains end to end flow
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = kadarkarai Selvam
    # reviewed by =
    # updated by  = Kishore Thirunavukkarasu
    # project url = /metadata/v1/init

    Background:
        Given Verify tenant is created

    @api @metadataAPI @metaflow @scenario @special @functional @positive @notreviewed @superadmin
    Scenario: Flow of tenant, metadata, role, command and query
        When create a new tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact
        When create a tenant database
        When metadata init is created for valid tenant
        Then responsecode 201 and responsemessage success should be received for metadata init
        When create a role
        Then role response 201 should be success
        Then Get the default schema id of the tenant
        When set the permissions for the role
        Then permission response 201 should be success
        When command engine is pushing data to the random model
        Then command engine response should be successful
        When query engine is querying the random model
        Then query engine response should be successful

    @api @metadataAPI @metaflow @scenario @special @functional @smoke @notreviewed @superadmin
    Scenario: Setup the newly created the tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact

    @api @metadataAPI @metaflow @scenario @special @functional @smoke @notreviewed @superadmin
    Scenario: Create and init the database for the new tenant
        When create a tenant database
        When metadata init is created for valid tenant
        Then responsecode 201 and responsemessage success should be received for metadata init

    @api @metadataAPI @commandengineapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> creating a role
        When <testid> create a role
        Then <responsecode> and <responsestatus> is received in the response for role creation
        Then Get the default schema id of the tenant
        When set the permissions for the role
        Then permission response 201 should be success
        Examples:
            | testid          | responsecode | responsestatus |
            | RoleForCQEngine | 201          | success        |

    @api @metadataAPI @metaflow @scenario @special @functional @negative @notreviewed @superadmin
    Scenario: Create a tenant database without completing the setup and validate the responsemessage
        When create a new tenant
        When create a tenant database
        Then validate the status code as 400 and responsemessage

    @api @metadataAPI @metaflow @scenario @special @functional @negative @notreviewed @superadmin
    Scenario: Create a tenant database without init the metadata and check the schema is created
        When create a new tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact
        When create a tenant database
        Then Get the schema id of the tenant
        Then validate the status code as 400 and responsemessage

