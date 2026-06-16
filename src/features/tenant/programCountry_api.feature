Feature: Program Country CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Nandhini Kesavan
    # updated by  = Nandhini Kesavan
    # project url = /phoenix/services/tenant

    @api @tenantAPI @programcountryapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a program country with change in program id as <valuetype> with <length>

        When <testid> <parameter> having <valuetype> with <length> characters is passed in the program country request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programcountry if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C1391  | programid | uuid         | 36       | 201          | success        |
            | C1392  | programid | empty        | empty    | 400          | error          |
            | C1393  | programid | null         | null     | 400          | error          |
            | C1394  | programid | alphabets    | 36       | 400          | error          |
            | C1395  | programid | numeric      | 36       | 400          | error          |
            | C1396  | programid | boolean      | boolean  | 400          | error          |
            | C1397  | programid | alphanumeric | 37       | 400          | error          |
            | C1398  | programid | alphanumeric | 36       | 400          | error          |
            | C1399  | programid | existing     | existing | 400          | error          |
            | C1400  | programid | special char | 36       | 400          | error          |


    @api @tenantAPI @programcountryapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a program country with change in country code as <valuetype> with <length>

        When <testid> <parameter> having <valuetype> with <length> characters is passed in the program country request
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the programcountry if <responsestatus> is success

        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C1401  | countrycode | valid        | 2        | 201          | success        |
            | C1402  | countrycode | empty        | empty    | 400          | error          |
            | C1403  | countrycode | null         | null     | 400          | error          |
            | C1404  | countrycode | numeric      | 2        | 400          | error          |
            | C1405  | countrycode | boolean      | boolean  | 400          | error          |
            | C1406  | countrycode | alphabets    | 3        | 400          | error          |
            | C1407  | countrycode | alphabets    | 1        | 400          | error          |
            | C1408  | countrycode | alphanumeric | 2        | 400          | error          |
            | C1409  | countrycode | existing     | existing | 400          | error          |
            | C1410  | countrycode | special char | 2        | 400          | error          |


    @api @tenantAPI @programcountryapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program country by quering program country id as <valuetype>

        When <testid> <query parameter> includes <valuetype> for get program country request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | valuetype | responsecode | responsestatus | records |
            | C1415  | id              | valid     | 200          | success        | 1       |
            | C1416  | id              | invalid   | 400          | error          | 0       |
            | C1417  | id              | null      | 400          | error          | 0       |
            | C1418  | id              | empty     | 400          | error          | 0       |

    @api @tenantAPI @programcountryapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program country by quering program id as <value>

        When <testid> <query parameter> includes <valuetype> for get program country request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | valuetype | responsecode | responsestatus | records |
            | C1419  | programid       | valid     | 200          | success        | 1       |
            | C1420  | programid       | invalid   | 400          | error          | 0       |
            | C1421  | programid       | null      | 400          | error          | 0       |
            | C1422  | programid       | empty     | 400          | error          | 0       |

    @api @tenantAPI @programcountryapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a program country by quering country code as <valuetype>

        When <testid> <query parameter> includes <valuetype> for get program country request
        Then <responsecode>, <responsestatus> and <records> is received in the response

        Examples:
            | testid | query parameter | valuetype | responsecode | responsestatus | records       |
            | C1423  | countrycode     | valid     | 200          | success        | more than one |
            | C1424  | countrycode     | invalid   | 400          | error          | 0             |
            | C1425  | countrycode     | null      | 400          | error          | 0             |
            | C1426  | countrycode     | empty     | 400          | error          | not present   |

    @api @tenantAPI @programcountryapi @system @getsingle @functional @notreviewed @superadmin
    Scenario: <testid> Getting a single program country with passing id in path parameter

        When <testid> program country path having <value> is passed in the program country request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | value   | responsecode | responsestatus |
            | C1427  | valid   | 200          | success        |
            | C1428  | invalid | 400          | error          |
            | C1429  | null    | 400          | error          |
            | C1430  | empty   | 400          | error          |


    @api @tenantAPI @programcountryapi @system @put @functional @reviewed
    Scenario: <testid> Updating a program country with change in country code as <valuetype> with <length>

        When <testid> Update <parameter> having <valuetype> with <length> characters is passed in the program country request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C1401  | countrycode | valid        | 2        | 201          | success        |
            | C1402  | countrycode | empty        | empty    | 400          | error          |
            | C1403  | countrycode | null         | null     | 400          | error          |
            | C1404  | countrycode | numeric      | 2        | 400          | error          |
            | C1405  | countrycode | boolean      | boolean  | 400          | error          |
            | C1406  | countrycode | alphabets    | 3        | 400          | error          |
            | C1407  | countrycode | alphabets    | 1        | 400          | error          |
            | C1408  | countrycode | alphanumeric | 2        | 400          | error          |
            | C1409  | countrycode | existing     | existing | 400          | error          |
            | C1410  | countrycode | special char | 2        | 400          | error          |


    @api @tenantAPI @programcountryapi @system @delete @functional @notreviewed @superadmin
    Scenario: <testid> Deleting a program country by passing id as <value> in path parameters

        When <testid> <parameter> delete a <value> program country in the program country request
        Then <responsecode>, <responsestatus> and <response> is received in the response

            | testid | value   | responsecode | responsestatus | response |
            | C1437  | valid   | 200          | success        | success  |
            | C1438  | invalid | 400          | error          | error    |
            | C1439  | null    | 400          | error          | error    |
            | C1440  | empty   | 400          | error          | error    |
            | C1441  | deleted | 400          | error          | error    |

