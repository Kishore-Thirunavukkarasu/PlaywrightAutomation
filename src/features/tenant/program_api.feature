Feature: Program API Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kadarkarai Selvam
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url = /phoenix/services/tenant

    Background:
        Given Verify tenant is created

    @api @tenantAPI @programapi @system @post @functional @smoke @reviewed @superadmin
    Scenario: <testid> Creating a tenant program with <parameter> as <valuetype> with <length> in request
        When <testid> <parameter> having <valuetype> <length> characters is passed in the program request
        Then <responsecode> and <responsestatus> is received for program request
        Then responseheader should contain the id of the program if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C601   | name      | alphabets | 8      | 201          | success        |

    @api @tenantAPI @programapi @system @post @functional @positive @reviewed
    Scenario: <testid> Creating a tenant program with <parameter> as <valuetype> with <length> in request
        When <testid> <parameter> having <valuetype> <length> characters is passed in the program request
        Then <responsecode> and <responsestatus> is received for program request
        Then responseheader should contain the id of the program if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length | responsecode | responsestatus |
            #| C658   | name        | alphabets                 | 254    | 201          | success        |
            | C602   | description | alphabets    | 10     | 201          | success        |
            | C603   | description | alphanumeric | 20     | 201          | success        |
            | C604   | description | numeric      | 30     | 201          | success        |
            | C605   | description | alphabets    | 4000   | 201          | success        |
            | C606   | domainUrl   | alphabets    | 10     | 201          | success        |
            | C607   | domainUrl   | alphanumeric | 25     | 201          | success        |

    @api @tenantAPI @programapi @system @post @functional @negative @reviewed
    Scenario: <testid> Creating a tenant program with <parameter> as <valuetype> with <length> in request
        When <testid> <parameter> having <valuetype> <length> characters is passed in the program request
        Then <responsecode> and <responsestatus> is received for program request
        Then responseheader should contain the id of the program if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            #| C655   | name        | alphabets    | 256      | 400          | error          |
            | C608   | name        | empty        | empty    | 400          | error          |
            | C609   | name        | null         | null     | 400          | error          |
            | C610   | name        | special char | 255      | 400          | error          |
            | C611   | name        | alphanumeric | 255      | 400          | error          |
            | C612   | name        | numeric      | 255      | 400          | error          |
            | C613   | name        | existing     | existing | 400          | error          |
            | C614   | name        | boolean      | boolean  | 400          | error          |
            | C615   | description | alphabets    | 4001     | 400          | error          |
            | C616   | description | null         | null     | 400          | error          |
            | C617   | description | empty        | empty    | 400          | error          |
            | C618   | description | existing     | existing | 400          | error          |
            | C619   | description | alphanumeric | 4001     | 400          | error          |
            | C620   | description | boolean      | boolean  | 400          | error          |
            | C621   | domainUrl   | alphabets    | 256      | 400          | error          |
            | C622   | domainUrl   | empty        | empty    | 400          | error          |
            | C623   | domainUrl   | null         | null     | 400          | error          |
            | C624   | domainUrl   | special char | 20       | 400          | error          |
            | C625   | domainUrl   | numeric      | 25       | 400          | error          |
            | C626   | domainUrl   | existing     | existing | 400          | error          |
            | C627   | domainUrl   | boolean      | boolean  | 400          | error          |

    @api @tenantAPI @programapi @system @get @functional @smoke @reviewed
    Scenario: <testid> Getting a program by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program api
        Then <responsecode> and <responsestatus> and <records> is received in the program get request
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C628   | id              | valid | 200          | success        | 1       |

    @api @tenantAPI @programapi @system @get @functional @negative @reviewed
    Scenario: <testid> Getting a program by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program api
        Then <responsecode> and <responsestatus> and <records> is received in the program get request
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C629   | name            | valid | 200          | success        | 1       |
            | C630   | description     | valid | 200          | success        | 1       |
            | C631   | domainUrl       | valid | 200          | success        | 1       |

    @api @tenantAPI @programapi @system @get @functiona @positive @reviewed
    Scenario: <testid> Getting a program by <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get program api
        Then <responsecode> and <responsestatus> and <records> is received in the program get request
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C632   | id              | blank   | 400          | error          | 0       |
            | C633   | id              | null    | 400          | error          | 0       |
            | C634   | id              | invalid | 400          | error          | 0       |
            | C635   | description     | blank   | 400          | error          | 0       |
            | C636   | description     | null    | 400          | error          | 0       |
            | C637   | description     | invalid | 400          | error          | 0       |
            | C638   | domainUrl       | blank   | 400          | error          | 0       |
            | C639   | domainUrl       | null    | 400          | error          | 0       |
            | C640   | domainUrl       | invalid | 400          | error          | 0       |

    @api @tenantAPI @programapi @system @put @functional @smoke @reviewed
    Scenario: <testid> Updating a program by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a program by updating <parameter> of <valuetype> having <length> characters in the program request
        Then <responsecode> and <responsestatus> is received with updated program
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C641   | name      | alphabets | 10     | 200          | success        |

    @api @tenantAPI @programapi @system @put @functional @negative @reviewed
    Scenario: <testid> Updating a program by replacing <parameter> with positive <valuetype> having <length> characters
        When <testid> Updating a program by updating <parameter> of <valuetype> having <length> characters in the program request
        Then <responsecode> and <responsestatus> is received with updated program
        Examples:
            | testid | parameter   | valuetype                 | length   | responsecode | responsestatus |
            | C642   | description | alphabets                 | 200      | 200          | success        |
            | C643   | description | alphanumeric              | 200      | 200          | success        |
            | C644   | description | numeric                   | 200      | 200          | success        |
            | C645   | description | alphanumeric special char | 200      | 200          | success        |
            | C646   | description | existing                  | existing | 200          | success        |
            | C647   | description | alphabets                 | 4000     | 200          | success        |
            | C648   | domainUrl   | alphabets                 | 49       | 200          | success        |
            | C649   | domainUrl   | alphabets                 | 255      | 200          | success        |
            | C650   | domainUrl   | existing                  | existing | 200          | success        |

    @api @tenantAPI @programapi @system @put @functional @reviewed
    Scenario: <testid> Updating a program by replacing <parameter> with negative <valuetype> having <length> characters
        When <testid> Updating a program by updating <parameter> of <valuetype> having <length> characters in the program request
        Then <responsecode> and <responsestatus> is received with updated program
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C700   | name        | alphabets    | 256      | 400          | error          |
            | C701   | name        | empty        | empty    | 400          | error          |
            | C702   | name        | null         | null     | 400          | error          |
            | C703   | name        | alphabets    | 255      | 200          | success        |
            | C704   | name        | special char | 20       | 400          | error          |
            | C705   | name        | alphanumeric | 25       | 400          | error          |
            | C706   | name        | numeric      | 25       | 400          | error          |
            | C707   | name        | existing     | existing | 400          | error          |
            | C708   | name        | boolean      | boolean  | 400          | error          |
            | C713   | description | alphabets    | 4001     | 400          | error          |
            | C714   | description | null         | null     | 400          | error          |
            | C715   | description | empty        | empty    | 400          | error          |
            | C718   | description | alphanumeric | 4001     | 400          | error          |
            | C719   | description | boolean      | boolean  | 400          | error          |
            | C721   | domainUrl   | alphabets    | 256      | 400          | error          |
            | C722   | domainUrl   | empty        | empty    | 400          | error          |
            | C723   | domainUrl   | null         | null     | 400          | error          |
            | C725   | domainUrl   | special char | 20       | 400          | error          |
            | C726   | domainUrl   | alphanumeric | 25       | 400          | error          |
            | C727   | domainUrl   | numeric      | 25       | 400          | error          |
            | C729   | domainUrl   | boolean      | boolean  | 400          | error          |

    @api @tenantAPI @programapi @system @getsingle @functional @smoke @reviewed
    Scenario: <testid> getting a single program with program path parameter
        When <testid> program path with <parameter> having <value> is passed in the program request
        Then <responsecode> and <responsestatus> is received with single program in the program request
        Examples:
            | testid | parameter | value | responsecode | responsestatus |
            | C779   | programId | valid | 200          | success        |

    @api @tenantAPI @programapi @system @getsingle @functional @negative @reviewed
    Scenario: <testid> getting a single program with program path parameter
        When <testid> program path with <parameter> having <value> is passed in the program request
        Then <responsecode> and <responsestatus> is received with single program in the program request
        Examples:
            | testid | parameter | value   | responsecode | responsestatus |
            | C780   | programId | blank   | 400          | error          |
            | C781   | programId | null    | 400          | error          |
            | C782   | programId | invalid | 400          | error          |

    @api @tenantAPI @programapi @system @delete @functional @positive @reviewed
    Scenario: <testid> Deleting a program for different parameters
        When <testid> delete a <type> program in the program request
        Then <responsecode> and <responsestatus> is received with deletion message in the program request
        Examples:
            | testid | type  | responsecode | responsestatus |
            | C705   | valid | 200          | success        |

    @api @tenan @programapi @system @delete @functional @negative @reviewed
    Scenario: <testid> Deleting a program for different parameters
        When <testid> delete a <type> program in the program request
        Then <responsecode> and <responsestatus> is received with deletion message in the program request
        Examples:
            | testid | type    | responsecode | responsestatus |
            | C706   | blank   | 400          | error          |
            | C707   | null    | 400          | error          |
            | C708   | invalid | 400          | error          |