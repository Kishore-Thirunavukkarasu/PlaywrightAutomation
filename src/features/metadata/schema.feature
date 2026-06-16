Feature: Schema CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete in address api
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /metadata/v1/schemas

    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema

    # @api @metadataAPI @schema @system @special @functional @positive @notreviewed @superadmin
    # Scenario: Create a metadata and schema using metadata init
    #     When create a new tenant
    #     When create a tenant key
    #     When create a tenant config
    #     When create a tenant billing
    #     When create a tenant contact
    #     When create a tenant database
    #     When metadata init is created for valid tenant
    #     Then responsecode 201 and responsemessage success should be received for metadata init
    #     Then Get the default schema id of the tenant

    #Get Method
    @api @metadataAPI @schema @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a schema by quering id as <value>
        When <testid> <query parameter> includes <value> for get schema request
        Then <responsecode> and <responsestatus> and <records> is received for get request in schema
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C2282  | id              | valid | 200          | success        | 1       |

    @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a schema by quering id as <value>
        When <testid> <query parameter> includes <value> for get schema request
        Then <responsecode> and <responsestatus> and <records> is received for get request in schema
        Examples:
            | testid | query parameter | value                | responsecode | responsestatus | records |
            | C2283  | id              | invalid id           | 400          | success        | 0       |
            | C2284  | id              | empty                | 400          | error          | 0       |
            | C2285  | id              | null                 | 400          | error          | 0       |
            | C2286  | id              | differennt schema id | 400          | error          | 0       |

    @api @metadataAPI @schema @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a single schema by passing <parameter> with <value> in request
        When <testid> schema path with <parameter> having <value> is passed in the request
        Then <responsecode> and <responsestatus> is received in the response for get single request in schema
        Examples:
            | testid | parameter | value | responsecode | responsestatus |
            | C2310  | id        | valid | 200          | success        |

    @api @metadataAPI @schema @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a single schema by passing <parameter> with <value> in request
        When <testid> schema path with <parameter> having <value> is passed in the request
        Then <responsecode> and <responsestatus> is received in the response for get single request in schema
        Examples:
            | testid | parameter | value   | responsecode | responsestatus |
            | C2311  | id        | empty   | 422          | error          |
            | C2312  | id        | null    | 422          | error          |
            | C2313  | id        | invalid | 400          | error          |

    #Update Method
    @api @metadataAPI @schema @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a schema by adding a new model in the schema request with existing model
        When <testid> updating a schema by adding a new model in the schema request with existing model
        Then <responsecode> and <responsestatus> is received in the response for schema updation
        Examples:
            | testid | responsecode | responsestatus |
            | C2395  | 200          | success        |

    @api @metadataAPI @schema @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating the schema model name and display name in the existing schema
        When <testid> updating the schema model name and display name in the existing schema
        Then <responsecode> and <responsestatus> is received in the response for schema updation
        Examples:
            | testid | responsecode | responsestatus |
            | C2396  | 200          | success        |

    @api @metadataAPI @schema @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating the schema attribute fields in the existing schema
        When <testid> updating the schema attribute fields in the existing schema
        Then <responsecode> and <responsestatus> is received in the response for schema updation
        Examples:
            | testid | responsecode | responsestatus |
            | C2397  | 200          | success        |

    @api @metadataAPI @schema @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating the schema with adding attribute to existing table
        When <testid> updating the schema with adding attribute to existing table
        Then <responsecode> and <responsestatus> is received in the response for schema updation
        Examples:
            | testid | responsecode | responsestatus |
            | C2398  | 200          | success        |


# *************************************************************************************************************
#The Schema creation is integrated with the metadata init method in recent changes. So the below scenarios are not valid now.
#Kept for feature reference.

# @api @metadataAPI @schema @system @post @functional @smoke @deferred
# Scenario: <testid> Creating a metadata schema with <valuetype>
#     When <testid> metadata schema <parameter> having <valuetype> is passed in the schema request
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | valuetype    | responsecode | responsestatus |
#         | C2376  | schema    | valid schema | 201          | success        |

# @api @metadataAPI @schema @system @post @functional @negative @deferred
# Scenario: <testid> Creating a metadata schema with <valuetype>
#     When <testid> metadata schema <parameter> having <valuetype> is passed in the schema request
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | valuetype       | responsecode | responsestatus |
#         | C2377  | schema    | object          | 422          | error          |
#         | C2378  | schema    | null            | 422          | error          |
#         | C2379  | schema    | array of object | 422          | error          |

# @api @metadataAPI @schema @system @post @functional @positive @deferred
# Scenario: <testid> Creating a metadata schema models as <valuetype>
#     When <testid> metadata schema <parameter> having <valuetype> is passed in the schema request
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | valuetype    | responsecode | responsestatus |
#         | C2380  | models    | valid models | 201          | success        |

