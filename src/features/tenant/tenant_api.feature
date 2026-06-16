Feature: Tenant API Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Nandhini Kesavan
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url = /phoenix/services/tenant

    @api @tenantAPI @tenantapi @system @post @functional @smoke @reviewed @superadmin
    Scenario: <testid> Verify with <parameter> having <valuetype> of <length> characters is used to create tenant
        When <testid> <parameter> having <valuetype> <length> characters is passed in the tenant creation request
        Then <responsecode> and <responsestatus> is received for tenant creation request
        Then responseheader should contain the id of the tenant if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C101   | name      | alphabets | 10     | 201          | success        |

    @api @tenantAPI @tenantapi @system @post @functional @positive @reviewed @superadmin
    Scenario: <testid> Verify with <parameter> having positive <valuetype> of <length> characters is used to create tenant
        When <testid> <parameter> having <valuetype> <length> characters is passed in the tenant creation request
        Then <responsecode> and <responsestatus> is received for tenant creation request
        Then responseheader should contain the id of the tenant if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype    | length | responsecode | responsestatus |
            # | C105   | name      | alphabets    | 200    | 201          | success        |
            | C117   | code      | alphanumeric | 3      | 201          | success        |
            | C121   | website   | website      | 200    | 201          | success        |
            | C132   | address   | alphabets    | 200    | 201          | success        |
            | C136   | address   | alphabets    | 200    | 201          | success        |
            | C139   | address   | numeric      | 200    | 201          | success        |
            | C141   | address   | alphanumeric | 200    | 201          | success        |
            | C144   | tenantURL | tenantURL    | 200    | 201          | success        |
            | C155   | state     | alphabets    | 49     | 201          | success        |
            | C159   | state     | alphabets    | 200    | 201          | success        |
            | C165   | city      | alphabets    | 49     | 201          | success        |
            | C169   | city      | alphabets    | 200    | 201          | success        |
            | C175   | country   | alphabets    | 49     | 201          | success        |
            | C179   | country   | alphabets    | 200    | 201          | success        |
            | C185   | zipCode   | numeric      | 6      | 201          | success        |
            | C198   | currency  | alphabets    | 3      | 201          | success        |

    @api @tenantAPI @tenantapi @system @post @functional @negative @reviewed @superadmin
    Scenario: <testid> Verify with <parameter> having negative <valuetype> of <length> characters is used to create tenant
        When <testid> <parameter> having <valuetype> <length> characters is passed in the tenant creation request
        Then <responsecode> and <responsestatus> is received for tenant creation request
        Then responseheader should contain the id of the tenant if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype                 | length   | responsecode | responsestatus |
            | C102   | name      | alphabets                 | 256      | 400          | error          |
            | C103   | name      | empty                     | empty    | 400          | error          |
            | C104   | name      | null                      | null     | 400          | error          |
            | C106   | name      | special char              | 20       | 400          | error          |
            | C107   | name      | alphanumeric              | 25       | 400          | error          |
            | C108   | name      | numeric                   | 25       | 400          | error          |
            | C109   | name      | existing                  | existing | 400          | error          |
            | C110   | name      | boolean                   | boolean  | 400          | error          |
            | C111   | code      | numeric                   | 3        | 400          | error          |
            | C112   | code      | numeric                   | 4        | 400          | error          |
            | C113   | code      | numeric                   | 2        | 400          | error          |
            | C114   | code      | null                      | null     | 400          | error          |
            | C115   | code      | empty                     | empty    | 400          | error          |
            | C116   | code      | special char              | 3        | 400          | error          |
            | C118   | code      | alphabets                 | 3        | 400          | error          |
            | C119   | code      | existing                  | existing | 400          | error          |
            | C120   | code      | boolean                   | boolean  | 400          | error          |
            | C122   | website   | website                   | 256      | 400          | error          |
            | C123   | website   | empty                     | empty    | 400          | error          |
            | C124   | website   | null                      | null     | 400          | error          |
            | C125   | website   | alphabets                 | 250      | 400          | error          |
            | C126   | website   | boolean                   | boolean  | 400          | error          |
            | C127   | website   | existing                  | existing | 400          | error          |
            | C128   | website   | numeric                   | 250      | 400          | error          |
            | C129   | website   | special char              | 250      | 400          | error          |
            | C130   | website   | alphanumeric              | 250      | 400          | error          |
            | C131   | website   | alphabets with space      | 250      | 400          | error          |
            | C133   | address   | alphabets                 | 256      | 400          | error          |
            | C134   | address   | empty                     | empty    | 400          | error          |
            | C135   | address   | null                      | null     | 400          | error          |
            | C137   | address   | boolean                   | boolean  | 400          | error          |
            | C138   | address   | existing                  | existing | 400          | error          |
            | C140   | address   | special char              | 250      | 400          | error          |
            | C145   | tenantURL | tenantURL                 | 256      | 400          | error          |
            | C146   | tenantURL | empty                     | empty    | 400          | error          |
            | C147   | tenantURL | null                      | null     | 400          | error          |
            | C148   | tenantURL | alphabets                 | 250      | 400          | error          |
            | C149   | tenantURL | boolean                   | boolean  | 400          | error          |
            | C150   | tenantURL | existing                  | existing | 400          | error          |
            | C151   | tenantURL | numeric                   | 250      | 400          | error          |
            | C152   | tenantURL | special char              | 250      | 400          | error          |
            | C153   | tenantURL | alphanumeric              | 250      | 400          | error          |
            | C154   | tenantURL | alphabets with space      | 250      | 400          | error          |
            | C156   | state     | alphabets                 | 256      | 400          | error          |
            | C157   | state     | empty                     | empty    | 400          | error          |
            | C158   | state     | null                      | null     | 400          | error          |
            | C160   | state     | special char              | 20       | 400          | error          |
            | C161   | state     | alphanumeric              | 25       | 400          | error          |
            | C162   | state     | numeric                   | 25       | 400          | error          |
            | C163   | state     | existing                  | existing | 400          | error          |
            | C164   | state     | boolean                   | boolean  | 400          | error          |
            | C166   | city      | alphabets                 | 256      | 400          | error          |
            | C167   | city      | empty                     | empty    | 400          | error          |
            | C168   | city      | null                      | null     | 400          | error          |
            | C170   | city      | special char              | 20       | 400          | error          |
            | C171   | city      | alphanumeric              | 25       | 400          | error          |
            | C172   | city      | numeric                   | 25       | 400          | error          |
            | C173   | city      | existing                  | existing | 400          | error          |
            | C174   | city      | boolean                   | boolean  | 400          | error          |
            | C186   | zipCode   | numeric                   | 7        | 400          | error          |
            | C187   | zipCode   | numeric                   | 5        | 400          | error          |
            | C188   | zipCode   | empty                     | empty    | 400          | error          |
            | C189   | zipCode   | null                      | null     | 400          | error          |
            | C190   | zipCode   | alphabets                 | 6        | 400          | error          |
            | C191   | zipCode   | special char              | 6        | 400          | error          |
            | C192   | zipCode   | alphanumeric              | 6        | 400          | error          |
            | C193   | zipCode   | existing                  | existing | 400          | error          |
            | C194   | zipCode   | boolean                   | boolean  | 400          | error          |
            | C195   | zipCode   | alphanumeric special char | 6        | 400          | error          |
            | C196   | zipCode   | numeric special char      | 6        | 400          | error          |
            | C197   | zipCode   | numeric with space        | 6        | 400          | error          |
            | C199   | currency  | alphabets                 | 4        | 400          | error          |
            | C200   | currency  | alphabets                 | 2        | 400          | error          |
            | C201   | currency  | empty                     | empty    | 400          | error          |
            | C202   | currency  | null                      | null     | 400          | error          |
            | C203   | currency  | numeric                   | 3        | 400          | error          |
            | C204   | currency  | special char              | 3        | 400          | error          |
            | C205   | currency  | alphanumeric              | 3        | 400          | error          |
            | C206   | currency  | existing                  | existing | 400          | error          |
            | C207   | currency  | boolean                   | boolean  | 400          | error          |
            | C208   | currency  | alphanumeric special char | 3        | 400          | error          |
            | C209   | currency  | numeric special char      | 3        | 400          | error          |
            | C176   | country   | alphabets                 | 256      | 400          | error          |
            | C177   | country   | empty                     | empty    | 400          | error          |
            | C178   | country   | null                      | null     | 400          | error          |
            | C180   | country   | special char              | 20       | 400          | error          |
            | C181   | country   | alphanumeric              | 25       | 400          | error          |
            | C182   | country   | numeric                   | 25       | 400          | error          |
            | C183   | country   | existing                  | existing | 400          | error          |
            | C184   | country   | boolean                   | boolean  | 400          | error          |

    @api @tenantAPI @tenantapi @system @get @functional @smoke @reviewed @superadmin
    Scenario: <testid> Getting a tenant by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get tenant api
        Then <responsecode>, <responsestatus> and <records> is received for get request in tenant
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C210   | id              | valid | 200          | success        | 1       |

    @api @tenantAPI @tenantapi @system @get @functional @positive @reviewed @superadmin
    Scenario: <testid> Getting a tenant by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get tenant api
        Then <responsecode>, <responsestatus> and <records> is received for get request in tenant
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C213   | id              | empty | 200          | success        | 10      |
            | C214   | name            | valid | 200          | success        | 1       |
            | C217   | name            | empty | 200          | success        | 10      |
            | C218   | code            | valid | 200          | success        | 1       |
            | C221   | code            | empty | 200          | success        | 10      |
            | C222   | website         | valid | 200          | success        | 1       |
            | C225   | website         | empty | 200          | success        | 10      |
            | C226   | address         | valid | 200          | success        | 1       |
            | C229   | address         | empty | 200          | success        | 10      |
            | C230   | tenantURL       | valid | 200          | success        | 1       |
            | C233   | tenantURL       | empty | 200          | success        | 10      |
            | C234   | state           | valid | 200          | success        | 1       |
            | C237   | state           | empty | 200          | success        | 10      |
            | C238   | city            | valid | 200          | success        | 1       |
            | C241   | city            | empty | 200          | success        | 10      |
            | C242   | zipCode         | valid | 200          | success        | 1       |
            | C245   | zipCode         | empty | 200          | success        | 10      |
            | C246   | currency        | valid | 200          | success        | 1       |
            | C249   | currency        | empty | 200          | success        | 10      |
            | C250   | country         | valid | 200          | success        | 1       |
            | C253   | country         | empty | 200          | success        | 10      |

    @api @tenantAPI @tenantapi @system @get @functional @negative @reviewed @superadmin
    Scenario: <testid> Getting a tenant by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get tenant api
        Then <responsecode>, <responsestatus> and <records> is received for get request in tenant
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C211   | id              | invalid | 400          | error          | 0       |
            | C212   | id              | null    | 400          | error          | 0       |
            | C215   | name            | invalid | 400          | error          | 0       |
            | C216   | name            | null    | 400          | error          | 0       |
            | C219   | code            | invalid | 400          | error          | 0       |
            | C220   | code            | null    | 400          | error          | 0       |
            | C223   | website         | invalid | 400          | error          | 0       |
            | C224   | website         | null    | 400          | error          | 0       |
            | C227   | address         | invalid | 400          | error          | 0       |
            | C228   | address         | null    | 400          | error          | 0       |
            | C231   | tenantURL       | invalid | 400          | error          | 0       |
            | C232   | tenantURL       | null    | 400          | error          | 0       |
            | C235   | state           | invalid | 400          | error          | 0       |
            | C236   | state           | null    | 400          | error          | 0       |
            | C239   | city            | invalid | 400          | error          | 0       |
            | C240   | city            | null    | 400          | error          | 0       |
            | C243   | zipCode         | invalid | 400          | error          | 0       |
            | C244   | zipCode         | null    | 400          | error          | 0       |
            | C247   | currency        | invalid | 400          | error          | 0       |
            | C248   | currency        | null    | 400          | error          | 0       |
            | C251   | country         | invalid | 400          | error          | 0       |
            | C252   | country         | null    | 400          | error          | 0       |

    @api @tenantAPI @tenantapi @system @put @functional @smoke @reviewed @superadmin
    Scenario: <testid> Updating a tenant by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a tenant by updating <parameter> of <valuetype> having <length> characters in the tenant request
        Then <responsecode> and <responsestatus> is received for tenant
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C254   | name      | alphabets | 10     | 200          | success        |

    @api @tenantAPI @tenantapi @system @put @functional @positive @reviewed @superadmin
    Scenario: <testid> Updating a tenant by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a tenant by updating <parameter> of <valuetype> having <length> characters in the tenant request
        Then <responsecode> and <responsestatus> is received for tenant
        Examples:
            | testid | parameter | valuetype            | length   | responsecode | responsestatus |
            | C262   | name      | existing             | existing | 200          | success        |
            | C258   | name      | alphabets            | 255      | 200          | success        |
            | C274   | website   | website              | 255      | 200          | success        |
            | C280   | website   | existing             | existing | 200          | success        |
            | C291   | address   | existing             | existing | 200          | success        |
            | C292   | address   | numeric              | 250      | 200          | success        |
            | C293   | address   | special char         | 250      | 200          | success        |
            | C294   | address   | alphanumeric         | 250      | 200          | success        |
            | C295   | address   | alphabets with space | 250      | 200          | success        |
            | C296   | address   | numeric with space   | 250      | 200          | success        |
            | C285   | address   | address              | 255      | 200          | success        |
            | C286   | address   | address              | 256      | 200          | success        |
            | C289   | address   | alphabets            | 250      | 200          | success        |
            | C297   | tenantURL | tenantURL            | 255      | 200          | success        |
            | C303   | tenantURL | existing             | existing | 200          | success        |
            | C308   | state     | alphabets            | 49       | 200          | success        |
            | C312   | state     | alphabets            | 255      | 200          | success        |
            | C316   | state     | existing             | existing | 200          | success        |
            | C318   | city      | alphabets            | 49       | 200          | success        |
            | C326   | city      | existing             | existing | 200          | success        |
            | C322   | city      | alphabets            | 255      | 200          | success        |
            | C328   | zipCode   | numeric              | 6        | 200          | success        |
            | C336   | zipCode   | existing             | existing | 200          | success        |
            | C341   | currency  | alphabets            | 3        | 200          | success        |
            | C349   | currency  | existing             | existing | 200          | success        |
            | C353   | country   | alphabets            | 49       | 200          | success        |
            | C357   | country   | alphabets            | 255      | 200          | success        |
            | C361   | country   | existing             | existing | 200          | success        |

    @api @tenantAPI @tenantapi @system @put @functional @negative @reviewed @superadmin
    Scenario: <testid> Updating a tenant by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a tenant by updating <parameter> of <valuetype> having <length> characters in the tenant request
        Then <responsecode> and <responsestatus> is received for tenant
        Examples:
            | testid | parameter | valuetype                 | length  | responsecode | responsestatus |
            | C255   | name      | alphabets                 | 256     | 400          | error          |
            | C256   | name      | empty                     | empty   | 400          | error          |
            | C257   | name      | null                      | null    | 400          | error          |
            | C259   | name      | special char              | 20      | 400          | error          |
            | C260   | name      | alphanumeric              | 25      | 400          | error          |
            | C261   | name      | numeric                   | 25      | 400          | error          |
            | C263   | name      | boolean                   | boolean | 400          | error          |
            | C275   | website   | website                   | 256     | 400          | error          |
            | C276   | website   | empty                     | empty   | 400          | error          |
            | C277   | website   | null                      | null    | 400          | error          |
            | C278   | website   | alphabets                 | 250     | 400          | error          |
            | C279   | website   | boolean                   | boolean | 400          | error          |
            | C281   | website   | numeric                   | 250     | 400          | error          |
            | C282   | website   | special char              | 250     | 400          | error          |
            | C283   | website   | alphanumeric              | 250     | 400          | error          |
            | C284   | website   | alphabets with space      | 250     | 400          | error          |
            | C287   | address   | empty                     | empty   | 400          | error          |
            | C288   | address   | null                      | null    | 400          | error          |
            | C290   | address   | boolean                   | boolean | 400          | error          |
            | C298   | tenantURL | tenantURL                 | 256     | 400          | error          |
            | C299   | tenantURL | empty                     | empty   | 400          | error          |
            | C300   | tenantURL | null                      | null    | 400          | error          |
            | C301   | tenantURL | alphabets                 | 250     | 400          | error          |
            | C302   | tenantURL | boolean                   | boolean | 400          | error          |
            | C304   | tenantURL | numeric                   | 250     | 400          | error          |
            | C305   | tenantURL | special char              | 250     | 400          | error          |
            | C306   | tenantURL | alphanumeric              | 250     | 400          | error          |
            | C307   | tenantURL | alphabets with space      | 250     | 400          | error          |
            | C309   | state     | alphabets                 | 256     | 400          | error          |
            | C310   | state     | empty                     | empty   | 400          | error          |
            | C311   | state     | null                      | null    | 400          | error          |
            | C313   | state     | special char              | 20      | 400          | error          |
            | C314   | state     | alphanumeric              | 25      | 400          | error          |
            | C315   | state     | numeric                   | 25      | 400          | error          |
            | C317   | state     | boolean                   | boolean | 400          | error          |
            | C319   | city      | alphabets                 | 256     | 400          | error          |
            | C320   | city      | empty                     | empty   | 400          | error          |
            | C321   | city      | null                      | null    | 400          | error          |
            | C323   | city      | special char              | 20      | 400          | error          |
            | C324   | city      | alphanumeric              | 25      | 400          | error          |
            | C325   | city      | numeric                   | 25      | 400          | error          |
            | C327   | city      | boolean                   | boolean | 400          | error          |
            | C329   | zipCode   | numeric                   | 7       | 400          | error          |
            | C330   | zipCode   | numeric                   | 5       | 400          | error          |
            | C331   | zipCode   | empty                     | empty   | 400          | error          |
            | C332   | zipCode   | null                      | null    | 400          | error          |
            | C333   | zipCode   | alphabets                 | 6       | 400          | error          |
            | C334   | zipCode   | special char              | 6       | 400          | error          |
            | C335   | zipCode   | alphanumeric              | 6       | 400          | error          |
            | C337   | zipCode   | boolean                   | boolean | 400          | error          |
            | C338   | zipCode   | alphanumeric special char | 6       | 400          | error          |
            | C339   | zipCode   | numeric special char      | 6       | 400          | error          |
            | C340   | zipCode   | numeric with space        | 6       | 400          | error          |
            | C342   | currency  | alphabets                 | 4       | 400          | error          |
            | C343   | currency  | alphabets                 | 2       | 400          | error          |
            | C344   | currency  | empty                     | empty   | 400          | error          |
            | C345   | currency  | null                      | null    | 400          | error          |
            | C346   | currency  | numeric                   | 3       | 400          | error          |
            | C347   | currency  | special char              | 3       | 400          | error          |
            | C348   | currency  | alphanumeric              | 3       | 400          | error          |
            | C350   | currency  | boolean                   | boolean | 400          | error          |
            | C351   | currency  | alphanumeric special char | 3       | 400          | error          |
            | C352   | currency  | numeric special char      | 3       | 400          | error          |
            | C354   | country   | alphabets                 | 256     | 400          | error          |
            | C355   | country   | empty                     | empty   | 400          | error          |
            | C356   | country   | null                      | null    | 400          | error          |
            | C358   | country   | special char              | 20      | 400          | error          |
            | C359   | country   | alphanumeric              | 25      | 400          | error          |
            | C360   | country   | numeric                   | 25      | 400          | error          |
            | C362   | country   | boolean                   | boolean | 400          | error          |

    @api @tenantAPI @tenantapi @system @getsingle @functional @smoke @reviewed @superadmin
    Scenario: <testid> getting a single tenant with tenant id in path parameter
        When <testid> tenant path with <parameter> having <value> is passed in the tenant request
        Then <responsecode> and <responsestatus> is received for tenant
        Examples:
            | testid | parameter | value | responsecode | responsestatus |
            | C363   | tenantId  | valid | 200          | success        |

    @api @tenantAPI @tenantapi @system @getsingle @functional @negative @reviewed @superadmin
    Scenario: <testid> getting a single tenant with tenant id in path parameter
        When <testid> tenant path with <parameter> having <value> is passed in the tenant request
        Then <responsecode> and <responsestatus> is received for tenant
        Examples:
            | testid | parameter | value   | responsecode | responsestatus |
            | C364   | tenantId  | invalid | 400          | error          |
            | C365   | tenantId  | null    | 400          | error          |
            | C366   | tenantId  | empty   | 400          | error          |

    @api @tenantAPI @tenantapi @system @delete @functional @positive @reviewed @superadmin
    Scenario: <testid> Deleting a tenant by passing id in path parameter with <type> id value
        When <testid> delete a <type> tenant in the request
        Then <responsecode> <responsestatus> is received with deletion message in the tenant request
        Examples:
            | testid | type  | responsecode | responsestatus |
            | C367   | valid | 200          | success        |

    @api @tenantAPI @tenantapi @system @delete @functional @negative @reviewed @superadmin
    Scenario: <testid> Deleting a tenant by passing id in path parameter with <type> id value
        When <testid> delete a <type> tenant in the request
        Then <responsecode> <responsestatus> is received with deletion message in the tenant request
        Examples:
            | testid | type    | responsecode | responsestatus |
            | C368   | empty   | 400          | error          |
            | C369   | null    | 400          | error          |
            | C370   | invalid | 400          | error          |
