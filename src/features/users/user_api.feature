Feature: User CRUD through Command Engine


    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema

    @api @userAPI@USR006Integrations @system @post @functional @smoke @nonreviewed @superadmin
    Scenario: <testid> Creating an user using <payload> payload through command engine
        When <testid> Creating an user through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the user creation through command engine
        Then Get the id and payload of the user if creation status is <responsestatus>
        Examples:
            | testid | payload | responsecode | responsestatus |
            | first  | valid   | 200          | success        |
            | second | valid   | 200          | success        |

    @api @userAPI@userapi @system @post @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Creating an user using <payload> payload through command engine
        When <testid> Creating an user through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the user creation through command engine
        Then Get the id and payload of the user if creation status is success
        Examples:
            | testid | payload | responsecode | responsestatus |
            | TU001  | invalid | 400          | error          |

    @api @userAPI@userapi @system @post @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Creating an user without <field> field in the payload through command engine
        When <testid> Creating an user through command engine without <field> field in the payload
        Then <responsecode> and <responsestatus> is received in the user creation through command engine
        Examples:
            | testid | field        | responsecode | responsestatus |
            | TU002  | username     | 400          | error          |
            | TU003  | title        | 400          | error          |
            | TU004  | programId    | 400          | error          |
            | TU005  | country      | 400          | error          |
            | TU006  | email        | 400          | error          |
            | TU007  | password     | 400          | error          |
            | TU008  | gender       | 400          | error          |
            | TU009  | mobileNumber | 400          | error          |
            | TU010  | timeZone     | 400          | error          |
            | TU011  | language     | 400          | error          |
            | TU012  | isSSO        | 400          | error          |
            | TU013  | status       | 400          | error          |
            | TU014  | picture      | 400          | error          |

    @api @userAPI@userapi @system @post @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Creating an user using value type as <type> for <field> in the payload through command engine
        When <testid> Creating an user through command engine using <type> <field> field in the payload
        Then <responsecode> and <responsestatus> is received in the user creation through command engine
        Examples:
            | testid | type    | field        | responsecode | responsestatus |
            | TU015  | invalid | username     | 400          | error          |
            | TU016  | empty   | username     | 400          | error          |
            | TU017  | null    | username     | 400          | error          |
            | TU018  | invalid | title        | 400          | error          |
            | TU019  | empty   | title        | 400          | error          |
            | TU020  | null    | title        | 400          | error          |
            | TU021  | invalid | programId    | 400          | error          |
            | TU022  | empty   | programId    | 400          | error          |
            | TU023  | null    | programId    | 400          | error          |
            | TU024  | invalid | country      | 400          | error          |
            | TU025  | empty   | country      | 400          | error          |
            | TU026  | null    | country      | 400          | error          |
            | TU027  | invalid | email        | 400          | error          |
            | TU028  | empty   | email        | 400          | error          |
            | TU029  | null    | email        | 400          | error          |
            | TU030  | invalid | password     | 400          | error          |
            | TU031  | empty   | password     | 400          | error          |
            | TU032  | null    | password     | 400          | error          |
            | TU033  | invalid | gender       | 400          | error          |
            | TU034  | empty   | gender       | 400          | error          |
            | TU035  | null    | gender       | 400          | error          |
            | TU036  | invalid | mobileNumber | 400          | error          |
            | TU037  | empty   | mobileNumber | 400          | error          |
            | TU038  | null    | mobileNumber | 400          | error          |
            | TU039  | invalid | timeZone     | 400          | error          |
            | TU040  | empty   | timeZone     | 400          | error          |
            | TU041  | null    | timeZone     | 400          | error          |
            | TU042  | invalid | language     | 400          | error          |
            | TU043  | empty   | language     | 400          | error          |
            | TU044  | null    | language     | 400          | error          |
            | TU045  | invalid | isSSO        | 400          | error          |
            | TU046  | empty   | isSSO        | 400          | error          |
            | TU047  | null    | isSSO        | 400          | error          |
            | TU048  | invalid | status       | 400          | error          |
            | TU049  | empty   | status       | 400          | error          |
            | TU050  | null    | status       | 400          | error          |
            | TU051  | invalid | picture      | 400          | error          |
            | TU052  | empty   | picture      | 400          | error          |
            | TU053  | null    | picture      | 400          | error          |

    @api @userAPI@userapi @system @put @functional @smoke @nonreviewed @superadmin
    Scenario:<testid> Update an user using <payload> payload through command engine
        When <testid> Updating an user through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the user updation through command engine
        Examples:
            | testid | payload | responsecode | responsestatus |
            | TU054  | valid   | 200          | success        |

    @api @userAPI@userapi @system @put @functional @positive @nonreviewed @superadmin
    Scenario: <testid> Update an user's <field> field using <type> value through command engine
        When <testid> Updating an user's <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the user updation through command engine
        Examples:
            | testid | field        | type  | responsecode | responsestatus |
            | TU056  | username     | valid | 200          | success        |
            | TU057  | title        | valid | 200          | success        |
            | TU058  | programId    | valid | 200          | success        |
            | TU059  | country      | valid | 200          | success        |
            | TU060  | email        | valid | 200          | success        |
            | TU061  | password     | valid | 200          | success        |
            | TU062  | gender       | valid | 200          | success        |
            | TU063  | mobileNumber | valid | 200          | success        |
            | TU064  | timeZone     | valid | 200          | success        |
            | TU065  | language     | valid | 200          | success        |
            | TU066  | isSSO        | valid | 200          | success        |
            | TU067  | status       | valid | 200          | success        |
            | TU068  | picture      | valid | 200          | success        |

    @api @userAPI@userapi @system @put @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Update an user's <field> field using <type> value through command engine
        When <testid> Updating an user's <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the user updation through command engine
        Examples:
            | testid | field        | type    | responsecode | responsestatus |
            | TU069  | username     | invalid | 400          | error          |
            | TU070  | username     | empty   | 400          | error          |
            | TU071  | username     | null    | 400          | error          |
            | TU072  | title        | invalid | 400          | error          |
            | TU073  | title        | empty   | 400          | error          |
            | TU074  | title        | null    | 400          | error          |
            | TU075  | programId    | invalid | 400          | error          |
            | TU076  | programId    | empty   | 400          | error          |
            | TU077  | programId    | null    | 400          | error          |
            | TU078  | country      | invalid | 400          | error          |
            | TU079  | country      | empty   | 400          | error          |
            | TU080  | country      | null    | 400          | error          |
            | TU081  | email        | invalid | 400          | error          |
            | TU082  | email        | empty   | 400          | error          |
            | TU083  | email        | null    | 400          | error          |
            | TU084  | password     | invalid | 400          | error          |
            | TU085  | password     | empty   | 400          | error          |
            | TU086  | password     | null    | 400          | error          |
            | TU087  | gender       | invalid | 400          | error          |
            | TU088  | gender       | empty   | 400          | error          |
            | TU089  | gender       | null    | 400          | error          |
            | TU090  | mobileNumber | invalid | 400          | error          |
            | TU091  | mobileNumber | empty   | 400          | error          |
            | TU092  | mobileNumber | null    | 400          | error          |
            | TU093  | timeZone     | invalid | 400          | error          |
            | TU094  | timeZone     | empty   | 400          | error          |
            | TU095  | timeZone     | null    | 400          | error          |
            | TU096  | language     | invalid | 400          | error          |
            | TU097  | language     | empty   | 400          | error          |
            | TU098  | language     | null    | 400          | error          |
            | TU099  | isSSO        | invalid | 400          | error          |
            | TU100  | isSSO        | empty   | 400          | error          |
            | TU101  | isSSO        | null    | 400          | error          |
            | TU102  | status       | invalid | 400          | error          |
            | TU103  | status       | empty   | 400          | error          |
            | TU104  | status       | null    | 400          | error          |
            | TU105  | picture      | invalid | 400          | error          |
            | TU106  | picture      | empty   | 400          | error          |
            | TU107  | picture      | null    | 400          | error          |

    @api @userAPI@userapi @system @getsingle @functional @smoke @nonreviewed @superadmin
    Scenario: <testid> Get a single user when <field> as <value> value through query engine
        When <testid> Get a single user when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get user through query engine
        Examples:
            | testid | field    | value | responsecode | responsestatus |
            | TU108  | username | valid | 200          | success        |

    @api @userAPI@userapi @system @getsingle @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Get a single user when <field> as <value> value through query engine
        When <testid> Get a single user when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get user through query engine
        Examples:
            | testid | field        | value | responsecode | responsestatus |
            | TU109  | title        | valid | 200          | success        |
            | TU110  | programId    | valid | 200          | success        |
            | TU111  | country      | valid | 200          | success        |
            | TU112  | email        | valid | 200          | success        |
            | TU113  | password     | valid | 200          | success        |
            | TU114  | gender       | valid | 200          | success        |
            | TU115  | mobileNumber | valid | 200          | success        |
            | TU116  | timeZone     | valid | 200          | success        |
            | TU117  | language     | valid | 200          | success        |
            | TU118  | isSSO        | valid | 200          | success        |
            | TU119  | status       | valid | 200          | success        |
            | TU120  | picture      | valid | 200          | success        |

    @api @userAPI@userapi @system @getsingle @functional @negative @nonreviewed @superadmin
    Scenario: <testid> Get a single user when <field> as <value> value through query engine
        When <testid> Get a single user when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get user through query engine
        Examples:
            | testid | field        | value   | responsecode | responsestatus |
            | TU121  | username     | invalid | 400          | error          |
            | TU122  | username     | empty   | 400          | error          |
            | TU123  | username     | null    | 400          | error          |
            | TU124  | title        | invalid | 400          | error          |
            | TU125  | title        | empty   | 400          | error          |
            | TU126  | title        | null    | 400          | error          |
            | TU127  | programId    | invalid | 400          | error          |
            | TU128  | programId    | empty   | 400          | error          |
            | TU129  | programId    | null    | 400          | error          |
            | TU130  | country      | invalid | 400          | error          |
            | TU131  | country      | empty   | 400          | error          |
            | TU132  | country      | null    | 400          | error          |
            | TU133  | email        | invalid | 400          | error          |
            | TU134  | email        | empty   | 400          | error          |
            | TU135  | email        | null    | 400          | error          |
            | TU136  | password     | invalid | 400          | error          |
            | TU137  | password     | empty   | 400          | error          |
            | TU138  | password     | null    | 400          | error          |
            | TU139  | gender       | invalid | 400          | error          |
            | TU140  | gender       | empty   | 400          | error          |
            | TU141  | gender       | null    | 400          | error          |
            | TU142  | mobileNumber | invalid | 400          | error          |
            | TU143  | mobileNumber | empty   | 400          | error          |
            | TU144  | mobileNumber | null    | 400          | error          |
            | TU145  | timeZone     | invalid | 400          | error          |
            | TU146  | timeZone     | empty   | 400          | error          |
            | TU147  | timeZone     | null    | 400          | error          |
            | TU148  | language     | invalid | 400          | error          |
            | TU149  | language     | empty   | 400          | error          |
            | TU150  | language     | null    | 400          | error          |
            | TU151  | isSSO        | invalid | 400          | error          |
            | TU152  | isSSO        | empty   | 400          | error          |
            | TU153  | isSSO        | null    | 400          | error          |
            | TU154  | status       | invalid | 400          | error          |
            | TU155  | status       | empty   | 400          | error          |
            | TU156  | status       | null    | 400          | error          |
            | TU157  | picture      | invalid | 400          | error          |
            | TU158  | picture      | empty   | 400          | error          |
            | TU159  | picture      | null    | 400          | error          |

    @api @userAPI@userapi @system @get @functional @smoke @nonreviewed @superadmin
    Scenario: <testid> Get all users through query engine
        When <testid> Get all users through query engine
        Then <responsecode> and <responsestatus> is received for get user through query engine
        Examples:
            | testid | responsecode | responsestatus |
            | TU160  | 200          | success        |