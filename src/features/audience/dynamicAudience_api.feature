Feature: Dynamic Audience CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /phoenix/services/audience

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C2010  | name      | alphabets | 10     | 201          | success        |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype                 | length   | responsecode | responsestatus |
            | C2001  | code        | numeric                   | 3        | 201          | success        |
            | C2014  | name        | alphabets                 | 255      | 201          | success        |
            | C2020  | description | alphabets                 | 200      | 201          | success        |
            | C2021  | description | alphanumeric              | 200      | 201          | success        |
            | C2022  | description | numeric                   | 200      | 201          | success        |
            | C2023  | description | alphanumeric special char | 200      | 201          | success        |
            | C2027  | description | existing                  | existing | 201          | success        |
            | C2028  | description | alphabets                 | 4000     | 201          | success        |
            | C2031  | type        | dynamic                   | 7        | 201          | success        |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C2002  | code        | numeric      | 4        | 400          | error          |
            | C2003  | code        | numeric      | 2        | 400          | error          |
            | C2004  | code        | alphabets    | 3        | 400          | error          |
            | C2005  | code        | alphanumeric | 3        | 400          | error          |
            | C2006  | code        | special char | 3        | 400          | error          |
            | C2007  | code        | null         | null     | 400          | error          |
            | C2008  | code        | empty        | empty    | 400          | error          |
            | C2009  | code        | existing     | existing | 400          | error          |
            | C2011  | name        | alphabets    | 256      | 400          | error          |
            | C2012  | name        | empty        | empty    | 400          | error          |
            | C2013  | name        | null         | null     | 400          | error          |
            | C2015  | name        | special char | 20       | 400          | error          |
            | C2016  | name        | alphanumeric | 25       | 400          | error          |
            | C2017  | name        | numeric      | 25       | 400          | error          |
            | C2018  | name        | existing     | existing | 400          | error          |
            | C2019  | name        | boolean      | boolean  | 400          | error          |
            | C2024  | description | empty        | empty    | 400          | error          |
            | C2025  | description | null         | null     | 400          | error          |
            | C2026  | description | alphabets    | 4001     | 400          | error          |
            | C2029  | description | alphanumeric | 4001     | 400          | error          |
            | C2030  | description | boolean      | boolean  | 400          | error          |
            | C2032  | type        | empty        | empty    | 400          | error          |
            | C2033  | type        | null         | null     | 400          | error          |
            | C2034  | type        | alphabets    | 6        | 400          | error          |
            | C2035  | type        | numeric      | 6        | 400          | error          |
            | C2036  | type        | boolean      | boolean  | 400          | error          |
            | C2037  | type        | existing     | existing | 400          | error          |
            | C2038  | type        | special char | 6        | 400          | error          |
            | C2039  | type        | alphanumeric | 6        | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a dynamic audience by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get dynamic audience api
        Then <responsecode>, <responsestatus> and <records> is received for get request in dynamic audience api
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C2040  | id              | valid | 200          | success        | 1       |

    @api @audienceAPI @dynamicaudienceapi @system @get @functional @positive @notreviewed @superadmin
    Scenario: <testid> Getting a dynamic audience by quering with positive <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get dynamic audience api
        Then <responsecode>, <responsestatus> and <records> is received for get request in dynamic audience api
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C2044  | code            | valid | 200          | success        | 1       |
            | C2048  | name            | valid | 200          | success        | 1       |
            | C2052  | description     | valid | 200          | success        | 1       |
            | C2056  | type            | valid | 200          | success        | 1       |

    @api @audienceAPI @dynamicaudienceapi @system @get @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a dynamic audience by quering with negative <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get dynamic audience api
        Then <responsecode>, <responsestatus> and <records> is received for get request in dynamic audience api
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C2041  | id              | invalid | 400          | error          | 0       |
            | C2042  | id              | null    | 400          | error          | 0       |
            | C2043  | id              | empty   | 400          | error          | 0       |
            | C2045  | code            | invalid | 400          | error          | 0       |
            | C2046  | code            | null    | 400          | error          | 0       |
            | C2047  | code            | empty   | 400          | error          | 0       |
            | C2049  | name            | invalid | 400          | error          | 0       |
            | C2050  | name            | null    | 400          | error          | 0       |
            | C2051  | name            | empty   | 400          | error          | 0       |
            | C2053  | description     | invalid | 400          | error          | 0       |
            | C2054  | description     | null    | 400          | error          | 0       |
            | C2055  | description     | empty   | 400          | error          | 0       |
            | C2057  | type            | invalid | 400          | error          | 0       |
            | C2058  | type            | null    | 400          | error          | 0       |
            | C2059  | type            | empty   | 400          | error          | 0       |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> Updating a dynamic audience by updating <parameter> of <valuetype> having <length> characters in the dynamic audience request
        Then <responsecode> and <responsestatus> is received with updated dynamic audience
        Examples:
            | testid | query parameter | value     | responsecode | responsestatus | records |
            | C2069  | name            | alphabets | 10           | 200            | success |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> Updating a dynamic audience by updating <parameter> of <valuetype> having <length> characters in the dynamic audience request
        Then <responsecode> and <responsestatus> is received with updated dynamic audience
        Examples:
            | testid | parameter   | valuetype                 | length   | responsecode | responsestatus |
            | C2060  | code        | numeric                   | 3        | 200          | success        |
            | C2068  | code        | existing                  | existing | 200          | success        |
            | C2077  | name        | existing                  | existing | 200          | success        |
            | C2073  | name        | alphabets                 | 255      | 200          | success        |
            | C2079  | description | alphabets                 | 200      | 200          | success        |
            | C2080  | description | alphanumeric              | 200      | 200          | success        |
            | C2081  | description | numeric                   | 200      | 200          | success        |
            | C2082  | description | alphanumeric special char | 200      | 200          | success        |
            | C2086  | description | existing                  | existing | 200          | success        |
            | C2087  | description | alphabets                 | 4000     | 200          | success        |
            | C2096  | type        | existing                  | existing | 200          | success        |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @negative @notreviewed @superadmin
    Scenario: <testid> Updating a dynamic audience with <parameter> having <valuetype> of <length> characters
        When <testid> Updating a dynamic audience by updating <parameter> of <valuetype> having <length> characters in the dynamic audience request
        Then <responsecode> and <responsestatus> is received with updated dynamic audience
        Examples:
            | testid | parameter   | valuetype    | length  | responsecode | responsestatus |
            | C2061  | code        | numeric      | 4       | 400          | error          |
            | C2062  | code        | numeric      | 2       | 400          | error          |
            | C2063  | code        | alphabets    | 3       | 400          | error          |
            | C2064  | code        | alphanumeric | 3       | 400          | error          |
            | C2065  | code        | special char | 3       | 400          | error          |
            | C2066  | code        | null         | null    | 400          | error          |
            | C2067  | code        | empty        | empty   | 400          | error          |
            | C2070  | name        | alphabets    | 256     | 400          | error          |
            | C2071  | name        | empty        | empty   | 400          | error          |
            | C2072  | name        | null         | null    | 400          | error          |
            | C2074  | name        | special char | 20      | 400          | error          |
            | C2075  | name        | alphanumeric | 25      | 400          | error          |
            | C2076  | name        | numeric      | 25      | 400          | error          |
            | C2078  | name        | boolean      | boolean | 400          | error          |
            | C2083  | description | empty        | empty   | 400          | error          |
            | C2084  | description | null         | null    | 400          | error          |
            | C2085  | description | alphabets    | 4001    | 400          | error          |
            | C2088  | description | alphanumeric | 4001    | 400          | error          |
            | C2089  | description | boolean      | boolean | 400          | error          |
            | C2090  | type        | static       | 6       | 400          | error          |
            | C2091  | type        | empty        | empty   | 400          | error          |
            | C2092  | type        | null         | null    | 400          | error          |
            | C2093  | type        | alphabets    | 6       | 400          | error          |
            | C2094  | type        | numeric      | 6       | 400          | error          |
            | C2095  | type        | boolean      | boolean | 400          | error          |
            | C2097  | type        | special char | 6       | 400          | error          |
            | C2098  | type        | alphanumeric | 6       | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a dynamic audience by passing id in path parameter
        When dynamic audience path with <parameter> having <value> is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received with dynamic audience request
        Examples:
            | testid | parameter         | value | responsecode | responsestatus |
            | C2099  | dynamicaudienceId | valid | 200          | success        |

    @api @audienceAPI @dynamicaudienceapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a dynamic audience by passing id in path parameter
        When dynamic audience path with <parameter> having <value> is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received with dynamic audience request
        Examples:
            | testid | parameter         | value   | responsecode | responsestatus |
            | C2100  | dynamicaudienceId | empty   | 400          | error          |
            | C2101  | dynamicaudienceId | null    | 400          | error          |
            | C2102  | dynamicaudienceId | invalid | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @delete @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Deleting a dynamic audience by passing id in path parameter
        When delete a <type> dynamic audience in the request
        Then <responsecode>, <responsestatus> and <response> is received with deletion message in the dynamic audience request
        Examples:
            | testid | type  | responsecode | responsestatus | response |
            | C2103  | valid | 200          | success        | success  |


    @api @audienceAPI @dynamicaudienceapi @system @delete @functional @negative @notreviewed @superadmin
    Scenario: <testid> Deleting a dynamic audience by passing id in path parameter
        When delete a <type> dynamic audience in the request
        Then <responsecode>, <responsestatus> and <response> is received with deletion message in the dynamic audience request
        Examples:
            | testid | type    | responsecode | responsestatus | response |
            | C2104  | invalid | 400          | error          | error    |
            | C2105  | null    | 400          | error          | error    |
            | C2106  | empty   | 400          | error          | error    |

    ########################################################################################################################
    #Rules Section

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                   | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-Job Roles Connnectors | valid     | 1      | 201          | success        |
            | C2108  | Rules-Job Roles Connnectors | valid     | 5      | 201          | success        |
            | C2109  | Rules-Job Roles Connnectors | null      | null   | 201          | success        |
            | C2110  | Rules-Job Roles Connnectors | empty     | empty  | 400          | error          |
            | C2111  | Rules-Job Roles Connnectors | invalid   | 1      | 400          | error          |
            | C2111  | Rules-Job Roles Connnectors | existing  | 1      | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                          | valuetype        | length   | responsecode | responsestatus |
            | C2112  | Rules-Job Roles connectorTableName | validcombination | -        | 201          | success        |
            | C2112  | Rules-Job Roles connectorTableName | valid            | -        | 400          | error          |
            | C2113  | Rules-Job Roles connectorTableName | invalid          | 10       | 400          | error          |
            | C2114  | Rules-Job Roles connectorTableName | null             | null     | 400          | error          |
            | C2115  | Rules-Job Roles connectorTableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles connectorTableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                     | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles connectorFkey | validcombination | -        | 201          | success        |
            | C2116  | Rules-Job Roles connectorFkey | valid            | -        | 400          | error          |
            | C2117  | Rules-Job Roles connectorFkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles connectorFkey | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles connectorFkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles connectorFkey | existing         | existing | 400          | error          |


    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter            | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles pkey | valid            | -        | 201          | success        |
            | C2117  | Rules-Job Roles pkey | validcombination | -        | 400          | error          |
            | C2117  | Rules-Job Roles pkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles pkey | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles pkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles pkey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                 | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles tableName | valid            | -        | 201          | success        |
            | C2117  | Rules-Job Roles tableName | validcombination | -        | 400          | error          |
            | C2117  | Rules-Job Roles tableName | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles tableName | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles tableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                 | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Job Roles Fields Id | valid     | 1        | 201          | success        |
            | C2108  | Rules-Job Roles Fields Id | valid     | 5        | 201          | success        |
            | C2109  | Rules-Job Roles Fields Id | null      | null     | 201          | success        |
            | C2110  | Rules-Job Roles Fields Id | empty     | empty    | 400          | error          |
            | C2111  | Rules-Job Roles Fields Id | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Job Roles Fields Id | existing  | existing | 400          | error          |

    #write the scenario for parameter Rules-Hierarchy Connectors
    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                  | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy Connectors | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy Connectors | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy Connectors | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy Connectors | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy Connectors | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy Connectors | existing  | existing | 400          | error          |

    #write the scenario for parameter Rules-Hierarchy connectorTableName
    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                          | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy connectorTableName | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy connectorTableName | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy connectorTableName | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy connectorTableName | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy connectorTableName | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy connectorTableName | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                     | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy connectorFkey | validcombination | -        | 201          | success        |
            | C2116  | Rules-Hierarchy connectorFkey | valid            | -        | 400          | error          |
            | C2117  | Rules-Hierarchy connectorFkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy connectorFkey | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy connectorFkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy connectorFkey | existing         | existing | 400          | error          |


    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter            | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy pkey | valid            | -        | 201          | success        |
            | C2117  | Rules-Hierarchy pkey | validcombination | -        | 400          | error          |
            | C2117  | Rules-Hierarchy pkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy pkey | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy pkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy pkey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                 | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy tableName | valid            | -        | 201          | success        |
            | C2117  | Rules-Hierarchy tableName | validcombination | -        | 400          | error          |
            | C2117  | Rules-Hierarchy tableName | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy tableName | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy tableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                 | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy Fields Id | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy Fields Id | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy Fields Id | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy Fields Id | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy Fields Id | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy Fields Id | existing  | existing | 400          | error          |

    ########################################################################################################################
    #update
    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                   | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-Job Roles Connnectors | valid     | 1      | 201          | success        |
            | C2108  | Rules-Job Roles Connnectors | valid     | 5      | 201          | success        |
            | C2109  | Rules-Job Roles Connnectors | null      | null   | 201          | success        |
            | C2110  | Rules-Job Roles Connnectors | empty     | empty  | 400          | error          |
            | C2111  | Rules-Job Roles Connnectors | invalid   | 1      | 400          | error          |
            | C2111  | Rules-Job Roles Connnectors | existing  | 1      | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                          | valuetype        | length   | responsecode | responsestatus |
            | C2112  | Rules-Job Roles connectorTableName | validcombination | -        | 201          | success        |
            | C2112  | Rules-Job Roles connectorTableName | valid            | -        | 400          | error          |
            | C2113  | Rules-Job Roles connectorTableName | invalid          | 10       | 400          | error          |
            | C2114  | Rules-Job Roles connectorTableName | null             | null     | 400          | error          |
            | C2115  | Rules-Job Roles connectorTableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles connectorTableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                     | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles connectorFkey | validcombination | -        | 201          | success        |
            | C2116  | Rules-Job Roles connectorFkey | valid            | -        | 400          | error          |
            | C2117  | Rules-Job Roles connectorFkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles connectorFkey | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles connectorFkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles connectorFkey | existing         | existing | 400          | error          |


    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter            | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles pkey | valid            | -        | 201          | success        |
            | C2117  | Rules-Job Roles pkey | validcombination | -        | 400          | error          |
            | C2117  | Rules-Job Roles pkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles pkey | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles pkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles pkey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                 | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Job Roles tableName | valid            | -        | 201          | success        |
            | C2117  | Rules-Job Roles tableName | validcombination | -        | 400          | error          |
            | C2117  | Rules-Job Roles tableName | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Job Roles tableName | null             | null     | 400          | error          |
            | C2119  | Rules-Job Roles tableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Job Roles tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                 | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Job Roles Fields Id | valid     | 1        | 201          | success        |
            | C2108  | Rules-Job Roles Fields Id | valid     | 5        | 201          | success        |
            | C2109  | Rules-Job Roles Fields Id | null      | null     | 201          | success        |
            | C2110  | Rules-Job Roles Fields Id | empty     | empty    | 400          | error          |
            | C2111  | Rules-Job Roles Fields Id | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Job Roles Fields Id | existing  | existing | 400          | error          |

    #write the scenario for parameter Rules-Hierarchy Connectors
    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                  | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy Connectors | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy Connectors | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy Connectors | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy Connectors | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy Connectors | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy Connectors | existing  | existing | 400          | error          |

    #write the scenario for parameter Rules-Hierarchy connectorTableName
    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                          | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy connectorTableName | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy connectorTableName | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy connectorTableName | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy connectorTableName | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy connectorTableName | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy connectorTableName | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                     | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy connectorFkey | validcombination | -        | 201          | success        |
            | C2116  | Rules-Hierarchy connectorFkey | valid            | -        | 400          | error          |
            | C2117  | Rules-Hierarchy connectorFkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy connectorFkey | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy connectorFkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy connectorFkey | existing         | existing | 400          | error          |


    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter            | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy pkey | valid            | -        | 201          | success        |
            | C2117  | Rules-Hierarchy pkey | validcombination | -        | 400          | error          |
            | C2117  | Rules-Hierarchy pkey | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy pkey | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy pkey | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy pkey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                 | valuetype        | length   | responsecode | responsestatus |
            | C2116  | Rules-Hierarchy tableName | valid            | -        | 201          | success        |
            | C2117  | Rules-Hierarchy tableName | validcombination | -        | 400          | error          |
            | C2117  | Rules-Hierarchy tableName | invalid          | 10       | 400          | error          |
            | C2118  | Rules-Hierarchy tableName | null             | null     | 400          | error          |
            | C2119  | Rules-Hierarchy tableName | empty            | empty    | 400          | error          |
            | C2115  | Rules-Hierarchy tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> Update <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success
        Examples:
            | testid | parameter                 | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-Hierarchy Fields Id | valid     | 1        | 201          | success        |
            | C2108  | Rules-Hierarchy Fields Id | valid     | 5        | 201          | success        |
            | C2109  | Rules-Hierarchy Fields Id | null      | null     | 201          | success        |
            | C2110  | Rules-Hierarchy Fields Id | empty     | empty    | 400          | error          |
            | C2111  | Rules-Hierarchy Fields Id | invalid   | 1        | 400          | error          |
            | C2111  | Rules-Hierarchy Fields Id | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                              | valuetype | length            | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCondition | valid     | conditionOperator | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCondition | empty     | empty             | 200          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCondition | null      | null              | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCondition | alphabets | 1                 | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCondition | numeric   | 1                 | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                             | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria | valid     | 1        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria | valid     | 5        | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria | null      | null     | 201          | success        |
            | C2110  | Rules-AdditionalCriteria RuleCriteria | empty     | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria | invalid   | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                           | valuetype | length            | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria RuleCondition | valid     | conditionOperator | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria RuleCondition | empty     | empty             | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria RuleCondition | null      | null              | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria RuleCondition | alphabets | 1                 | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria RuleCondition | numeric   | 1                 | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                        | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria Connectors | valid     | 1        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria Connectors | valid     | 5        | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria Connectors | null      | null     | 201          | success        |
            | C2110  | Rules-AdditionalCriteria RuleCriteria Connectors | empty     | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria Connectors | invalid   | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria Connectors | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                           | valuetype | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | valid     | 1        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | valid     | 5        | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | null      | null     | 201          | success        |
            | C2110  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | empty     | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | invalid   | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors ConnectorTableName | existing  | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                      | valuetype        | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | validcombination | -        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | valid            | -        | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | null             | null     | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | empty            | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | invalid          | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors connectorFKey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                             | valuetype        | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria connectors pkey | valid            | -        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria connectors pkey | validcombination | -        | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria connectors pkey | null             | null     | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria connectors pkey | empty            | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors pkey | invalid          | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors pkey | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                  | valuetype        | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria connectors tableName | valid            | -        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria connectors tableName | validcombination | -        | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria connectors tableName | null             | null     | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria connectors tableName | empty            | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors tableName | invalid          | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria connectors tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:

            | testid | parameter                                       | valuetype        | length   | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria tableName | valid            | -        | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria tableName | validcombination | -        | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria tableName | null             | null     | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria tableName | empty            | empty    | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria tableName | invalid          | 1        | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria tableName | existing         | existing | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                           | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria attributeName | valid     | -      | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria attributeName | invalid   | -      | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria attributeName | null      | null   | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria attributeName | empty     | empty  | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                       | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria attributeDetails dataType | alphabets | -      | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria attributeDetails dataType | numeric   | -      | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria attributeDetails dataType | null      | null   | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria attributeDetails dataType | empty     | empty  | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                           | valuetype         | length | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria attributeDetails ruleFunction | conditionOperator | -      | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria attributeDetails ruleFunction | empty             | empty  | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria attributeDetails ruleFunction | null              | null   | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria attributeDetails ruleFunction | alphabets         | 1      | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria attributeDetails ruleFunction | numeric           | 1      | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                             | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria attributeDetails hasExternalApi | boolean   | -      | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria attributeDetails hasExternalApi | empty     | empty  | 400          | error          |
            | C2109  | Rules-AdditionalCriteria RuleCriteria attributeDetails hasExternalApi | null      | null   | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria attributeDetails hasExternalApi | alphabets | 1      | 400          | error          |
            | C2111  | Rules-AdditionalCriteria RuleCriteria attributeDetails hasExternalApi | numeric   | 1      | 400          | error          |

    @api @audienceAPI @dynamicaudienceapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a dynamic audience with change in <parameter> as <valuetype> having <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the dynamic audience request
        Then <responsecode> and <responsestatus> is received for dynamic audience request
        Then responseheader should contain the id of the dynamic audience if <responsestatus> is success

        Examples:
            | testid | parameter                                                    | valuetype | length | responsecode | responsestatus |
            | C2107  | Rules-AdditionalCriteria RuleCriteria attributeDetails value | alphabets | -      | 201          | success        |
            | C2108  | Rules-AdditionalCriteria RuleCriteria attributeDetails value | numeric   | -      | 201          | success        |
            | C2109  | Rules-AdditionalCriteria RuleCriteria attributeDetails value | null      | null   | 400          | error          |
            | C2110  | Rules-AdditionalCriteria RuleCriteria attributeDetails value | empty     | empty  | 400          | error          |