# @api @metadataAPI @schema @system @post @functional @negative @deferred
# Scenario: <testid> Creating a metadata schema models as <valuetype>
#     When <testid> metadata schema <parameter> having <valuetype> is passed in the schema request
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | valuetype   | responsecode | responsestatus |
#         | C2381  | models    | empty array | 400          | error          |
#         | C2381  | models    | empty array | 400          | error          |
#         | C2382  | models    | null        | 422          | error          |
#         | C2383  | models    | object      | 422          | error          |

# @api @metadataAPI @schema @system @post @functional @positive @deferred
# Scenario: <testid> Creating a multiple metadata schema models with <count> as number
#     When <testid> creating a multiple metadata schema models with change in <count>
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | count | responsecode | responsestatus |
#         | C2384  | 2     | 201          | success        |
#         | C2385  | 5     | 201          | success        |
#         | C2386  | 50    | 201          | success        |
#         | C2387  | 100   | 201          | success        |

# @api @metadataAPI @schema @system @post @functional @negative @deferred
# Scenario: <testid> creating a metadata schema model with same name
#     When <testid> creating a metadata schema model with same <parameter>
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | responsecode | responsestatus |
#         | C2388  | name      | 400          | error          |

# @api @metadataAPI @schema @system @post @functional @positive @deferred
# Scenario: <testid> creating a metadata schema attribute without primary value as id
#     When C2389 creating a metadata schema attribute without primary value as id
#     Then 400 and error is received in the response for schema creation

# @api @metadataAPI @schema @system @post @functional @positive @deferred
# Scenario: <testid> creating a metadata schema attribute with <count> as number
#     When <testid> creating a metadata schema attribute with <count> as number
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | count | responsecode | responsestatus |
#         | C2390  | 2     | 201          | success        |
#         | C2391  | 5     | 201          | success        |
#         | C2392  | 100   | 201          | success        |
#         | C2393  | 1000  | 201          | success        |

# @api @metadataAPI @schema @system @post @functional @negative @deferred
# Scenario: <testid> Creating a metadata schema attribute with same name
#     When <testid> creating a metadata schema attribute with same <parameter>
#     Then <responsecode> and <responsestatus> is received in the response for schema creation
#     Examples:
#         | testid | parameter | responsecode | responsestatus |
#         | C2394  | name      | 400          | error          |

# *************************************************************************************************************

# ************************************************* Get Method *************************************************

# @api @metadataAPI @schema @system @get @functional @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering name as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2286  | name            | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering name as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2287  | name            | invalid | 400          | error          | 0       |
#         | C2288  | name            | empty   | 400          | error          | 0       |
#         | C2289  | name            | null    | 400          | error          | 0       |

# @api @metadataAPI @schema @system @get @functional @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering namespace as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2290  | namespace       | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering namespace as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2291  | namespace       | invalid | 400          | error          | 0       |
#         | C2292  | namespace       | empty   | 400          | error          | 0       |
#         | C2293  | namespace       | null    | 400          | error          | 0       |

# @api @metadataAPI @schema @system @get @functional @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering templateName as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2294  | templateName    | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering templateName as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2295  | templateName    | invalid | 400          | error          | 0       |
#         | C2296  | templateName    | empty   | 400          | error          | 0       |
#         | C2297  | templateName    | null    | 400          | error          | 0       |

# @api @metadataAPI @schema @system @get @function @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering version as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2298  | version         | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @function @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering version as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2299  | version         | invalid | 400          | error          | 0       |
#         | C2300  | version         | empty   | 400          | error          | 0       |
#         | C2301  | version         | null    | 400          | error          | 0       |

# @api @metadataAPI @schema @system @get @functional @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering isActive as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2302  | isActive        | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering isActive as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2303  | isActive        | invalid | 400          | error          | 0       |
#         | C2304  | isActive        | empty   | 400          | error          | 0       |
#         | C2305  | isActive        | null    | 400          | error          | 0       |

# @api @metadataAPI @schema @system @get @functional @positive @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering description as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value | responsecode | responsestatus | records |
#         | C2306  | description     | valid | 200          | success        | 1       |

# @api @metadataAPI @schema @system @get @functional @negative @notreviewed @superadmin
# Scenario: <testid> Getting a schema by quering description as <value>
#     When <testid> <query parameter> includes <value> for get schema request
#     Then <responsecode> and <responsestatus> and <records> is received for get request in schema
#     Examples:
#         | testid | query parameter | value   | responsecode | responsestatus | records |
#         | C2307  | description     | invalid | 400          | error          | 0       |
#         | C2308  | description     | empty   | 400          | error          | 0       |
#         | C2309  | description     | null    | 400          | error          | 0       |