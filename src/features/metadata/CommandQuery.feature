# push data to flat table and association table
# get data from flat and association tables

# multiple data pushing and multiple data getting
# single data pushing and single data getting

#Command Engine
Feature: Command and Query engine CRUD and System Testing
    CRUD includes create, retrieve, update and delete
    System testing includes verification of the particular system
    #CMD006AuditCommandExecutions - This user story says to audit all command after execution whether it is successful or unsuccessful that must be validated
    #This is set in all the api request for capturing the error logs and success messages

    #CMD008ExecuteTriggers - Need discussion
    #CMD009EmitEvent - Need discussion
    #QRY004ExportRecordsIntoDifferentFileFormats - Need discussion
    #QRY005StreamResultSets - Need discussion
    #QRY006CacheResults - Need discussion

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  = Kishore Thirunavukkarasu
    # project url = /cqengine/v1/command , /cqengine/v1/query

    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema


    # @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    # Scenario: Flow step to execute tenant creation, metadata init, set roles and permission
    #     When create a new tenant
    #     When create a tenant key
    #     When create a tenant config
    #     When create a tenant billing
    #     When create a tenant contact
    #     When create a tenant database
    #     When metadata init is created for valid tenant
    #     Then responsecode 201 and responsemessage success should be received for metadata init
    #     When create a role
    #     Then role response 201 should be success
    #     Then Get the default schema id of the tenant
    #     When set the permissions for the role
    #     Then permission response 201 should be success

    @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> creating and pushing the data through the command engine with <valuetype> payload
        When <testid> is pushed through the command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ001  | valid     | 200          | success        |

    @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> creating and pushing the data through the command engine with <valuetype> payload
        When <testid> is pushed through the command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ002  | invalid   | 400          | error          |
            | CQ003  | null      | 400          | error          |
            | CQ004  | empty     | 400          | error          |

    @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> creating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in creation request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ005  | string        | string    | 200          |

    @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> creating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in creation request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ006  | boolean       | boolean   | 200          |
            | CQ007  | numeric       | numeric   | 200          |
            | CQ008  | date          | date      | 200          |
            | CQ009  | timestamp     | timestamp | 200          |
            | CQ010  | list          | list      | 200          |

    @api @commandengine @CMD001InsertDataintoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> creating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in creation request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ011  | string        | boolean   | 400          |
            | CQ012  | string        | numeric   | 400          |
            | CQ013  | string        | date      | 400          |
            | CQ014  | string        | timestamp | 400          |
            | CQ015  | string        | list      | 400          |
            | CQ016  | boolean       | string    | 400          |
            | CQ017  | boolean       | numeric   | 400          |
            | CQ018  | boolean       | date      | 400          |
            | CQ019  | boolean       | timestamp | 400          |
            | CQ020  | boolean       | list      | 400          |
            | CQ021  | numeric       | string    | 400          |
            | CQ022  | numeric       | boolean   | 400          |
            | CQ023  | numeric       | date      | 400          |
            | CQ024  | numeric       | timestamp | 400          |
            | CQ025  | numeric       | list      | 400          |
            | CQ026  | date          | string    | 400          |
            | CQ027  | date          | boolean   | 400          |
            | CQ028  | date          | numeric   | 400          |
            | CQ029  | date          | timestamp | 400          |
            | CQ030  | date          | list      | 400          |
            | CQ031  | timestamp     | string    | 400          |
            | CQ032  | timestamp     | boolean   | 400          |
            | CQ033  | timestamp     | numeric   | 400          |
            | CQ034  | timestamp     | date      | 400          |
            | CQ035  | timestamp     | list      | 400          |
            | CQ036  | list          | string    | 400          |
            | CQ037  | list          | boolean   | 400          |
            | CQ038  | list          | numeric   | 400          |
            | CQ039  | list          | date      | 400          |
            | CQ040  | list          | timestamp | 400          |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> updating and pushing the data through the command engine with <valuetype> payload
        When <testid> updating and pushed through the command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ041  | valid     | 200          | success        |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> updating and pushing the data through the command engine with <valuetype> payload
        When <testid> updating and pushed through the command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ042  | invalid   | 400          | error          |
            | CQ043  | null      | 400          | error          |
            | CQ044  | empty     | 400          | error          |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> updating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in update request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ041  | string        | string    | 200          |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> updating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in update request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ045  | boolean       | boolean   | 200          |
            | CQ046  | numeric       | numeric   | 200          |
            | CQ047  | date          | date      | 200          |
            | CQ048  | timestamp     | timestamp | 200          |
            | CQ049  | list          | list      | 200          |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> updating and pushing the data by change in the column type of <attributeType> but writting <valuetype> in payload
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> in update request
        Then command engine response should be as <responsecode>
        Examples:
            | testid | attributeType | valuetype | responsecode |
            | CQ050  | string        | boolean   | 400          |
            | CQ051  | string        | numeric   | 400          |
            | CQ052  | string        | date      | 400          |
            | CQ053  | string        | timestamp | 400          |
            | CQ054  | string        | list      | 400          |
            | CQ055  | boolean       | string    | 400          |
            | CQ056  | boolean       | numeric   | 400          |
            | CQ057  | boolean       | date      | 400          |
            | CQ058  | boolean       | timestamp | 400          |
            | CQ059  | boolean       | list      | 400          |
            | CQ060  | numeric       | string    | 400          |
            | CQ061  | numeric       | boolean   | 400          |
            | CQ062  | numeric       | date      | 400          |
            | CQ063  | numeric       | timestamp | 400          |
            | CQ064  | numeric       | list      | 400          |
            | CQ065  | date          | string    | 400          |
            | CQ066  | date          | boolean   | 400          |
            | CQ067  | date          | numeric   | 400          |
            | CQ068  | date          | timestamp | 400          |
            | CQ069  | date          | list      | 400          |
            | CQ070  | timestamp     | string    | 400          |
            | CQ071  | timestamp     | boolean   | 400          |
            | CQ072  | timestamp     | numeric   | 400          |
            | CQ073  | timestamp     | date      | 400          |
            | CQ074  | timestamp     | list      | 400          |
            | CQ075  | list          | string    | 400          |
            | CQ076  | list          | boolean   | 400          |
            | CQ077  | list          | numeric   | 400          |
            | CQ078  | list          | date      | 400          |
            | CQ079  | list          | timestamp | 400          |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> update the data by change in the criteria with <valuetype>
        When <testid> updating and pushed through the command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ080  | valid     | 200          | success        |

    @api @commandengine @CMD002UpdateDatadelongingtoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> update the data by change in the criteria with <valuetype>
        When <testid> updating and pushed through the command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ081  | invalid   | 400          | error          |
            | CQ082  | null      | 400          | error          |
            | CQ083  | empty     | 400          | error          |

    @api @commandengine @CMD004ValidateCommand @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> validating the data through the command engine with <valuetype> payload
        When <testid> validating the data through command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ084  | valid     | 200          | success        |

    @api @commandengine @CMD004ValidateCommand @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> validating the data through the command engine with <valuetype> payload
        When <testid> validating the data through command engine with <valuetype> payload
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ085  | invalid   | 400          | error          |
            | CQ086  | null      | 400          | error          |
            | CQ087  | empty     | 400          | error          |

    @api @commandengine @CMD004ValidateCommand @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> validating the data through the command engine with criteria as <valuetype>
        When <testid> validating the data through command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ088  | valid     | 200          | success        |

    @api @commandengine @CMD004ValidateCommand @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> validating the data through the command engine with criteria as <valuetype>
        When <testid> validating the data through command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ089  | invalid   | 400          | error          |
            | CQ090  | null      | 400          | error          |
            | CQ091  | empty     | 400          | error          |

    @api @commandengine @CMD003DeleteDataBelongingtoaModel @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> deleting the data through the command engine with criteria as <valuetype>
        When <testid> deleting the data through command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ092  | valid     | 200          | success        |

    @api @commandengine @CMD003DeleteDataBelongingtoaModel @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> deleting the data through the command engine with criteria as <valuetype>
        When <testid> deleting the data through command engine with criteria as <valuetype>
        Then <responsecode> and <responsestatus> is received in the response for command engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ093  | invalid   | 400          | error          |
            | CQ094  | null      | 400          | error          |
            | CQ095  | empty     | 400          | error          |

    @api @commandengine @CMD007AsyncExecutionCommand @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> create and init the metadata schema with attribute type as <attributeType> and passing different values as <valuetype>
        # When create a new tenant
        # When create a tenant key
        # When create a tenant config
        # When create a tenant billing
        # When create a tenant contact
        # When create a tenant database
        # When metadata init is created for valid tenant
        # Then responsecode 201 and responsemessage success should be received for metadata init
        # When create a role
        # Then role response 201 should be success
        # Then Get the default schema id of the tenant
        # When set the permissions for the role
        # Then permission response 201 should be success
        When <testid> command engine is pushing the random <attributeType> with different <valuetype> using the command engine
        Then command engine response should be as <responsecode>

        Examples:
            | testid | attributeType | valuetype | responsecode |
            | F101   | string        | string    | 200          |
            | F102   | string        | boolean   | 200          |
            | F103   | string        | numeric   | 200          |
            | F104   | string        | numeric   | 200          |

    @api @commandengine @CMD007AsyncExecutionCommand @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> Create and init the metadata schema then push the multiple values at a same instance using command engine
        # When create a new tenant
        # When create a tenant key
        # When create a tenant config
        # When create a tenant billing
        # When create a tenant contact
        # When create a tenant database
        # When metadata init is created for valid tenant
        # Then responsecode 201 and responsemessage success should be received for metadata init
        # When create a role
        # Then role response 201 should be success
        # Then Get the default schema id of the tenant
        # When set the permissions for the role
        # Then permission response 201 should be success
        When <testid> command engine is pushing the multiple <count> values using the command engine
        Then command engine response should be as <responsecode>

        Examples:
            | testid | count | responsecode |
            | F105   | 1     | 200          |
            | F106   | 2     | 200          |
            | F107   | 3     | 200          |
            | F108   | 4     | 200          |

    @api @commandengine @CMD005AuthenticateCommand @scenario @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Pushing the data using command engine without setting the role and permission
        When create a new tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact
        When create a tenant database
        When metadata init is created for valid tenant
        Then Get the default schema id of the tenant
        When command engine is pushing data to the random model without Role Permission
        Then command engine response should be as 400

    @api @commandengine @CMD005AuthenticateCommand @scenario @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Pushing the data to different table using command engine without setting the roles and permissions
        When create a new tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact
        When create a tenant database
        When metadata init is created for valid tenant
        When create a role
        Then role response 201 should be success
        Then Get the default schema id of the tenant
        When set the permissions for the role
        Then permission response 201 should be success
        When command engine is pushing data to the different table
        Then command engine response should be as 400

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers can be configured and executed
        When Verify the notification triggers are configured
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed when a new record is created
        When Verify the triggers are executed when a new record is created
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed when a record is updated
        When Verify the triggers are executed when a record is updated
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed when a record is deleted
        When Verify the triggers are executed when a record is deleted
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed before a record is created
        When Verify the triggers are executed before a record is created
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed before a record is updated
        When Verify the triggers are executed before a record is updated
        Then Verify the triggers are executed

    @adminui @commandengine @CMD008ExecuteTriggers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the triggers are executed before a record is deleted
        When Verify the triggers are executed before a record is deleted
        Then Verify the triggers are executed

    @adminui @commandengine @CMD009EmitEvent @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the event is emitted after the command is executed
        When Create a new event
        When Command is executed
        Then Verify the event is emitted

    @adminui @commandengine @CMD009EmitEvent @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the events will be sent to the event engine for various subscribers
        When Create a new event
        When Command is executed
        Then Verify the event is sent to the event engine


    #Query Engine
    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @positive @notreviewed @superadmin @updated @notautomated @test
    Scenario: <testid> querying a data from a table with change in operation as <valuetype> in query engine
        When <testid> querying a data from a table with change in operation as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype  | responsecode | responsestatus |
            | CQ101  | fetch-many | 200          | success        |

    @api @queryengine @QRYFetchSingleRecord @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in operation as <valuetype> in query engine
        When <testid> querying a data from a table with change in operation as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ102  | fetch-one | 200          | success        |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in mode as <valuetype> in query engine
        When <testid> querying a data from a table with change in mode as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ103  | view      | 200          | success        |

    @api @queryengine @QRY003FetchRecordForEditing @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in mode as <valuetype> in query engine
        When <testid> querying a data from a table with change in mode as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ104  | edit      | 200          | success        |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in mode as <valuetype> in query engine
        When <testid> querying a data from a table with change in mode as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ105  | string    | 400          | error          |
            | CQ106  | empty     | 400          | error          |
            | CQ107  | null      | 400          | error          |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in attribute as <valuetype> in query engine
        When <testid> querying a data from a table with change in attribute as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ108  | valid     | 200          | success        |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with change in attribute as <valuetype> in query engine
        When <testid> querying a data from a table with change in attribute as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ109  | invalid   | 400          | error          |
            | CQ110  | empty     | 400          | error          |
            | CQ111  | null      | 400          | error          |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with multiple attributes as <valuetype> in query engine
        When <testid> querying a data from a table with multiple attributes as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ112  | valid     | 200          | success        |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> querying a data from a table with multiple attributes as <valuetype> in query engine
        When <testid> querying a data from a table with multiple attributes as <valuetype>
        Then <responsecode> and <responsestatus> is received in the query engine
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | CQ113  | invalid   | 400          | error          |
            | CQ114  | empty     | 400          | error          |
            | CQ115  | null      | 400          | error          |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: <testid> Create and init the metadata schema then pass the data and get the multiple values using query engine
        # When create a new tenant
        # When create a tenant key
        # When create a tenant config
        # When create a tenant billing
        # When create a tenant contact
        # When create a tenant database
        # When metadata init is created for valid tenant
        # Then responsecode 201 and responsemessage success should be received for metadata init
        # When create a role
        # Then role response 201 should be success
        # Then Get the default schema id of the tenant
        # When set the permissions for the role
        # Then permission response 201 should be success
        When <testid> command engine is pushing the values multiple times with <count> using the command engine
        Then command engine response should be as <responsecode>
        When <qtestid> query engine is querying the multiple <count> values
        Then query engine response should be as <qresponsecode>

        Examples:
            | testid | count | responsecode | qtestid | qresponsecode |
            | F109   | 4     | 200          | F110    | 200           |

    @api @queryengine @QRY001FetchMultipleRecords @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Quering the data from a empty table using query engine
        When create a new tenant
        When create a tenant key
        When create a tenant config
        When create a tenant billing
        When create a tenant contact
        When create a tenant database
        When metadata init is created for valid tenant
        When create a role
        Then role response 201 should be success
        Then Get the default schema id of the tenant
        When set the permissions for the role
        Then permission response 201 should be success
        When query engine is querying the random model
        Then query engine response should be as 200 with 0 records

    @adminui @queryengine @QRY004ExportRecordsIntoDifferentFileFormats @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Export the records into file format <fileformat>
        When Query the records from the table
        Then Verify the records are exist
        When Export the records into <fileformat>
        Then Verify the records are exported into <fileformat>
        Examples:
            | fileformat |
            | csv        |
            | json       |
            | xml        |
            | pdf        |
            | excel      |

    @adminui @queryengine @QRY005StreamResultSets @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Stream the result set while returning
        When Query the records from the table
        Then Verify the records are exist
        When Stream the result set
        Then Verify the records are streamed

    @adminui @queryengine @QRY006CacheResults @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Cache the results for the query
        When Query the records from the table
        Then Verify the records are exist
        When Cache the results
        Then Verify the records are cached

    @adminui @queryengine @QRY006CacheResults @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Update the cached results for the query
        When Query the records from the table
        Then Verify the records are exist
        When Cache the results
        Then Verify the records are cached
        When Update the cached results
        Then Verify the records are updated
