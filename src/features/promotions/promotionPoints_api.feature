Feature: Promotion Point CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete.
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Nandhini Kesavan
    # updated by  = Kishore Thirunavukkarasu
    # project url = /phoenix/services/points

    # Get - The promotion point doesn't have a create[POST] function, so we will skip it.
    # Put - The promotion point have same PUT method for accept and reject.

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2401  | id              | valid   | 200          | success        | 1       |
    #         | C2402  | id              | invalid | 400          | error          | 0       |
    #         | C2403  | id              | null    | 400          | error          | 0       |
    #         | C2404  | id              | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2405  | promotionId     | valid   | 200          | success        | 1       |
    #         | C2406  | promotionId     | invalid | 400          | error          | 0       |
    #         | C2407  | promotionId     | null    | 400          | error          | 0       |
    #         | C2408  | promotionId     | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2409  | ruleId          | valid   | 200          | success        | 1       |
    #         | C2410  | ruleId          | invalid | 400          | error          | 0       |
    #         | C2411  | ruleId          | null    | 400          | error          | 0       |
    #         | C2412  | ruleId          | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2413  | userId          | valid   | 200          | success        | 1       |
    #         | C2414  | userId          | invalid | 400          | error          | 0       |
    #         | C2415  | userId          | null    | 400          | error          | 0       |
    #         | C2416  | userId          | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2417  | points          | valid   | 200          | success        | 1       |
    #         | C2418  | points          | invalid | 400          | error          | 0       |
    #         | C2419  | points          | null    | 400          | error          | 0       |
    #         | C2420  | points          | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2421  | spendable       | valid   | 200          | success        | 1       |
    #         | C2422  | spendable       | invalid | 400          | error          | 0       |
    #         | C2423  | spendable       | null    | 400          | error          | 0       |
    #         | C2424  | spendable       | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2425  | calculatedAt    | valid   | 200          | success        | 1       |
    #         | C2426  | calculatedAt    | invalid | 400          | error          | 0       |
    #         | C2427  | calculatedAt    | null    | 400          | error          | 0       |
    #         | C2428  | calculatedAt    | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2429  | expiryAt        | valid   | 200          | success        | 1       |
    #         | C2430  | expiryAt        | invalid | 400          | error          | 0       |
    #         | C2431  | expiryAt        | null    | 400          | error          | 0       |
    #         | C2432  | expiryAt        | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2433  | description     | valid   | 200          | success        | 1       |
    #         | C2434  | description     | invalid | 400          | error          | 0       |
    #         | C2435  | description     | null    | 400          | error          | 0       |
    #         | C2436  | description     | empty   | 400          | error          | 0       |

    # @api @promotionpointsAPI @promotionpointsapi @system @get @functional @reviewed
    # Scenario: <testid> Getting a promotionpoints by <query parameter> as <value>
    #     When <testid> <query parameter> includes <value> for get promotionpoints api
    #     Then <responsecode>, <responsestatus> and <records> is received for get request in promotionpoints
    #     Examples:
    #         | testid | query parameter | value   | responsecode | responsestatus | records |
    #         | C2437  | status          | valid   | 200          | success        | 1       |
    #         | C2438  | status          | invalid | 400          | error          | 0       |
    #         | C2439  | status          | null    | 400          | error          | 0       |
    #         | C2440  | status          | empty   | 400          | error          | 0       |

    @api @promotionpointsAPI @promotionpointsapi @system @getsingle @functional @reviewed
    Scenario: <testid> getting a single promotionpoints with promotionpoints path parameter
        When <testid> promotionpoints path with <parameter> having <value> is passed in the promotionpoints request
        Then <responsecode> and <responsestatus> is received for promotionpoints request
        Examples:
            | testid | parameter | value | responsecode | responsestatus |
            | C243   | id        | valid | 200          | success        |
            | C244   | id        | empty | 400          | error          |
            | C245   | id        | null  | 400          | error          |
            | C246   | id        | uuid  | 400          | error          |

    @api @promotionpointsAPI @promotionpointsapi @system @put @functional @reviewed
    Scenario: <testid> Updating a promotionpoints to reject by updating <parameter> of <valuetype> having <length> characters
        When <testid> Updating a points to reject by updating <parameter> of <valuetype> having <length> characters in the promotionpoints request
        Then <responsecode> and <responsestatus> is received for promotionpoints request
        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C2443  | id        | uuid         | 36       | 200          | success        |
            | C2444  | id        | empty        | empty    | 400          | error          |
            | C2445  | id        | null         | null     | 400          | error          |
            | C2446  | id        | alphabets    | 36       | 400          | error          |
            | C2447  | id        | numeric      | 36       | 400          | error          |
            | C2448  | id        | boolean      | boolean  | 400          | error          |
            | C2449  | id        | alphanumeric | 37       | 400          | error          |
            | C2450  | id        | alphanumeric | 36       | 400          | error          |
            | C2451  | id        | existing     | existing | 400          | error          |
            | C2452  | id        | special char | 32       | 400          | error          |

    @api @promotionpointsAPI @promotionpointsapi @system @put @functional @reviewed
    Scenario: <testid> Updating a promotionpoints to approve by updating <parameter> of <valuetype> having <length> characters
        When <testid> Updating a points to approve by updating <parameter> of <valuetype> having <length> characters in the promotionpoints request
        Then <responsecode> and <responsestatus> is received for promotionpoints request
        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C2453  | id        | uuid         | 36       | 200          | success        |
            | C2454  | id        | empty        | empty    | 400          | error          |
            | C2455  | id        | null         | null     | 400          | error          |
            | C2456  | id        | alphabets    | 36       | 400          | error          |
            | C2457  | id        | numeric      | 36       | 400          | error          |
            | C2458  | id        | boolean      | boolean  | 400          | error          |
            | C2459  | id        | alphanumeric | 37       | 400          | error          |
            | C2460  | id        | alphanumeric | 36       | 400          | error          |
            | C2461  | id        | existing     | existing | 400          | error          |
            | C2462  | id        | special char | 32       | 400          | error          |

# @api @promotionpointsAPI @promotionpointsapi @system @put @functional @reviewed
# Scenario:<testid> Update a promotion points with multiple records
#     When <testid> points having multiple records <records> is passed in promotion points api for update to accept or reject
#     Then <responsecode> and <responsestatus> is received for promotionpoints request
#     Examples:
#         | testid | records         | responsecode | responsestatus |
#         | C2481  | multiple record | 200          | success        |
#         | C2482  | empty record    | 400          | bad request    |
#         | C2483  | no record       | 400          | bad request    |

# @api @promotionpointsAPI @promotionpointsapi @system @put @functional @reviewed
# Scenario: <testid> Update a promotion points with records of type <typeofentity> in <apitype>
#     When <testid> points having records of type <typeofentity> in <apitype> is passed in promotion points api
#     Then <responsecode> and <responsestatus> is received for promotionpoints request
#     Examples:
#         | testid | typeofentity | apitype | responsecode | responsestatus |
#         | C2484  | rejected     | reject  | 200          | success        |
#         | C2485  | awarded      | accept  | 200          | success        |
#         | C2486  | rejected     | accept  | 400          | bad request    |
#         | C2487  | awarded      | reject  | 400          | bad request    |

# status of the points is not developed and having descrepancies. will continue the test cases once those api is developed.
# https://gitlab.biw-services.com/phoenix/services/points/-/issues/16
