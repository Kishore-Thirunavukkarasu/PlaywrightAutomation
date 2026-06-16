Feature: Hierarchy CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete in hierarchy api
    System testing includes verification of the particular system.

    # created by  = Nandhini Kesavan
    # reviewed by =
    # updated by  = Nandhini Kesavan
    # project url = /phoenix/services/organization

    Background:
        Given Verify tenant is created
        Given Verify program is created

    @api @hierarchyAPI @hierarchyapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating Hierarchy with <parameter> having <valuetype> of <length> characters is used to create organization hierarchy api
        When <testid> <parameter> having <valuetype> with <length> characters is passed in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy creation request
        Then responseheader should contain the id of the hierarchy if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C301   | id        | uuid      | 36     | 201          | success        |

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Creating Hierarchy with <parameter> having <valuetype> of <length> characters is used to create organization hierarchy api
        When <testid> <parameter> having <valuetype> with <length> characters is passed in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy creation request
        Then responseheader should contain the id of the hierarchy if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length | responsecode | responsestatus |
            | C338   | code        | alphanumeric | 3      | 201          | success        |
            | C311   | name        | alphabets    | 20     | 201          | success        |
            | C317   | name        | alphabets    | 150    | 201          | success        |
            | C321   | description | alphabets    | 20     | 201          | success        |
            | C322   | description | empty        | zero   | 201          | success        |
            | C330   | description | special char | 150    | 201          | success        |
            | C328   | description | alphanumeric | 150    | 201          | success        |
            | C324   | description | numeric      | 150    | 201          | success        |
            | C326   | description | alphabets    | 4000   | 201          | success        |
            | C341   | hierarchyId | hierarchyId  | 36     | 201          | success        |
            | C351   | type        | alphabets    | 7      | 201          | success        |
            | C354   | type        | alphabets    | 150    | 201          | success        |
            | C356   | type        | numeric      | 150    | 201          | success        |
            | C358   | type        | alphanumeric | 151    | 201          | success        |
            | C361   | programId   | programId    | 36     | 201          | success        |
            | C371   | level       | level        | 1      | 201          | success        |

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating Hierarchy with <parameter> having <valuetype> of <length> characters is used to create organization hierarchy api
        When <testid> <parameter> having <valuetype> with <length> characters is passed in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy creation request
        Then responseheader should contain the id of the hierarchy if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C302   | id          | empty        | zero     | 400          | error          |
            | C303   | id          | null         | no       | 400          | error          |
            | C304   | id          | numeric      | 10       | 400          | error          |
            | C305   | id          | boolean      | boolean  | 400          | error          |
            | C306   | id          | alphabets    | 10       | 400          | error          |
            | C307   | id          | uuid         | 30       | 400          | error          |
            | C308   | id          | alphanumeric | 10       | 400          | error          |
            | C309   | id          | existing     | existing | 400          | error          |
            | C310   | id          | special char | 10       | 400          | error          |
            | C331   | code        | numeric      | 3        | 400          | error          |
            | C332   | code        | empty        | zero     | 400          | error          |
            | C333   | code        | null         | no       | 400          | error          |
            | C334   | code        | numeric      | 150      | 400          | error          |
            | C335   | code        | boolean      | boolean  | 400          | error          |
            | C336   | code        | alphabets    | 151      | 400          | error          |
            | C337   | code        | alphabets    | 149      | 400          | error          |
            | C339   | code        | existing     | existing | 400          | error          |
            | C340   | code        | special char | 150      | 400          | error          |
            | C312   | name        | empty        | zero     | 400          | error          |
            | C313   | name        | null         | no       | 400          | error          |
            | C314   | name        | numeric      | 150      | 400          | error          |
            | C315   | name        | boolean      | boolean  | 400          | error          |
            | C316   | name        | existing     | existing | 400          | error          |
            | C318   | name        | alphanumeric | 149      | 400          | error          |
            | C319   | name        | alphanumeric | 151      | 400          | error          |
            | C320   | name        | special char | 150      | 400          | error          |
            | C323   | description | null         | no       | 400          | error          |
            | C325   | description | boolean      | boolean  | 400          | error          |
            | C327   | description | alphabets    | 4001     | 400          | error          |
            | C329   | description | existing     | existing | 400          | error          |
            | C342   | hierarchyId | empty        | zero     | 400          | error          |
            | C343   | hierarchyId | null         | no       | 400          | error          |
            | C344   | hierarchyId | numeric      | 10       | 400          | error          |
            | C345   | hierarchyId | boolean      | boolean  | 400          | error          |
            | C346   | hierarchyId | alphabets    | 10       | 400          | error          |
            | C347   | hierarchyId | uuid         | 36       | 400          | error          |
            | C348   | hierarchyId | alphanumeric | 10       | 400          | error          |
            | C349   | hierarchyId | existing     | existing | 400          | error          |
            | C350   | hierarchyId | special char | 10       | 400          | error          |
            | C352   | type        | empty        | zero     | 400          | error          |
            | C353   | type        | null         | no       | 400          | error          |
            | C355   | type        | existing     | existing | 400          | error          |
            | C357   | type        | boolean      | boolean  | 400          | error          |
            | C359   | type        | alphanumeric | 150      | 400          | error          |
            | C360   | type        | special char | 150      | 400          | error          |
            | C362   | programId   | empty        | zero     | 400          | error          |
            | C363   | programId   | null         | no       | 400          | error          |
            | C364   | programId   | numeric      | 10       | 400          | error          |
            | C365   | programId   | boolean      | boolean  | 400          | error          |
            | C366   | programId   | alphabets    | 10       | 400          | error          |
            | C367   | programId   | uuid         | 36       | 400          | error          |
            | C368   | programId   | alphanumeric | 10       | 400          | error          |
            | C369   | programId   | existing     | existing | 400          | error          |
            | C370   | programId   | special char | 10       | 400          | error          |
            | C372   | level       | empty        | zero     | 400          | error          |
            | C373   | level       | null         | no       | 400          | error          |
            | C374   | level       | numeric      | 9        | 400          | error          |
            | C375   | level       | boolean      | boolean  | 400          | error          |
            | C376   | level       | numeric      | 0        | 400          | error          |
            | C377   | level       | alphabets    | 4        | 400          | error          |
            | C378   | level       | alphanumeric | 3        | 400          | error          |
            | C379   | level       | existing     | existing | 400          | error          |
            | C380   | level       | special char | 5        | 400          | error          |

    @api @hierarchyAPI @hierarchyapi @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a hierarchy by querying <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get hierarchy request
        Then <responsecode> <responsestatus> and <records> is received for get request in hierarchy api
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C381   | id              | valid | 200          | success        | 1       |

    @api @hierarchyAPI @hierarchyapi @system @get @functional @positive @notreviewed @superadmin
    Scenario: <testid> Getting a hierarchy by querying <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get hierarchy request
        Then <responsecode> <responsestatus> and <records> is received for get request in hierarchy api
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C385   | code            | valid | 200          | success        | 1       |
            | C386   | code            | empty | 200          | success        | 10      |
            | C389   | name            | valid | 200          | success        | 1       |
            | C390   | name            | empty | 200          | success        | 10      |
            | C393   | description     | valid | 200          | success        | 1       |
            | C394   | description     | empty | 200          | success        | 10      |
            | C397   | hierarchyId     | valid | 200          | success        | 1       |
            | C401   | type            | valid | 200          | success        | 1       |
            | C402   | type            | empty | 200          | success        | 10      |
            | C405   | programId       | valid | 200          | success        | 1       |
            | C409   | level           | valid | 200          | success        | 1       |
            | C410   | level           | empty | 200          | success        | 10      |

    @api @hierarchyAPI @hierarchyapi @system @get @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a hierarchy by querying <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get hierarchy request
        Then <responsecode> <responsestatus> and <records> is received for get request in hierarchy api
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C382   | id              | empty   | 400          | error          | 0       |
            | C383   | id              | null    | 400          | error          | 0       |
            | C384   | id              | invalid | 400          | error          | 0       |
            | C387   | code            | null    | 400          | error          | 0       |
            | C388   | code            | invalid | 400          | error          | 0       |
            | C391   | name            | null    | 400          | error          | 0       |
            | C392   | name            | invalid | 400          | error          | 0       |
            | C395   | description     | null    | 400          | error          | 0       |
            | C396   | description     | invalid | 400          | error          | 0       |
            | C399   | hierarchyId     | null    | 400          | error          | 0       |
            | C400   | hierarchyId     | invalid | 400          | error          | 0       |
            | C398   | hierarchyId     | empty   | 400          | error          | 0       |
            | C403   | type            | null    | 400          | error          | 0       |
            | C404   | type            | invalid | 400          | error          | 0       |
            | C407   | programId       | null    | 400          | error          | 0       |
            | C408   | programId       | invalid | 400          | error          | 0       |
            | C406   | programId       | empty   | 400          | error          | 0       |
            | C411   | level           | null    | 400          | error          | 0       |
            | C412   | level           | invalid | 400          | error          | 0       |
            | C415   | createdId       | null    | 400          | error          | 0       |
            | C416   | createdId       | invalid | 400          | error          | 0       |

    @api @hierarchyAPI @hierarchyapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating a hierarchy by replacing <parameter> as <valuetype> with <length> Characters
        When <testid> Updating a hierarchy by updating <parameter> of <valuetype> having <length> characters in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy api
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C437   | name      | alphabets | 20     | 200          | success        |

    @api @hierarchyAPI @hierarchyapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a hierarchy by replacing <parameter> as <valuetype> with <length> Characters
        When <testid> Updating a hierarchy by updating <parameter> of <valuetype> having <length> characters in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy api
        Examples:
            | testid | parameter   | valuetype    | length | responsecode | responsestatus |
            | C434   | code        | alphanumeric | 3      | 200          | success        |
            | C443   | name        | alphabets    | 150    | 200          | success        |
            | C444   | name        | alphanumeric | 149    | 200          | success        |
            | C445   | name        | alphanumeric | 151    | 200          | success        |
            | C446   | name        | special char | 150    | 200          | success        |
            | C447   | description | alphabets    | 20     | 200          | success        |
            | C450   | description | numeric      | 150    | 200          | success        |
            | C452   | description | alphabets    | 4000   | 200          | success        |
            | C454   | description | alphanumeric | 150    | 200          | success        |
            | C456   | description | special char | 150    | 200          | success        |
            | C457   | hierarchyId | hierarchyId  | 36     | 200          | success        |
            | C467   | level       | level        | 1      | 200          | success        |



    @api @hierarchyAPI @hierarchyapi @system @put @functional @negative @notreviewed @superadmin
    Scenario: <testid> Updating a hierarchy by replacing <parameter> as <valuetype> with <length> Characters
        When <testid> Updating a hierarchy by updating <parameter> of <valuetype> having <length> characters in the hierarchy request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy api
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C427   | code        | numeric      | 3        | 400          | error          |
            | C428   | code        | empty        | zero     | 400          | error          |
            | C429   | code        | null         | no       | 400          | error          |
            | C430   | code        | numeric      | 150      | 400          | error          |
            | C431   | code        | boolean      | boolean  | 400          | error          |
            | C432   | code        | alphabets    | 151      | 400          | error          |
            | C433   | code        | alphabets    | 149      | 400          | error          |
            | C435   | code        | existing     | existing | 400          | error          |
            | C436   | code        | special char | 150      | 400          | error          |
            | C438   | name        | empty        | zero     | 400          | error          |
            | C439   | name        | null         | no       | 400          | error          |
            | C440   | name        | numeric      | 150      | 400          | error          |
            | C441   | name        | boolean      | boolean  | 400          | error          |
            | C442   | name        | existing     | existing | 400          | error          |
            | C448   | description | empty        | zero     | 400          | error          |
            | C449   | description | null         | no       | 400          | error          |
            | C451   | description | boolean      | boolean  | 400          | error          |
            | C453   | description | alphabets    | 4001     | 400          | error          |
            | C455   | description | existing     | existing | 400          | error          |
            | C458   | hierarchyId | empty        | zero     | 400          | error          |
            | C459   | hierarchyId | null         | no       | 400          | error          |
            | C460   | hierarchyId | numeric      | 10       | 400          | error          |
            | C461   | hierarchyId | boolean      | boolean  | 400          | error          |
            | C462   | hierarchyId | alphabets    | 10       | 400          | error          |
            | C463   | hierarchyId | uuid         | 36       | 400          | error          |
            | C464   | hierarchyId | alphanumeric | 10       | 400          | error          |
            | C465   | hierarchyId | existing     | existing | 400          | error          |
            | C466   | hierarchyId | special char | 10       | 400          | error          |
            | C468   | level       | empty        | zero     | 400          | error          |
            | C469   | level       | null         | no       | 400          | error          |
            | C470   | level       | numeric      | 9        | 400          | error          |
            | C471   | level       | boolean      | boolean  | 400          | error          |
            | C472   | level       | numeric      | 0        | 400          | error          |
            | C473   | level       | alphabets    | 4        | 400          | error          |
            | C474   | level       | alphanumeric | 3        | 400          | error          |
            | C475   | level       | existing     | existing | 400          | error          |
            | C476   | level       | special char | 5        | 400          | error          |

    # @api @hierarchyAPI @hierarchyapi @system @put @functional @notreviewed @superadmin
    # Scenario: <testid> Updating a hierarchy with change in <parameter> as <valuetype> with <length>
    #     When <testid> Updating a hierarchy by updating <parameter> of <valuetype> having <length> characters in the hierarchy request
    #     Then <responsecode> and <responsestatus> is received in the response
    #     Examples:
    #         | testid | parameter | valuetype    | length   | responsecode | responsestatus |
    #         | C477   | parentId  | parentId     | 36       | 200          | success        |
    #         | C478   | parentId  | empty        | zero    | 400          | error          |
    #         | C479   | parentId  | null         | no    | 400          | error          |
    #         | C480   | parentId  | numeric      | 10       | 400          | error          |
    #         | C481   | parentId  | boolean      | boolean  | 400          | error          |
    #         | C482   | parentId  | alphabets    | 10       | 400          | error          |
    #         | C483   | parentId  | uuid         | 36       | 400          | error          |
    #         | C484   | parentId  | alphanumeric | 10       | 400          | error          |
    #         | C485   | parentId  | existing     | existing | 400          | error          |
    #         | C486   | parentId  | special char | 10       | 400          | error          |

    @api @hierarchyAPI @hierarchyapi @system @getsingle @functional @smoke @reviewed @superadmin
    Scenario: <testid> Getting a single hierarchy by passing id as <type> in path parameters
        When <testid> getting a <type> hierarchy in the request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy api
        Examples:
            | testid | type  | responsecode | responsestatus |
            | C477   | valid | 200          | success        |

    @api @hierarchyAPI @hierarchyapi @system @getsingle @functional @negative @reviewed @superadmin
    Scenario: <testid> Getting a single hierarchy by passing id as <type> in path parameters
        When <testid> getting a <type> hierarchy in the request
        Then <responsecode> and <responsestatus> is received in the response for hierarchy api
        Examples:
            | testid | type    | responsecode | responsestatus |
            | C478   | invalid | 400          | error          |
            | C479   | null    | 400          | error          |
            | C480   | empty   | 400          | error          |

    @api @hierarchyAPI @hierarchyapi @system @delete @functional @positive @reviewed @superadmin
    Scenario: <testid> Deleting a single hierarchy by passing id as <type> in path parameters
        When <testid> delete a <type> hierarchy in the request
        Then <responsecode> <responsestatus> is received with deletion message in the hierarchy request
        Examples:
            | testid | type  | responsecode | responsestatus |
            | C481   | valid | 200          | success        |

    @api @hierarchyAPI @hierarchyapi @system @delete @functional @negative @reviewed @superadmin
    Scenario: <testid> Deleting a single hierarchy by passing id as <type> in path parameters
        When <testid> delete a <type> hierarchy in the request
        Then <responsecode> <responsestatus> is received with deletion message in the hierarchy request
        Examples:
            | testid | type    | responsecode | responsestatus |
            | C482   | invalid | 400          | error          |
            | C483   | null    | 400          | error          |
            | C484   | empty   | 400          | error          |


    ## New Test cases

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: C485 Create hierarchy when id and hierarchyId are same for level1
        When C485 Create hierarchy when "id" and "hierarchyId" are same for "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C486 Create hierarchy when hierarchyId and id are different for level1
        When C486 Create hierarchy when "hierarchyId" and "id" are different for "level1"
        Then 400 and error is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C487 Create an hierarchy with same hierarchyId and id when level is more than level1
        When C487 Create hierarchy with same "hierarchyId" and "id" when level is more than "level1"
        Then 400 and error is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: C488 Create hierarchy with different hierarchyId and id when level is more than level1
        When C488 Create hierarchy with different "hierarchyId" and "id" when level is more than "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: C489 Create hierarchy when parentId is null for level1
        When C489 Create hierarchy when "parentId" is null for "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C490 Create hierarchy with parentId for level1
        When C490 Create hierarchy with "parentId" for "level1"
        Then 400 and error is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: C491 Create hierarchy with parentId when level is greater than level1
        When C491 Create hierarchy with "parentId" when level is greater than "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C492 Create hierarchy when parentId as null for level is greater than level1
        When C492 Create hierarchy when "parentId" as null for level is greater than "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C493 Create hierarchy with different tenant programId
        When C493 Create hierarchy with different tenant "programId"
        Then 400 and error is received in the response for hierarchy creation request

    @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C494 Create hierarchy when programId is different for level is greater than level1
        When C494 Create hierarchy when "programId" is different for level is greater than "level1"
        Then 400 and error is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: C495 Create hierarchy for different programId and different hierarchyId when level is greater than level1
        When C495 Create hierarchy for different "programId" and different "hierarchyId" when level is greater than "level1"
        Then 201 and success is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C496 Create hierarchy with existing hierarchyId
        When C496 Create hierarchy with existing "hierarchyId"
        Then 400 and error is received in the response for hierarchy creation request

    @api @hierarchyAPI @hierarchyapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: C497 Create hierarchy when new hierachyId for level is greater than level1
        When C497 Create hierarchy when new "hierarchyId" for level is greater than "level1"
        Then 400 and error is received in the response for hierarchy creation request

