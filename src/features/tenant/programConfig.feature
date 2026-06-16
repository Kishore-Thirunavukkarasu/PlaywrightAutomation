Feature: Program Config CRUD and System Testing
    CRUD testing includes create, retrieve, Updating and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Nandhini Kesavan
    # Updatingd by  = Nandhini Kesavan
    # project url = /phoenix/services/tenant

    @api @tenantAPI @programconfigapi @system @post @functional @smoke @reviewed @superadmin
    Scenario: <testid> Verify by creating a program config in a <valuetype> program id
        When <testid> Creating a program config in <valuetype> program id
        Then <responsecode> and <responsestatus> is received for create program config response
        Then responseheader should contain the id of the programconfig if <responsestatus> is success
        Examples:
            | testid | valuetype | responsecode | responsestatus |
            | C109   | existing  | 201          | success        |

    @api @tenantAPI @programconfigapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Creating a program config with positive <parameter> in request
        When <testid> <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received for create program config response
        Then responseheader should contain the id of the programconfig if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C004   | buttoncolor | alphabets    | 255      | 201          | success        |
            | C005   | buttoncolor | numeric      | 255      | 201          | success        |
            | C007   | buttoncolor | alphanumeric | 256      | 201          | success        |
            | C008   | buttoncolor | alphanumeric | 254      | 201          | success        |
            | C009   | buttoncolor | existing     | existing | 201          | success        |
            | C014   | configkey   | alphabets    | 255      | 201          | success        |
            | C015   | configkey   | numeric      | 255      | 201          | success        |
            | C011   | configkey   | uuid         | 255      | 201          | success        |
            | C017   | configkey   | alphanumeric | 256      | 201          | success        |
            | C018   | configkey   | alphanumeric | 254      | 201          | success        |
            | C021   | configvalue | uuid         | 255      | 201          | success        |
            | C031   | configtype  | uuid         | 255      | 201          | success        |
            | C034   | configtype  | alphabets    | 255      | 201          | success        |
            | C035   | configtype  | numeric      | 255      | 201          | success        |
            | C0256  | configtype  | alphanumeric | 256      | 201          | success        |


    @api @tenantAPI @programconfigapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating a program config with negative <parameter> in request
        When <testid> <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received for create program config response
        Then responseheader should contain the id of the programconfig if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C101   | programid   | uuid         | 36       | 400          | error          |
            | C102   | programid   | empty        | empty    | 400          | error          |
            | C103   | programid   | null         | null     | 400          | error          |
            | C104   | programid   | alphabets    | 36       | 404          | error          |
            | C105   | programid   | numeric      | 36       | 400          | error          |
            | C106   | programid   | boolean      | boolean  | 400          | error          |
            | C107   | programid   | alphanumeric | 37       | 400          | error          |
            | C108   | programid   | alphanumeric | 35       | 400          | error          |
            | C001   | buttoncolor | uuid         | 255      | 400          | error          |
            | C002   | buttoncolor | empty        | empty    | 400          | error          |
            | C003   | buttoncolor | null         | null     | 400          | error          |
            | C006   | buttoncolor | boolean      | boolean  | 400          | error          |
            | C010   | buttoncolor | special char | 256      | 400          | error          |
            | C012   | configkey   | empty        | empty    | 400          | error          |
            | C013   | configkey   | null         | null     | 400          | error          |
            | C016   | configkey   | boolean      | boolean  | 400          | error          |
            | C019   | configkey   | existing     | existing | 400          | error          |
            | C020   | configkey   | special char | 256      | 400          | error          |
            | C022   | configvalue | empty        | empty    | 400          | error          |
            | C023   | configvalue | null         | null     | 400          | error          |
            | C024   | configvalue | alphabets    | 255      | 400          | error          |
            | C025   | configvalue | numeric      | 255      | 400          | error          |
            | C026   | configvalue | boolean      | boolean  | 400          | error          |
            | C027   | configvalue | alphanumeric | 256      | 400          | error          |
            | C028   | configvalue | alphanumeric | 255      | 400          | error          |
            | C029   | configvalue | existing     | existing | 400          | error          |
            | C030   | configvalue | special char | 255      | 400          | error          |
            | C032   | configtype  | empty        | empty    | 400          | error          |
            | C033   | configtype  | null         | null     | 400          | error          |
            | C0255  | configtype  | boolean      | boolean  | 400          | error          |
            | C038   | configtype  | alphanumeric | 255      | 400          | error          |
            | C039   | configtype  | existing     | existing | 400          | error          |
            | C040   | configtype  | special char | 255      | 400          | error          |

    @api @tenantAPI @programconfigapi @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a program config by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program config request
        Then <responsecode> and <responsestatus> and <records> is received in the get program config response
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C051   | id              | valid | 200          | success        | 1       |

    @api @tenantAPI @programconfigapi @system @get @functional @positive @notreviewed @superadmin
    Scenario: <testid> Getting a program config by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program config request
        Then <responsecode> and <responsestatus> and <records> is received in the get program config response
        Examples:
            | testid | query parameter  | value | responsecode | responsestatus | records |
            | C055   | programId        | valid | 200          | success        | 1       |
            | C059   | programcountryid | valid | 200          | success        | 1       |

    @api @tenantAPI @programconfigapi @system @get @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a program config by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program config request
        Then <responsecode> and <responsestatus> and <records> is received in the get program config response
        Examples:
            | testid | query parameter  | value   | responsecode | responsestatus | records |
            | C052   | id               | blank   | 400          | error          | 0       |
            | C053   | id               | null    | 400          | error          | 0       |
            | C054   | id               | invalid | 400          | error          | 0       |
            | C056   | programId        | blank   | 400          | error          | 0       |
            | C057   | programId        | null    | 400          | error          | 0       |
            | C058   | programId        | invalid | 400          | error          | 0       |
            | C060   | programcountryid | blank   | 400          | error          | 0       |
            | C061   | programcountryid | null    | 400          | error          | 0       |
            | C062   | programcountryid | invalid | 400          | error          | 0       |

    @api @tenantAPI @programconfigapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating a Program Config with replacing <parameter> as <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the update program config request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | parameter   | valuetype | length | responsecode | responsestatus |
            | C063   | buttoncolor | uuid      | 255    | 201          | success        |

    @api @tenantAPI @programconfigapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a Program Config with replacing <parameter> with positive <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the update program config request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | parameter   | valuetype    | length | responsecode | responsestatus |
            | C066   | buttoncolor | alphabets    | 255    | 201          | success        |
            | C067   | buttoncolor | numeric      | 255    | 201          | success        |
            | C069   | buttoncolor | alphanumeric | 256    | 201          | success        |
            | C070   | buttoncolor | alphanumeric | 255    | 201          | success        |
            | C073   | configkey   | uuid         | 255    | 201          | success        |
            | C076   | configkey   | alphabets    | 255    | 201          | success        |
            | C077   | configkey   | numeric      | 255    | 201          | success        |
            | C079   | configkey   | alphanumeric | 256    | 201          | success        |
            | C080   | configkey   | alphanumeric | 255    | 201          | success        |
            | C083   | configvalue | uuid         | 255    | 201          | success        |
            | C086   | configvalue | alphabets    | 255    | 201          | success        |
            | C087   | configvalue | numeric      | 255    | 201          | success        |
            | C089   | configvalue | alphanumeric | 256    | 201          | success        |
            | C090   | configvalue | alphanumeric | 255    | 201          | success        |
            | C093   | configtype  | uuid         | 255    | 201          | success        |
            | C096   | configtype  | alphabets    | 255    | 201          | success        |
            | C097   | configtype  | numeric      | 255    | 201          | success        |
            | C099   | configtype  | alphanumeric | 256    | 201          | success        |
            | C100   | configtype  | alphanumeric | 255    | 201          | success        |

    @api @tenantAPI @programconfigapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a Program Config with replacing <parameter> with positive <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the update program config request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C064   | buttoncolor | empty        | empty    | 400          | error          |
            | C065   | buttoncolor | null         | null     | 400          | error          |
            | C068   | buttoncolor | boolean      | boolean  | 400          | error          |
            | C071   | buttoncolor | existing     | existing | 400          | error          |
            | C072   | buttoncolor | special char | 255      | 400          | error          |
            | C074   | configkey   | empty        | empty    | 400          | error          |
            | C075   | configkey   | null         | null     | 400          | error          |
            | C078   | configkey   | boolean      | boolean  | 400          | error          |
            | C081   | configkey   | existing     | existing | 400          | error          |
            | C082   | configkey   | special char | 255      | 400          | error          |
            | C084   | configvalue | empty        | empty    | 400          | error          |
            | C085   | configvalue | null         | null     | 400          | error          |
            | C088   | configvalue | boolean      | boolean  | 400          | error          |
            | C091   | configvalue | existing     | existing | 400          | error          |
            | C092   | configvalue | special char | 255      | 400          | error          |
            | C094   | configtype  | empty        | empty    | 400          | error          |
            | C095   | configtype  | null         | null     | 400          | error          |
            | C098   | configtype  | boolean      | boolean  | 400          | error          |
            | C101   | configtype  | existing     | existing | 400          | error          |
            | C102   | configtype  | special char | 255      | 400          | error          |

    @api @tenantAPI @programconfigapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a single program config with program path parameter as <value>
        When <testid> <parameter> program path having <value> is passed in the program config api request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | parameter | value | responsecode | responsestatus |
            | C203   | programid | valid | 200          | success        |

    @api @tenantAPI @programconfigapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a single program config with program path parameter as <value>
        When <testid> <parameter> program path having <value> is passed in the program config api request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | parameter | value  | responsecode | responsestatus |
            | C204   | programid | string | 400          | error          |
            | C205   | programid | null   | 400          | error          |
            | C206   | programid | empty  | 400          | error          |

    @api @tenantAPI @programconfigapi @system @delete @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Deleting a program config for different parameters as <value>
        When <testid> delete a <value> program config in the program config api request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | value | responsecode | responsestatus |
            | C207   | valid | 200          | success        |

    @api @tenantAPI @programconfigapi @system @delete @functional @negative @notreviewed @superadmin
    Scenario: <testid> Deleting a program config for different parameters as <value>
        When <testid> delete a <value> program config in the program config api request
        Then <responsecode> and <responsestatus> is received in the program config response
        Examples:
            | testid | value   | responsecode | responsestatus |
            | C208   | blank   | 400          | error          |
            | C209   | null    | 400          | error          |
            | C210   | invalid | 400          | error          |
