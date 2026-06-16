Feature: Tenant Database CRUD and System Testing
    CRUD testing includes create and delete for tenant database
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /phoenix/services/tenant

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a new tenant and verify the <responsecode> and <responsestatus> for tenant creation request
        When create a new tenant
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label    | responsecode | responsestatus |
            | C1001  | tenantId | 201          | success        |

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a tenant key and verify the <responsecode> and <responsestatus> for tenant key creation request
        When <testid> creating a tenant key
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label       | responsecode | responsestatus |
            | C1002  | tenantKeyId | 201          | success        |

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a tenant config and verify the <responsecode> and <responsestatus> for tenant config creation request
        When <testid> creating a tenant config
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label          | responsecode | responsestatus |
            | C1003  | tenantConfigId | 201          | success        |

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a tenant billing and verify the <responsecode> and <responsestatus> for tenant billing creation request
        When <testid> creating a tenant billing
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label           | responsecode | responsestatus |
            | C1004  | tenantBillingId | 201          | success        |

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a tenant contact and verify the <responsecode> and <responsestatus> for tenant contact creation request
        When <testid> creating a tenant contact
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label           | responsecode | responsestatus |
            | C1005  | tenantContactId | 201          | success        |

    @api @tenantAPI @tenantdatabaseapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> creating a tenant database and verify the <responsecode> and <responsestatus> for tenant contact creation request
        When <testid> creating a tenant database
        Then <responsecode> and <responsestatus> is received for creation request
        Then responseheader should contain the id as <label> if <responsestatus> is success
        Examples:
            | testid | label            | responsecode | responsestatus |
            | C1006  | tenantDatabaseId | 201          | success        |
