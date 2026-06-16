Feature: Program Environment CRUD and System Testing
    CRUD includes create, retrieve, update and delete
    System testing includes verification of the particular system

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Nandini Kesavan
    # updated by  = Nandhini Kesavan
    # project url = /phoenix/services/tenant

    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario:<testid> creating a program environment with change in environment id as <valuetype> with <length>

        When <testid> <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter     | valuetype    | length   | responsecode | responsestatus |
            | C1391  | environmentid | uuid         | 36       | 201          | success        |
            | C1392  | environmentid | empty        | empty    | 400          | error          |
            | C1393  | environmentid | null         | null     | 400          | error          |
            | C1394  | environmentid | alphabets    | 36       | 400          | error          |
            | C1395  | environmentid | numeric      | 36       | 400          | error          |
            | C1396  | environmentid | boolean      | boolean  | 400          | error          |
            | C1397  | environmentid | alphanumeric | 37       | 400          | error          |
            | C1398  | environmentid | alphanumeric | 36       | 400          | error          |
            | C1399  | environmentid | existing     | existing | 400          | error          |
            | C1400  | environmentid | special char | 36       | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario:<testid> creating a program environment with change in environment code as <valuetype> with <length>

        When <testid> <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter       | valuetype    | length   | responsecode | responsestatus |
            | C1401  | environmentcode | uuid         | 36       | 400          | error          |
            | C1402  | environmentcode | empty        | empty    | 400          | error          |
            | C1403  | environmentcode | null         | null     | 400          | error          |
            | C1404  | environmentcode | alphabets    | 36       | 201          | success        |
            | C1405  | environmentcode | numeric      | 36       | 400          | error          |
            | C1406  | environmentcode | boolean      | boolean  | 400          | error          |
            | C1407  | environmentcode | alphanumeric | 37       | 400          | error          |
            | C1408  | environmentcode | alphanumeric | 36       | 400          | error          |
            | C1409  | environmentcode | existing     | existing | 400          | error          |
            | C1410  | environmentcode | special char | 36       | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario:<testid> creating a program environment with change in environment name as <valuetype> with <length>

        When <testid> <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter       | valuetype    | length   | responsecode | responsestatus |
            | C1411  | environmentname | valid        | 50       | 400          | error          |
            | C1412  | environmentname | empty        | empty    | 400          | error          |
            | C1413  | environmentname | null         | null     | 400          | error          |
            | C1414  | environmentname | alphabets    | 50       | 201          | success        |
            | C1415  | environmentname | numeric      | 50       | 400          | error          |
            | C1416  | environmentname | boolean      | boolean  | 400          | error          |
            | C1417  | environmentname | alphanumeric | 51       | 400          | error          |
            | C1418  | environmentname | alphanumeric | 49       | 400          | error          |
            | C1419  | environmentname | existing     | existing | 400          | error          |
            | C1420  | environmentname | special char | 50       | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a program environment with change in config as <valuetype>

        When <testid> <parameter> having <valuetype> is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype | responsecode | responsestatus |
            | C022   | config    | object    | 201          | success        |
            | C023   | config    | string    | 400          | error          |
            | C024   | config    | number    | 400          | error          |
            | C025   | config    | boolean   | 400          | error          |
            | C026   | config    | null      | 400          | error          |
            | C027   | config    | empty     | 400          | error          |

    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Program Environment Config with change in key as <valuetype>

        When <testid> <parameter> key having <valuetype> is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype | responsecode | responsestatus |
            | C011   | configkey | string    | 201          | success        |
            | C012   | configkey | empty     | 400          | error          |
            | C013   | configkey | null      | 400          | error          |
            | C014   | configkey | boolean   | 400          | error          |
            | C015   | configkey | number    | 201          | success        |

    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Program Environment Config with change in value as <valuetype>

        When <testid> <parameter> having <valuetype> is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter   | valuetype | responsecode | responsestatus |
            | C016   | configvalue | string    | 201          | success        |
            | C017   | configvalue | empty     | 201          | success        |
            | C018   | configvalue | null      | 201          | success        |

    @api @tenantAPI @programenvironmentapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Program Environment Config with change in type as <valuetype>

        When <testid> <parameter> having <valuetype> is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programenvironment if <responsestatus> is success

        Examples:
            | testid | parameter  | valuetype | responsecode | responsestatus |
            | C019   | configtype | string    | 201          | success        |
            | C020   | configtype | empty     | 201          | success        |
            | C021   | configtype | null      | 201          | success        |


    @api @tenantAPI @programenvironmentapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program environment by quering id as <value>

        When <testid> <query parameter> includes <value> for get program environment config request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C1548  | id              | valid   | 200          | success        | 1       |
            | C1549  | id              | invalid | 400          | error          | 0       |
            | C1550  | id              | null    | 400          | error          | 0       |
            | C1552  | id              | blank   | 400          | error          | 0       |

    @api @tenantAPI @programenvironmentapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program environment by quering programID as <value>

        When <testid> <query parameter> includes <value> for get program environment config request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C1553  | programid       | valid   | 200          | success        | 1       |
            | C1554  | programid       | invalid | 400          | error          | 0       |
            | C1555  | programid       | null    | 400          | error          | 0       |
            | C1556  | programid       | blank   | 400          | error          | 0       |

    @api @tenantAPI @programenvironmentapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program environment by quering environmentID as <value>

        When <testid> <query parameter> includes <value> for get program environment config request
        Then <responsecode>, <status> and <records> is received for get request with environmentID query

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1557  | environmentid   | valid   | 200          | success | 1       |
            | C1558  | environmentid   | invalid | 400          | error   | 0       |
            | C1559  | environmentid   | null    | 400          | error   | 0       |
            | C1560  | environmentid   | blank   | 400          | error   | 0       |

    @api @tenantAPI @programenvironmentapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program environment by quering environmentName as <value>

        When <testid> <query parameter> includes <value> for get program environment config request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C1561  | environmentName | valid   | 200          | success        | 1       |
            | C1562  | environmentName | invalid | 400          | error          | 0       |
            | C1563  | environmentName | null    | 400          | error          | 0       |
            | C1564  | environmentName | blank   | 400          | error          | 0       |

    @api @tenantAPI @programenvironmentapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program environment by quering environmentCode as <value>

        When <testid> <query parameter> includes <value> for get program environment config request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C1565  | environmentCode | valid   | 200          | success        | 1       |
            | C1566  | environmentCode | invalid | 400          | error          | 0       |
            | C1567  | environmentCode | null    | 400          | error          | 0       |
            | C1568  | environmentCode | blank   | 400          | error          | 0       |

    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario:<testid> creating a program environment with change in environment id as <valuetype> with <length>

        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | parameter     | valuetype    | length   | responsecode | responsestatus |
            | C1391  | environmentid | uuid         | 36       | 201          | success        |
            | C1392  | environmentid | empty        | empty    | 400          | error          |
            | C1393  | environmentid | null         | null     | 400          | error          |
            | C1394  | environmentid | alphabets    | 36       | 400          | error          |
            | C1395  | environmentid | numeric      | 36       | 400          | error          |
            | C1396  | environmentid | boolean      | boolean  | 400          | error          |
            | C1397  | environmentid | alphanumeric | 37       | 400          | error          |
            | C1398  | environmentid | alphanumeric | 36       | 400          | error          |
            | C1399  | environmentid | existing     | existing | 400          | error          |
            | C1400  | environmentid | special char | 36       | 400          | error          |

    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program environment with change in environment code as <valuetype>

        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | parameter       | valuetype    | length   | responsecode | responsestatus |
            | C1576  | environmentcode | uuid         | 36       | 400          | error          |
            | C1577  | environmentcode | empty        | empty    | 400          | error          |
            | C1578  | environmentcode | null         | null     | 400          | error          |
            | C1579  | environmentcode | alphabets    | 36       | 200          | success        |
            | C1580  | environmentcode | numeric      | 36       | 400          | error          |
            | C1581  | environmentcode | boolean      | boolean  | 400          | error          |
            | C1582  | environmentcode | alphanumeric | 37       | 400          | error          |
            | C1583  | environmentcode | alphanumeric | 36       | 400          | error          |
            | C1584  | environmentcode | existing     | existing | 400          | error          |
            | C1585  | environmentcode | special char | 36       | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program environment with change in environment name as <valuetype>
        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | parameter       | valuetype    | length   | responsecode | responsestatus |
            | C1586  | environmentname | valid        | 50       | 200          | success        |
            | C1587  | environmentname | empty        | empty    | 400          | error          |
            | C1588  | environmentname | null         | null     | 400          | error          |
            | C1589  | environmentname | alphabets    | 50       | 200          | success        |
            | C1590  | environmentname | numeric      | 50       | 400          | error          |
            | C1591  | environmentname | boolean      | boolean  | 400          | error          |
            | C1592  | environmentname | alphanumeric | 51       | 400          | error          |
            | C1593  | environmentname | alphanumeric | 49       | 400          | error          |
            | C1594  | environmentname | existing     | existing | 400          | error          |
            | C1595  | environmentname | special char | 50       | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program environment config with change in config key as <valuetype> with <length>
        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | parameter | valuetype | length   | responsecode | responsestatus |
            | C001   | configkey | string    | 36       | 201          | success        |
            | C002   | configkey | empty     | empty    | 400          | error          |
            | C003   | configkey | null      | null     | 400          | error          |
            | C004   | configkey | number    | 36       | 400          | error          |
            | C005   | configkey | boolean   | 36       | 400          | error          |
            | C006   | configkey | existing  | existing | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program environment config with change in config value as <valuetype> with <length>

        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
        Examples:
            | testid | parameter   | valuetype | length   | responsecode | responsestatus |
            | C001   | configvalue | string    | 36       | 201          | success        |
            | C002   | configvalue | empty     | empty    | 400          | error          |
            | C003   | configvalue | null      | null     | 400          | error          |
            | C004   | configvalue | number    | 36       | 400          | error          |
            | C005   | configvalue | boolean   | 36       | 400          | error          |
            | C006   | configvalue | existing  | existing | 400          | error          |


    @api @tenantAPI @programenvironmentapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program environment config with change in config type as <valuetype>

        When <testid> Update <parameter> having <valuetype> with <length> in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response
        Examples:
            | testid | parameter  | valuetype | length   | responsecode | responsestatus |
            | C001   | configtype | string    | 201      | 201          | success        |
            | C002   | configtype | empty     | empty    | 400          | error          |
            | C003   | configtype | null      | null     | 400          | error          |
            | C004   | configtype | number    | 36       | 400          | error          |
            | C005   | configtype | boolean   | 36       | 400          | error          |
            | C006   | configtype | existing  | existing | 400          | error          |



    @api @tenantAPI @programenvironmentapi @system @getsingle @functional @notreviewed @superadmin
    Scenario: <testid> Getting a single program environment with passing id in path parameter

        When program environment path having <value> is passed in the program environment config request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | value   | responsecode | responsestatus |
            | C1588  | valid   | 200          | success        |
            | C1589  | invalid | 400          | error          |
            | C1590  | null    | 400          | error          |
            | C1591  | empty   | 400          | error          |

    @api @tenantAPI @programenvironmentapi @system @delete @functional @notreviewed @superadmin
    Scenario: <testid> Deleting a program environment by passing id as <value> in path parameters

        When delete a <type> program environment in the program environment config request
        Then <responsecode>, <responsestatus> and <response> is received in the response

            | testid | type    | responsecode | responsestatus | response |
            | C1592  | valid   | 200          | success        | success  |
            | C1593  | invalid | 400          | error          | error    |
            | C1594  | null    | 400          | error          | error    |
            | C1595  | empty   | 400          | error          | error    |
            | C1596  | deleted | 400          | error          | error    |