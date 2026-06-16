Feature: Tenant Key CRUD and System Testing
    Tenant key is an API which is used to create, update, delete and get tenant key information.
    This feature file contains the scenarios for tenant key api with different parameters and values.

    # created by  = kishore. T
    # reviewed by = Kadarkarai Selvam. I
    # updated by  = Kadarkarai Selvam. I
    # project url = /phoenix/services/tenant

    Background:
        Given Verify tenant is created

    @api @tenantAPI @tenantkeyapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a Tenant Key with change in <parameter> as <value>

        When <testid> <parameter> having <value> is passed in the tenantkey request
        Then <responsecode> and <responsestatus> is received for tenantkey request

        Examples:
            | testid | parameter | value     | length   | responsecode | responsestatus |
            | C1601  | label     | alphabets | 254      | 201          | success        |
            | C1602  | label     | alphabets | 256      | 400          | error          |
            | C1603  | label     | empty     | empty    | 400          | error          |
            | C1604  | label     | null      | null     | 400          | error          |
            | C1605  | label     | boolean   | true     | 201          | success        |
            | C1606  | label     | numeric   | 10       | 400          | error          |
            | C1609  | label     | existing  | existing | 400          | error          |

    @api @tenantAPI @tenantkeyapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a Tenant Key with change in <parameter> as <value>

        When <testid> <parameter> having <value> is passed in the tenantkey request
        Then <responsecode> and <responsestatus> is received for tenantkey request

        Examples:
            | testid | parameter  | value     | length   | responsecode | responsestatus |
            | C4312  | primaryKey | alphabets | 254      | 201          | success        |
            | C4313  | primaryKey | alphabets | 256      | 400          | error          |
            | C4314  | primaryKey | empty     | empty    | 400          | error          |
            | C4315  | primaryKey | null      | null     | 400          | error          |
            | C4316  | primaryKey | boolean   | true     | 201          | success        |
            | C4317  | primaryKey | numeric   | 10       | 400          | error          |
            | C4318  | primaryKey | existing  | existing | 400          | error          |


    @api @tenantAPI @tenantkeyapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a Tenant Key with change in <parameter> as <value>

        When <testid> <parameter> having <value> is passed in the tenantkey request
        Then <responsecode> and <responsestatus> is received for tenantkey request

        Examples:
            | testid | parameter    | value     | length   | responsecode | responsestatus |
            | C1610  | secondaryKey | alphabets | 254      | 201          | success        |
            | C1611  | secondaryKey | alphabets | 256      | 400          | error          |
            | C1612  | secondaryKey | empty     | empty    | 400          | error          |
            | C1613  | secondaryKey | null      | null     | 400          | error          |
            | C1614  | secondaryKey | boolean   | true     | 201          | success        |
            | C1615  | secondaryKey | numeric   | 10       | 400          | error          |
            | C1616  | secondaryKey | existing  | existing | 400          | error          |


    @api @tenantAPI @tenantkeyapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a Tenant Key with change in <parameter> as <value>

        When <testid> <parameter> having <value> is passed in the tenantkey request
        Then <responsecode> and <responsestatus> is received for tenantkey request

        Examples:
            | testid | parameter  | value     | length   | responsecode | responsestatus |
            | C1618  | expiryDate | alphabets | 254      | 201          | success        |
            | C1619  | expiryDate | alphabets | 256      | 400          | error          |
            | C1620  | expiryDate | empty     | empty    | 400          | error          |
            | C1621  | expiryDate | null      | null     | 400          | error          |
            | C1622  | expiryDate | boolean   | true     | 201          | success        |
            | C1623  | expiryDate | numeric   | 10       | 400          | error          |
            | C1624  | expiryDate | existing  | existing | 400          | error          |

    @api @tenantAPI @tenantkeyapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a Tenant Key with change in <parameter> as <value>

        When <testid> <parameter> having <value> is passed in the tenantkey request
        Then <responsecode> and <responsestatus> is received for tenantkey request

        Examples:
            | testid | parameter | value   | length | responsecode | responsestatus |
            | C1626  | settings  | array   | 254    | 201          | success        |
            | C1627  | settings  | object  | 256    | 400          | error          |
            | C1628  | settings  | empty   | empty  | 400          | error          |
            | C1629  | settings  | null    | null   | 400          | error          |
            | C1630  | settings  | boolean | true   | 201          | success        |
            | C1631  | settings  | numeric | 10     | 400          | error          |


    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1633  | id              | valid   | 200          | success | 1       |
            | C1634  | id              | invalid | 400          | error   | 0       |
            | C1635  | id              | empty   | 400          | error   | 0       |
            | C1636  | id              | null    | 400          | error   | 0       |



    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1637  | label           | valid   | 200          | success | 1       |
            | C1638  | label           | invalid | 400          | error   | 0       |
            | C1639  | label           | blank   | 400          | error   | 0       |
            | C1640  | label           | null    | 400          | error   | 0       |


    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1642  | primaryKey      | valid   | 200          | success | 1       |
            | C1643  | primaryKey      | invalid | 400          | error   | 0       |
            | C1644  | primaryKey      | blank   | 400          | error   | 0       |
            | C1645  | primaryKey      | null    | 400          | error   | 0       |


    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1648  | secondaryKey    | valid   | 200          | success | 1       |
            | C1649  | secondaryKey    | invalid | 400          | error   | 0       |
            | C1650  | secondaryKey    | blank   | 400          | error   | 0       |
            | C1651  | secondaryKey    | null    | 400          | error   | 0       |


    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C1653  | expiryDate      | valid   | 200          | success | 1       |
            | C1654  | expiryDate      | invalid | 400          | error   | 0       |
            | C1655  | expiryDate      | blank   | 400          | error   | 0       |
            | C1656  | expiryDate      | null    | 400          | error   | 0       |


    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant key by quering <query parameter> as <value>

        When <testid> <query parameter> includes <value> is passed in the get tenant key request
        Then <responsecode>, <status> and <records> is received for get tenant key request

        Examples:
            | testid | query parameter | value   | responsecode | status  | records  |
            | C1651  | status          | valid   | 200          | success | only one |
            | C1652  | status          | invalid | 400          | error   | none     |
            | C1653  | status          | blank   | 400          | error   | none     |
            | C1654  | status          | null    | 400          | error   | none     |

    @api @tenantAPI @tenantkeyapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a single tenant key by querying <query parameter> in path parameter as <value>

        When <testid> path having tenant key id <value> is passed in the get single tenant key request
        Then <responsecode> and <responsestatus> is received

        Examples:
            | testid | value   | responsecode | responsestatus |
            | C1655  | valid   | 200          | success        |
            | C1656  | invalid | 400          | error          |
            | C1657  | blank   | 400          | error          |
            | C1658  | null    | 400          | error          |

    @api @tenantAPI @tenantkeyapi @system @delete @functional @reviewed @superadmin
    Scenario:<testid> Deleting a tenant key by passing id as <value> in path parameters

        When delete a tenant key by passing a <type> in path parameter
        Then <responsecode>, <status> and <response> is received

            | testid | type    | responsecode | status  | response |
            | C1669  | valid   | 200          | success | success  |
            | C1670  | invalid | 400          | error   | error    |
            | C1671  | null    | 400          | error   | error    |
            | C1672  | empty   | 400          | error   | error    |
            | C1673  | deleted | 400          | error   | error    |
