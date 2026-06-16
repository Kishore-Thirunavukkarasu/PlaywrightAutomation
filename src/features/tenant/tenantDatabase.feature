Feature: Program Country CRUD and System Testing
    CRUD testing includes create and delete for tenant database
    System testing includes verification of the particular system.

    # created by  = Nandhini Kesavan
    # reviewed by =
    # updated by  = Nandhini Kesavan
    # project url = /phoenix/services/tenant

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> Creating a tenant database with change in tenantid as <valuetype>

        When <testid> <parameter> having <valuetype> characters is passed in the tenant database endpoint
        Then <responsecode> and <responsestatus> is received in the response
        Then responseheader should contain the id of the tenantdb if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype | responsecode | responsestatus |
            | 1      | tenantid  | valid     | 201          | Created        |
            | 2      | tenantid  | invalid   | 400          | Bad Request    |
            | 3      | tenantid  | null      | 400          | Bad Request    |
            | 4      | tenantid  | empty     | 400          | Bad Request    |

    @api @tenantAPI @tenantdatabaseapi @system @getsingle @functional @reviewed @superadmin
    Scenario: <testid> Get a tenant database with change in tenantdatabaseid as <valuetype>

        When <testid> tenant endpoint having <value> is passed in the tenant database request
        Then <responsecode> and <responsestatus> is received in the response

        Examples:
            | testid | value   | responsecode | responsestatus |
            | C1427  | valid   | 200          | success        |
            | C1428  | invalid | 400          | error          |
            | C1429  | null    | 400          | error          |
            | C1430  | empty   | 400          | error          |
