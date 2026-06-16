Feature: Tenant config CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by = Nandhin Kesavan
    # updated by  = Nandhini Kesavan
    # project url = /phoenix/services/tenant

    @api @tenantAPI @tenantconfigapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Tenant Config with change in key as <valuetype>

        When <testid> <parameter> having <valuetype> with <length> is passed in the Tenant config request
        Then <responsecode> and <responsestatus> is received in the tenant config response
        Then responseheader should contain the id of the Tenantconfig if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C011   | configkey | uuid         | 36       | 201          | success        |
            | C012   | configkey | empty        | empty    | 400          | error          |
            | C013   | configkey | null         | null     | 400          | error          |
            | C014   | configkey | alphabets    | 36       | 400          | error          |
            | C015   | configkey | numeric      | 36       | 400          | error          |
            | C016   | configkey | boolean      | boolean  | 400          | error          |
            | C017   | configkey | alphanumeric | 37       | 400          | error          |
            | C018   | configkey | alphanumeric | 36       | 400          | error          |
            | C019   | configkey | existing     | existing | 400          | error          |
            | C020   | configkey | special char | 36       | 400          | error          |

    @api @tenantAPI @tenantconfigapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Tenant Config with change in value as <valuetype>

        When <testid> <parameter> having <valuetype> with <length> is passed in the Tenant config request
        Then <responsecode> and <responsestatus> is received in the tenant config response
        Then responseheader should contain the id of the Tenantconfig if <responsestatus> is success

        Examples:
            | C021 | configvalue | uuid         | 36       | 201 | success |
            | C022 | configvalue | empty        | empty    | 400 | error   |
            | C023 | configvalue | null         | null     | 400 | error   |
            | C024 | configvalue | alphabets    | 36       | 400 | error   |
            | C025 | configvalue | numeric      | 36       | 400 | error   |
            | C026 | configvalue | boolean      | boolean  | 400 | error   |
            | C027 | configvalue | alphanumeric | 37       | 400 | error   |
            | C028 | configvalue | alphanumeric | 36       | 400 | error   |
            | C029 | configvalue | existing     | existing | 400 | error   |
            | C030 | configvalue | special char | 36       | 400 | error   |


    @api @tenantAPI @tenantconfigapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Tenant Config with change in type as <valuetype>

        When <testid> <parameter> having <valuetype> with <length> is passed in the Tenant config request
        Then <responsecode> and <responsestatus> is received in the tenant config response
        Then responseheader should contain the id of the Tenantconfig if <responsestatus> is success

        Examples:
            | C031 | configtype | uuid         | 36       | 201 | success |
            | C032 | configtype | empty        | empty    | 400 | error   |
            | C033 | configtype | null         | null     | 400 | error   |
            | C034 | configtype | alphabets    | 36       | 400 | error   |
            | C035 | configtype | numeric      | 36       | 400 | error   |
            | C036 | configtype | boolean      | boolean  | 400 | error   |
            | C037 | configtype | alphanumeric | 37       | 400 | error   |
            | C038 | configtype | alphanumeric | 36       | 400 | error   |
            | C039 | configtype | existing     | existing | 400 | error   |
            | C040 | configtype | special char | 36       | 400 | error   |

    @api @tenantAPI @tenantconfigapi @system @post @functional @notreviewed @superadmin
    Scenario: <testid> Creating a Tenant Config with change in config as <valuetype>

        When <testid> <parameter> having <valuetype> with <length> is passed in the Tenant config request
        Then <responsecode> and <responsestatus> is received in the tenant config response
        Then responseheader should contain the id of the Tenantconfig if <responsestatus> is success

        Examples:
            | C041 | config | uuid         | 36       | 201 | success |
            | C042 | config | empty        | empty    | 400 | error   |
            | C043 | config | null         | null     | 400 | error   |
            | C044 | config | alphabets    | 36       | 400 | error   |
            | C045 | config | numeric      | 36       | 400 | error   |
            | C046 | config | boolean      | boolean  | 400 | error   |
            | C047 | config | alphanumeric | 37       | 400 | error   |
            | C048 | config | alphanumeric | 36       | 400 | error   |
            | C049 | config | existing     | existing | 400 | error   |
            | C050 | config | special char | 36       | 400 | error   |

    @api @tenantAPI @tenantconfigapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a tenant config by quering tenant config id as <value>

        When <testid> <query parameter> includes <value> for get tenant config request
        Then <responsecode>, <responsestatus> and <records> is received in the tenant config response

        Examples:
            | testid | query parameter | value   | responsecode | reponsestatus | records     |
            | C1329  | id              | valid   | 200          | success       | only one    |
            | C1330  | id              | blank   | 400          | error         | not present |
            | C1331  | id              | null    | 400          | error         | none        |
            | C1332  | id              | invalid | 400          | error         | none        |

    @api @tenantAPI @tenantconfigapi @system @get @functional @notreviewed @superadmin
    Scenario: <testid> Getting a tenant config by quering tenantid as <value>

        When <testid> <query parameter> includes <value> for get tenant config reuqest
        Then <responsecode>, <responsestatus> and <records> is received in the tenant config response

        Examples:
            | testid | query parameter | value   | responsecode | reponsestatus | records |
            | C1333  | tenantid        | valid   | 200          | success       | 1       |
            | C1334  | tenantid        | blank   | 400          | error         | 0       |
            | C1335  | tenantid        | null    | 400          | error         | 0       |
            | C1336  | tenantid        | invalid | 400          | error         | 0       |


    @api @tenantAPI @tenantconfigapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a Program Config with change in program country id as <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter        | valuetype    | length   | responsecode | responsestatus |
            | C063   | programcountryid | uuid         | 36       | 201          | success        |
            | C064   | programcountryid | empty        | empty    | 400          | error          |
            | C065   | programcountryid | null         | null     | 400          | error          |
            | C066   | programcountryid | alphabets    | 36       | 400          | error          |
            | C067   | programcountryid | numeric      | 36       | 400          | error          |
            | C068   | programcountryid | boolean      | boolean  | 400          | error          |
            | C069   | programcountryid | alphanumeric | 37       | 400          | error          |
            | C070   | programcountryid | alphanumeric | 36       | 400          | error          |
            | C071   | programcountryid | existing     | existing | 400          | error          |
            | C072   | programcountryid | special char | 36       | 400          | error          |

    @api @tenantAPI @tenantconfigapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program config with change in config key as <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C073   | configkey | uuid         | 36       | 201          | success        |
            | C074   | configkey | empty        | empty    | 400          | error          |
            | C075   | configkey | null         | null     | 400          | error          |
            | C076   | configkey | alphabets    | 36       | 400          | error          |
            | C077   | configkey | numeric      | 36       | 400          | error          |
            | C078   | configkey | boolean      | boolean  | 400          | error          |
            | C079   | configkey | alphanumeric | 37       | 400          | error          |
            | C080   | configkey | alphanumeric | 36       | 400          | error          |
            | C081   | configkey | existing     | existing | 400          | error          |
            | C082   | configkey | special char | 36       | 400          | error          |

    @api @tenantAPI @tenantconfigapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program config with change in config value as <valuetype> with <length>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C083   | configvalue | uuid         | 36       | 201          | success        |
            | C084   | configvalue | empty        | empty    | 400          | error          |
            | C085   | configvalue | null         | null     | 400          | error          |
            | C086   | configvalue | alphabets    | 36       | 400          | error          |
            | C087   | configvalue | numeric      | 36       | 400          | error          |
            | C088   | configvalue | boolean      | boolean  | 400          | error          |
            | C089   | configvalue | alphanumeric | 37       | 400          | error          |
            | C090   | configvalue | alphanumeric | 36       | 400          | error          |
            | C091   | configvalue | existing     | existing | 400          | error          |
            | C092   | configvalue | special char | 36       | 400          | error          |


    @api @tenantAPI @tenantconfigapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program config with change in config type as <valuetype>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter  | valuetype    | length   | responsecode | responsestatus |
            | C093   | configtype | uuid         | 36       | 201          | success        |
            | C094   | configtype | empty        | empty    | 400          | error          |
            | C095   | configtype | null         | null     | 400          | error          |
            | C096   | configtype | alphabets    | 36       | 400          | error          |
            | C097   | configtype | numeric      | 36       | 400          | error          |
            | C098   | configtype | boolean      | boolean  | 400          | error          |
            | C099   | configtype | alphanumeric | 37       | 400          | error          |
            | C100   | configtype | alphanumeric | 36       | 400          | error          |
            | C101   | configtype | existing     | existing | 400          | error          |
            | C102   | configtype | special char | 36       | 400          | error          |

    @api @tenantAPI @tenantconfigapi @system @put @functional @notreviewed @superadmin
    Scenario: <testid> Updating a program config with change in config type as <valuetype>
        When <testid> Updating <parameter> having <valuetype> with <length> is passed in the program config request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter | valuetype    | length   | responsecode | responsestatus |
            | C103   | config    | uuid         | 36       | 201          | success        |
            | C104   | config    | empty        | empty    | 400          | error          |
            | C105   | config    | null         | null     | 400          | error          |
            | C106   | config    | alphabets    | 36       | 400          | error          |
            | C107   | config    | numeric      | 36       | 400          | error          |
            | C108   | config    | boolean      | boolean  | 400          | error          |
            | C109   | config    | alphanumeric | 37       | 400          | error          |
            | C200   | config    | alphanumeric | 36       | 400          | error          |
            | C201   | config    | existing     | existing | 400          | error          |
            | C202   | config    | special char | 36       | 400          | error          |
    @api @tenantAPI @tenantconfigapi @system @getsingle @functional @notreviewed @superadmin
    Scenario: <testid> Getting a single tenant config with tenant path parameter as <value>

        When <testid> <parameter> tenant path having <value> is passed in the tenant config api request
        Then <responsecode> and <responsestatus> is received in the tenant config response

        Examples:
            | testid | parameter | value  | responsecode | responsestatus |
            | C360   | tenantid  | valid  | 200          | success        |
            | C361   | tenantid  | string | 400          | error          |
            | C362   | tenantid  | null   | 400          | error          |
            | C363   | tenantid  | empty  | 400          | error          |

    @api @tenantAPI @tenantconfigapi @system @delete @functional @notreviewed @superadmin
    Scenario: <testid> Deleting a tenant config for different parameters as <value>

        When <testid> <parameter> delete a <value> tenant config in the tenant congif api request
        Then <responsecode>, <responsestatus> and <response> is received in the tenant config response

            | testid | value   | responsecode | responsestatus | response |
            | C364   | valid   | 200          | success        | success  |
            | C365   | blank   | 400          | error          | error    |
            | C366   | null    | 400          | error          | error    |
            | C367   | invalid | 400          | error          | error    |
            | C368   | deleted | 400          | error          | error    |
