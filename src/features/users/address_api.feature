Feature: Address CRUD through CQ Engine


    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema
    # name, description, line1, line2, line3, line4, line5, line6, city, country, countryISOCode, postalCode, province, state

    @api @organizationAPI @addressapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating an Address using <payload> payload through command engine
        When <testid> Creating an address through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the address creation through command engine
        Then Get the id and payload of the address if creation status is <responsestatus>
        Examples:
            | testid | payload | responsecode | responsestatus |
            | A001   | valid   | 200          | success        |

    @api @organizationAPI @addressapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an Address using <payload> payload through command engine
        When <testid> Creating an address through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the address creation through command engine
        Examples:
            | testid | payload | responsecode | responsestatus |
            | A002   | invalid | 400          | error          |

    @api @organizationAPI @addressapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an Address without <field> field in the payload through command engine
        When <testid> Creating an address through command engine without <field> field in the payload
        Then <responsecode> and <responsestatus> is received in the address creation through command engine
        Examples:
            | testid | field          | responsecode | responsestatus |
            | A003   | name           | 400          | error          |
            | A004   | description    | 400          | error          |
            | A005   | line1          | 400          | error          |
            | A006   | line2          | 400          | error          |
            | A007   | line3          | 400          | error          |
            | A008   | line4          | 400          | error          |
            | A009   | line5          | 400          | error          |
            | A010   | line6          | 400          | error          |
            | A011   | city           | 400          | error          |
            | A012   | country        | 400          | error          |
            | A013   | countryISOCode | 400          | error          |
            | A014   | postalCode     | 400          | error          |
            | A015   | province       | 400          | error          |
            | A016   | state          | 400          | error          |

    @api @organizationAPI @addressapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating an Address using value type as <type> for <field> in the payload through command engine
        When <testid> Creating an address through command engine using <type> <field> in the payload
        Then <responsecode> and <responsestatus> is received in the address creation through command engine
        Examples:
            | testid | type    | field          | responsecode | responsestatus |
            | A017   | invalid | name           | 400          | error          |
            | A018   | empty   | name           | 400          | error          |
            | A019   | null    | name           | 400          | error          |
            | A020   | invalid | description    | 400          | error          |
            | A021   | empty   | description    | 400          | error          |
            | A022   | null    | description    | 400          | error          |
            | A023   | invalid | line1          | 400          | error          |
            | A024   | empty   | line1          | 400          | error          |
            | A025   | null    | line1          | 400          | error          |
            | A026   | invalid | line2          | 400          | error          |
            | A027   | empty   | line2          | 400          | error          |
            | A028   | null    | line2          | 400          | error          |
            | A029   | invalid | line3          | 400          | error          |
            | A030   | empty   | line3          | 400          | error          |
            | A031   | null    | line3          | 400          | error          |
            | A032   | invalid | line4          | 400          | error          |
            | A033   | empty   | line4          | 400          | error          |
            | A034   | null    | line4          | 400          | error          |
            | A035   | invalid | line5          | 400          | error          |
            | A036   | empty   | line5          | 400          | error          |
            | A037   | null    | line5          | 400          | error          |
            | A038   | invalid | line6          | 400          | error          |
            | A039   | empty   | line6          | 400          | error          |
            | A040   | null    | line6          | 400          | error          |
            | A041   | invalid | city           | 400          | error          |
            | A042   | empty   | city           | 400          | error          |
            | A043   | null    | city           | 400          | error          |
            | A044   | invalid | country        | 400          | error          |
            | A045   | empty   | country        | 400          | error          |
            | A046   | null    | country        | 400          | error          |
            | A047   | invalid | countryISOCode | 400          | error          |
            | A048   | empty   | countryISOCode | 400          | error          |
            | A049   | null    | countryISOCode | 400          | error          |
            | A050   | invalid | postalCode     | 400          | error          |
            | A051   | empty   | postalCode     | 400          | error          |
            | A052   | null    | postalCode     | 400          | error          |
            | A053   | invalid | province       | 400          | error          |
            | A054   | empty   | province       | 400          | error          |
            | A055   | null    | province       | 400          | error          |
            | A056   | invalid | state          | 400          | error          |
            | A057   | empty   | state          | 400          | error          |
            | A058   | null    | state          | 400          | error          |

    @api @organizationAPI @addressapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating an Address using <payload> payload through command engine
        When <testid> Updating an address through command engine using <payload> payload
        Then <responsecode> and <responsestatus> is received in the address update through command engine
        Examples:
            | testid | payload | responsecode | responsestatus |
            | A059   | valid   | 200          | success        |

    @api @organizationAPI @addressapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating an Address <field> field using <type> value through command engine
        When <testid> Updating an address <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the address update through command engine
        Examples:
            | testid | field          | type  | responsecode | responsestatus |
            | A060   | name           | valid | 200          | success        |
            | A061   | description    | valid | 200          | success        |
            | A062   | line1          | valid | 200          | success        |
            | A063   | line2          | valid | 200          | success        |
            | A064   | line3          | valid | 200          | success        |
            | A065   | line4          | valid | 200          | success        |
            | A066   | line5          | valid | 200          | success        |
            | A067   | line6          | valid | 200          | success        |
            | A068   | city           | valid | 200          | success        |
            | A069   | country        | valid | 200          | success        |
            | A070   | countryISOCode | valid | 200          | success        |
            | A071   | postalCode     | valid | 200          | success        |
            | A072   | province       | valid | 200          | success        |
            | A073   | state          | valid | 200          | success        |

    @api @organizationAPI @addressapi @system @put @functional @negative @notreviewed @superadmin
    Scenario: <testid> Updating an Address <field> field using <type> value through command engine
        When <testid> Updating an address <field> field using <type> value through command engine
        Then <responsecode> and <responsestatus> is received in the address update through command engine
        Examples:
            | testid | field          | type    | responsecode | responsestatus |
            | A074   | name           | invalid | 400          | error          |
            | A075   | name           | empty   | 400          | error          |
            | A076   | name           | null    | 400          | error          |
            | A077   | description    | invalid | 400          | error          |
            | A078   | description    | empty   | 400          | error          |
            | A079   | description    | null    | 400          | error          |
            | A080   | line1          | invalid | 400          | error          |
            | A081   | line1          | empty   | 400          | error          |
            | A082   | line1          | null    | 400          | error          |
            | A083   | line2          | invalid | 400          | error          |
            | A084   | line2          | empty   | 400          | error          |
            | A085   | line2          | null    | 400          | error          |
            | A086   | line3          | invalid | 400          | error          |
            | A087   | line3          | empty   | 400          | error          |
            | A088   | line3          | null    | 400          | error          |
            | A089   | line4          | invalid | 400          | error          |
            | A090   | line4          | empty   | 400          | error          |
            | A091   | line4          | null    | 400          | error          |
            | A092   | line5          | invalid | 400          | error          |
            | A093   | line5          | empty   | 400          | error          |
            | A094   | line5          | null    | 400          | error          |
            | A095   | line6          | invalid | 400          | error          |
            | A096   | line6          | empty   | 400          | error          |
            | A097   | line6          | null    | 400          | error          |
            | A098   | city           | invalid | 400          | error          |
            | A099   | city           | empty   | 400          | error          |
            | A100   | city           | null    | 400          | error          |
            | A101   | country        | invalid | 400          | error          |
            | A102   | country        | empty   | 400          | error          |
            | A103   | country        | null    | 400          | error          |
            | A104   | countryISOCode | invalid | 400          | error          |
            | A105   | countryISOCode | empty   | 400          | error          |
            | A106   | countryISOCode | null    | 400          | error          |
            | A107   | postalCode     | invalid | 400          | error          |
            | A108   | postalCode     | empty   | 400          | error          |
            | A109   | postalCode     | null    | 400          | error          |
            | A110   | province       | invalid | 400          | error          |
            | A111   | province       | empty   | 400          | error          |
            | A112   | province       | null    | 400          | error          |
            | A113   | state          | invalid | 400          | error          |
            | A114   | state          | empty   | 400          | error          |
            | A115   | state          | null    | 400          | error          |

    @api @organizationAPI @addressapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Get a single address when <field> as <value> value through query engine
        When <testid> Get a single address when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get address through query engine
        Examples:
            | testid | field | value | responsecode | responsestatus |
            | A116   | name  | valid | 200          | success        |

    @api @organizationAPI @addressapi @system @getsingle @functional @positive @notreviewed @superadmin
    Scenario: <testid> Get a single address when <field> as <value> value through query engine
        When <testid> Get a single address when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get address through query engine
        Examples:
            | testid | field          | value | responsecode | responsestatus |
            | A117   | description    | valid | 200          | success        |
            | A118   | line1          | valid | 200          | success        |
            | A119   | line2          | valid | 200          | success        |
            | A120   | line3          | valid | 200          | success        |
            | A121   | line4          | valid | 200          | success        |
            | A122   | line5          | valid | 200          | success        |
            | A123   | line6          | valid | 200          | success        |
            | A124   | city           | valid | 200          | success        |
            | A125   | country        | valid | 200          | success        |
            | A126   | countryISOCode | valid | 200          | success        |
            | A127   | postalCode     | valid | 200          | success        |
            | A128   | province       | valid | 200          | success        |
            | A129   | state          | valid | 200          | success        |

    @api @organizationAPI @addressapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Get a single address when <field> as <value> value through query engine
        When <testid> Get a single address when <field> as <value> value through query engine
        Then <responsecode> and <responsestatus> is received for get address through query engine
        Examples:
            | testid | field          | value   | responsecode | responsestatus |
            | A130   | name           | invalid | 400          | error          |
            | A131   | name           | empty   | 400          | error          |
            | A132   | name           | null    | 400          | error          |
            | A133   | description    | invalid | 400          | error          |
            | A134   | description    | empty   | 400          | error          |
            | A135   | description    | null    | 400          | error          |
            | A136   | line1          | invalid | 400          | error          |
            | A137   | line1          | empty   | 400          | error          |
            | A138   | line1          | null    | 400          | error          |
            | A139   | line2          | invalid | 400          | error          |
            | A140   | line2          | empty   | 400          | error          |
            | A141   | line2          | null    | 400          | error          |
            | A142   | line3          | invalid | 400          | error          |
            | A143   | line3          | empty   | 400          | error          |
            | A144   | line3          | null    | 400          | error          |
            | A145   | line4          | invalid | 400          | error          |
            | A146   | line4          | empty   | 400          | error          |
            | A147   | line4          | null    | 400          | error          |
            | A148   | line5          | invalid | 400          | error          |
            | A149   | line5          | empty   | 400          | error          |
            | A150   | line5          | null    | 400          | error          |
            | A151   | line6          | invalid | 400          | error          |
            | A152   | line6          | empty   | 400          | error          |
            | A153   | line6          | null    | 400          | error          |
            | A154   | city           | invalid | 400          | error          |
            | A155   | city           | empty   | 400          | error          |
            | A156   | city           | null    | 400          | error          |
            | A157   | country        | invalid | 400          | error          |
            | A158   | country        | empty   | 400          | error          |
            | A159   | country        | null    | 400          | error          |
            | A160   | countryISOCode | invalid | 400          | error          |
            | A161   | countryISOCode | empty   | 400          | error          |
            | A162   | countryISOCode | null    | 400          | error          |
            | A163   | postalCode     | invalid | 400          | error          |
            | A164   | postalCode     | empty   | 400          | error          |
            | A165   | postalCode     | null    | 400          | error          |
            | A166   | province       | invalid | 400          | error          |
            | A167   | province       | empty   | 400          | error          |
            | A168   | province       | null    | 400          | error          |
            | A169   | state          | invalid | 400          | error          |
            | A170   | state          | empty   | 400          | error          |
            | A171   | state          | null    | 400          | error          |

    @api @organizationAPI @addressapi @system @getall @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Get all addresses through query engine
        When <testid> Get all addresses through query engine
        Then <responsecode> and <responsestatus> is received for get address through query engine
        Examples:
            | testid | responsecode | responsestatus |
            | A172   | 200          | success        |