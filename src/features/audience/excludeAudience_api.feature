Feature: Exclude Audience CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /phoenix/services/audience

    Background:
        Given Verify tenant is created
        Given Verify user2 is created
        Given Verify static audience is created

    @api @audienceAPI @excludeaudienceapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating a exclude audience user with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the exclude audience user request
        Then <responsecode> and <responsestatus> is received for exclude audience user request
        Then responseheader should contain the id of the excluded audience if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype      | length | responsecode | responsestatus |
            | EA101  | contextId | validContextId | no     | 200          | success        |

    @api @audienceAPI @excludeaudienceapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Creating a exclude audience user with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the exclude audience user request
        Then <responsecode> and <responsestatus> is received for exclude audience user request
        Then responseheader should contain the id of the excluded audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype        | length | responsecode | responsestatus |
            | EA102  | contextType | validContextType | no     | 200          | success        |
            | EA103  | attribute   | validAttribute   | no     | 200          | success        |
            | EA104  | attributeId | validAttributeId | no     | 200          | success        |
            | EA105  | audienceId  | validAudienceId  | no     | 200          | success        |

    @api @audienceAPI @excludeaudienceapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating a exclude audience user with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the exclude audience user request
        Then <responsecode> and <responsestatus> is received for exclude audience user request
        Then responseheader should contain the id of the excluded audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length | responsecode | responsestatus |
            | EA106  | contextType | invalid      | no     | 400          | error          |
            | EA107  | contextType | alphanumeric | 10     | 400          | error          |
            | EA108  | contextType | special char | 10     | 400          | error          |
            | EA109  | contextType | numeric      | 10     | 400          | error          |
            | EA110  | contextType | boolean      | no     | 400          | error          |
            | EA111  | contextType | empty        | no     | 400          | error          |
            | EA112  | contextType | null         | no     | 400          | error          |
            | EA113  | contextId   | invalid      | no     | 400          | error          |
            | EA114  | contextId   | alphanumeric | 10     | 400          | error          |
            | EA115  | contextId   | special char | 10     | 400          | error          |
            | EA116  | contextId   | numeric      | 10     | 400          | error          |
            | EA117  | contextId   | boolean      | no     | 400          | error          |
            | EA118  | contextId   | empty        | no     | 400          | error          |
            | EA119  | contextId   | null         | no     | 400          | error          |
            | EA120  | attribute   | invalid      | no     | 400          | error          |
            | EA121  | attribute   | alphanumeric | 10     | 400          | error          |
            | EA122  | attribute   | special char | 10     | 400          | error          |
            | EA123  | attribute   | numeric      | 10     | 400          | error          |
            | EA124  | attribute   | boolean      | no     | 400          | error          |
            | EA125  | attribute   | empty        | no     | 400          | error          |
            | EA126  | attribute   | null         | no     | 400          | error          |
            | EA127  | attributeId | invalid      | no     | 400          | error          |
            | EA128  | attributeId | alphanumeric | 10     | 400          | error          |
            | EA129  | attributeId | special char | 10     | 400          | error          |
            | EA130  | attributeId | numeric      | 10     | 400          | error          |
            | EA131  | attributeId | boolean      | no     | 400          | error          |
            | EA132  | attributeId | empty        | no     | 400          | error          |
            | EA133  | attributeId | null         | no     | 400          | error          |
            | EA134  | audienceId  | invalid      | no     | 400          | error          |
            | EA135  | audienceId  | alphanumeric | 10     | 400          | error          |
            | EA136  | audienceId  | special char | 10     | 400          | error          |
            | EA137  | audienceId  | numeric      | 10     | 400          | error          |
            | EA138  | audienceId  | boolean      | no     | 400          | error          |
            | EA139  | audienceId  | empty        | no     | 400          | error          |
            | EA140  | audienceId  | null         | no     | 400          | error          |

    @api @audienceAPI @excludeaudienceapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a exclude audience by passing id in path parameter
        When <testid> exclude audience path with <parameter> having <value> is passed in the exclude audience request
        Then <responsecode> and <responsestatus> is received for exclude audience user get request
        Examples:
            | testid | parameter   | value | responsecode | responsestatus |
            | EA141  | promotionId | valid | 200          | success        |

    @api @audienceAPI @excludeaudienceapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a exclude audience by passing id in path parameter
        When <testid> exclude audience path with <parameter> having <value> is passed in the exclude audience request
        Then <responsecode> and <responsestatus> is received for exclude audience user get request
        Examples:
            | testid | parameter   | value   | responsecode | responsestatus |
            | EA142  | promotionId | invalid | 400          | error          |
            | EA143  | promotionId | empty   | 400          | error          |
            | EA144  | promotionId | null    | 400          | error          |



