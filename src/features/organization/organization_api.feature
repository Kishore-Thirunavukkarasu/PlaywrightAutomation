Feature: Organization API via CQ Engine


    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema

    @api @organizationAPI @organizationapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating an organization using <payload> payload through command engine
        When <testid> Creating an organization through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the organization creation through command engine
        Then Get the id and payload of the organization if creation status is <responsestatus>
        Examples:
            | testid | payload | responsecode | responsestatus |
            | ORG001 | valid   | 200          | success        |

    @api @organizationAPI @organizationapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an organization using <payload> payload through command engine
        When <testid> Creating an organization through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the organization creation through command engine
        Examples:
            | testid | payload | responsecode | responsestatus |
            | ORG002 | invalid | 400          | error          |

    @api @organizationAPI @organizationapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an organization without <field> field in the payload through command engine
        When <testid> Creating an organization through command engine without <field> field in the payload
        Then <responsecode> and <responsestatus> is received in the organization creation through command engine
        Examples:
            | testid | field       | responsecode | responsestatus |
            | ORG003 | name        | 400          | error          |
            | ORG004 | description | 400          | error          |
            | ORG005 | code        | 400          | error          |
            | ORG006 | phone       | 400          | error          |
            | ORG007 | email       | 400          | error          |
            | ORG008 | active      | 400          | error          |

    @api @organizationAPI @organizationapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an organization using value type as <type> for <field> in the payload through command engine
        When <testid> Creating an organization through command engine using <type> <field> field in the payload
        Then <responsecode> and <responsestatus> is received in the organization creation through command engine
        Examples:
            | testid | type    | field       | responsecode | responsestatus |
            | ORG009 | invalid | name        | 400          | error          |
            | ORG010 | empty   | name        | 400          | error          |
            | ORG011 | null    | name        | 400          | error          |
            | ORG012 | invalid | description | 400          | error          |
            | ORG013 | empty   | description | 400          | error          |
            | ORG014 | null    | description | 400          | error          |
            | ORG015 | invalid | code        | 400          | error          |
            | ORG016 | empty   | code        | 400          | error          |
            | ORG017 | null    | code        | 400          | error          |
            | ORG018 | invalid | phone       | 400          | error          |
            | ORG019 | empty   | phone       | 400          | error          |
            | ORG020 | null    | phone       | 400          | error          |
            | ORG021 | invalid | email       | 400          | error          |
            | ORG022 | empty   | email       | 400          | error          |
            | ORG023 | null    | email       | 400          | error          |
            | ORG024 | invalid | active      | 400          | error          |
            | ORG025 | empty   | active      | 400          | error          |
            | ORG026 | null    | active      | 400          | error          |

    @api @organizationAPI @organizationapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating an organization using <payload> payload through command engine
        When <testid> Updating an organization through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the organization update through command engine
        Examples:
            | testid | payload | responsecode | responsestatus |
            | ORG027 | valid   | 200          | success        |

    @api @organizationAPI @organizationapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating an organization's <field> field using <type> value through command engine
        When <testid> Updating an organization's <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the organization update through command engine
        Examples:
            | testid | field       | type  | responsecode | responsestatus |
            | ORG028 | name        | valid | 200          | success        |
            | ORG029 | description | valid | 200          | success        |
            | ORG030 | code        | valid | 200          | success        |
            | ORG031 | phone       | valid | 200          | success        |
            | ORG032 | email       | valid | 200          | success        |
            | ORG033 | active      | valid | 200          | success        |

    @api @organizationAPI @organizationapi @system @put @functional @negative @notreviewed @superadmin
    Scenario: <testid> Updating an organization's <field> field using <type> value through command engine
        When <testid> Updating an organization's <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the organization update through command engine
        Examples:
            | testid | field       | type    | responsecode | responsestatus |
            | ORG034 | name        | invalid | 400          | error          |
            | ORG035 | name        | empty   | 400          | error          |
            | ORG036 | name        | null    | 400          | error          |
            | ORG037 | description | invalid | 400          | error          |
            | ORG038 | description | empty   | 400          | error          |
            | ORG039 | description | null    | 400          | error          |
            | ORG040 | code        | invalid | 400          | error          |
            | ORG041 | code        | empty   | 400          | error          |
            | ORG042 | code        | null    | 400          | error          |
            | ORG043 | phone       | invalid | 400          | error          |
            | ORG044 | phone       | empty   | 400          | error          |
            | ORG045 | phone       | null    | 400          | error          |
            | ORG046 | email       | invalid | 400          | error          |
            | ORG047 | email       | empty   | 400          | error          |
            | ORG048 | email       | null    | 400          | error          |
            | ORG049 | active      | invalid | 400          | error          |
            | ORG050 | active      | empty   | 400          | error          |
            | ORG051 | active      | null    | 400          | error          |

    @api @organizationAPI @organizationapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Get a single organization when <field> as <value> value through query engine
        When <testid> Get a single organization when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get organization through query engine
        Examples:
            | testid | field | value | responsecode | responsestatus |
            | ORG052 | name  | valid | 200          | success        |

    @api @organizationAPI @organizationapi @system @getsingle @functional @positive @notreviewed @superadmin
    Scenario: <testid> Get a single organization when <field> as <value> value through query engine
        When <testid> Get a single organization when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get organization through query engine
        Examples:
            | testid | field       | value | responsecode | responsestatus |
            | ORG053 | description | valid | 200          | success        |
            | ORG054 | code        | valid | 200          | success        |
            | ORG055 | phone       | valid | 200          | success        |
            | ORG056 | email       | valid | 200          | success        |
            | ORG057 | active      | valid | 200          | success        |

    @api @organizationAPI @organizationapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Get a single organization when <field> as <value> value through query engine
        When <testid> Get a single organization when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get organization through query engine
        Examples:
            | testid | field       | value   | responsecode | responsestatus |
            | ORG058 | name        | invalid | 400          | error          |
            | ORG059 | name        | empty   | 400          | error          |
            | ORG060 | name        | null    | 400          | error          |
            | ORG061 | description | invalid | 400          | error          |
            | ORG062 | description | empty   | 400          | error          |
            | ORG063 | description | null    | 400          | error          |
            | ORG064 | code        | invalid | 400          | error          |
            | ORG065 | code        | empty   | 400          | error          |
            | ORG066 | code        | null    | 400          | error          |
            | ORG067 | phone       | invalid | 400          | error          |
            | ORG068 | phone       | empty   | 400          | error          |
            | ORG069 | phone       | null    | 400          | error          |
            | ORG070 | email       | invalid | 400          | error          |
            | ORG071 | email       | empty   | 400          | error          |
            | ORG072 | email       | null    | 400          | error          |
            | ORG073 | active      | invalid | 400          | error          |
            | ORG074 | active      | empty   | 400          | error          |
            | ORG075 | active      | null    | 400          | error          |

    @api @organizationAPI @organizationapi @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Get all organizations through query engine
        When <testid> Get all organizations through query engine
        Then <responsecode> and <responsestatus> is received for get organization through query engine
        Examples:
            | testid | responsecode | responsestatus |
            | ORG076 | 200          | success        |
