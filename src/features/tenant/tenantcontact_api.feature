Feature: Tenant Contact CRUD and System Testing
    Tenant Contact is an API which is used to create, update, delete and get tenant contact information.
    This feature file contains the scenarios for tenant contact api with different parameters and values.

    # created by  = kishore. T
    # reviewed by = Kadarkarai Selvam. I
    # updated by  = Kadarkarai Selvam. I
    # project url = /phoenix/services/tenant

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> of type <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype | length   | response code | responsestatus |
            | C300   | emailid   | email     | 255      | 200           | success        |
            | C301   | emailid   | email     | 250      | 400           | error          |
            | C302   | emailid   | empty     | empty    | 400           | error          |
            | C303   | emailid   | null      | null     | 400           | error          |
            | C304   | emailid   | existing  | existing | 200           | success        |
            | C305_1 | emailid   | email     | 256      | 400           | error          |
            | C305_2 | emailid   | alphabets | 250      | 400           | error          |
            | C305_3 | emailid   | boolean   | true     | 400           | error          |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact by change in <parameter> with domain name <length> as <value>

        When <testid> emailid having domain length <domainvalue> is passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

            | testid | parameter | domainvalue | response code | responsestatus |
            | C305_2 | emailid   | 4           | 200           | success        |
            | C305_3 | emailid   | 3           | 200           | success        |
            | C305_4 | emailid   | 2           | 200           | success        |


    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> with <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype                   | length   | response code | responsestatus |
            | C305   | mobile    | alphabets                   | 11       | 200           | success        |
            | C306   | mobile    | alphabets                   | 10       | 400           | error          |
            | C307   | mobile    | empty                       | empty    | 400           | error          |
            | C308   | mobile    | null                        | null     | 400           | error          |
            | C309   | mobile    | existing                    | existing | 200           | success        |
            | C309_2 | mobile    | numeric                     | 10       | 400           | error          |
            | C309_3 | mobile    | numeric                     | 11       | 400           | error          |
            | C309_4 | mobile    | alphanumeric                | 9        | 400           | error          |
            | C309_3 | mobile    | alphanumeric                | 11       | 400           | error          |
            | C309_5 | mobile    | special char                | 10       | 200           | success        |
            | C309_6 | mobile    | special char                | 11       | 400           | error          |
            | C309_7 | mobile    | accepted special char Phone | 10       | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> with <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype    | length | response code | responsestatus |
            | C310   | firstname | alphabets    | 49     | 200           | success        |
            | C311   | firstname | alphabets    | 256    | 400           | error          |
            | C312   | firstname | empty        | empty  | 400           | error          |
            | C313   | firstname | null         | null   | 400           | error          |
            | C315   | firstname | alphabets    | 255    | 400           | error          |
            | C315_1 | firstname | special char | 20     | 200           | success        |
            | C315_2 | firstname | alphanumeric | 25     | 200           | success        |
            | C315_3 | firstname | numeric      | 25     | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> with <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype    | length | response code | responsestatus |
            | C310   | lastname  | alphabets    | 49     | 200           | success        |
            | C311   | lastname  | alphabets    | 256    | 400           | error          |
            | C312   | lastname  | empty        | empty  | 400           | error          |
            | C313   | lastname  | null         | null   | 400           | error          |
            | C315   | lastname  | alphabets    | 255    | 400           | error          |
            | C315_1 | lastname  | special char | 20     | 200           | success        |
            | C315_2 | lastname  | alphanumeric | 25     | 200           | success        |
            | C315_3 | lastname  | numeric      | 25     | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> with <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter   | valuetype    | length | response code | responsestatus |
            | C310   | designation | alphabets    | 49     | 200           | success        |
            | C311   | designation | alphabets    | 256    | 400           | error          |
            | C312   | designation | empty        | empty  | 400           | error          |
            | C313   | designation | null         | null   | 400           | error          |
            | C315   | designation | alphabets    | 255    | 400           | error          |
            | C315_1 | designation | special char | 20     | 200           | success        |
            | C315_2 | designation | alphanumeric | 25     | 200           | success        |
            | C315_3 | designation | numeric      | 25     | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with change in <parameter> with <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> characters are passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request
        Then responseheader should contain the id of the tenantcontact if <responsestatus> is success

        Examples:
            | testid | parameter | valuetype | length | response code | responsestatus |
            | C328   | isActive  | boolean   | true   | 200           | success        |
            | C329   | isActive  | boolean   | false  | 200           | success        |
            | C330   | isActive  | numeric   | 10     | 400           | error          |
            | C331   | isActive  | empty     | empty  | 400           | error          |
            | C332   | isActive  | null      | null   | 400           | error          |

    @api @tenantAPI @tenantcontactapi @system @post @functional @reviewed @superadmin
    Scenario: <testid> creating a tenant contact with number of <numberof> contact information which is <correlation>

        When <testid> having <numberof>, <value> <correlation> is passed in tenant contact api request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | numberof | value | correlation | response code | responsestatus |
            | C333   | 1        | valid | one         | 200           | success        |
            | C334   | 2        | valid | different   | 200           | success        |
            | C335   | 2        | valid | same        | 400           | error          |


    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying id as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with id
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C336   | id              | valid   | 200          | success | 1       |
            | C337   | id              | invalid | 400          | error   | 0       |
            | C338   | id              | empty   | 400          | error   | 0       |
            | C339   | id              | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C340   | email           | valid   | 200          | success | 1       |
            | C341   | email           | invalid | 400          | error   | 0       |
            | C342   | email           | empty   | 400          | error   | 0       |
            | C343   | email           | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C344   | mobile          | valid   | 200          | success | 1       |
            | C345   | mobile          | invalid | 400          | error   | 0       |
            | C346   | mobile          | empty   | 400          | error   | 0       |
            | C347   | mobile          | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C348   | firstname       | valid   | 200          | success | 1       |
            | C349   | firstname       | invalid | 400          | error   | 0       |
            | C350   | firstname       | empty   | 400          | error   | 0       |
            | C351   | firstname       | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C352   | lastname        | valid   | 200          | success | 1       |
            | C353   | lastname        | invalid | 400          | error   | 0       |
            | C354   | lastname        | empty   | 400          | error   | 0       |
            | C355   | lastname        | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C356   | designation     | valid   | 200          | success | 1       |
            | C357   | designation     | invalid | 400          | error   | 0       |
            | C358   | designation     | empty   | 400          | error   | 0       |
            | C359   | designation     | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying <query parameter> as <value>

        When <testid> <query parameter> includes <value>  for get tenant contact api with <query parameter>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | query parameter | value   | responsecode | status  | records |
            | C360   | isActive        | true    | 200          | success | 1       |
            | C361   | isActive        | false   | 200          | success | 1       |
            | C362   | isActive        | invalid | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @get @functional @reviewed @superadmin
    Scenario: <testid> Getting a tenant contact by querying multiple parameters

        When <testid> get tenant contact api is called with multiple parameters <parameter1><value1> <parameter2><value2>
        Then <responsecode>, <status> and <records> is received for get request with tenant contact

        Examples:
            | testid | parameter1 | value1  | parameter2 | value2  | responsecode | status  | records |
            | C363   | id         | valid   | firstname  | valid   | 200          | success | 1       |
            | C364   | id         | invalid | firstname  | valid   | 400          | error   | 0       |
            | C365   | id         | empty   | firstname  | valid   | 400          | error   | 0       |
            | C366   | id         | null    | firstname  | valid   | 400          | error   | 0       |
            | C367   | id         | valid   | firstname  | invalid | 400          | error   | 0       |
            | C368   | id         | valid   | firstname  | empty   | 400          | error   | 0       |
            | C369   | id         | valid   | firstname  | null    | 400          | error   | 0       |




    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | parameter | valuetype | length   | response code | responsestatus |
            | C300   | emailid   | email     | 255      | 200           | success        |
            | C301   | emailid   | email     | 250      | 200           | error          |
            | C302   | emailid   | empty     | empty    | 400           | error          |
            | C303   | emailid   | null      | null     | 400           | error          |
            | C304   | emailid   | existing  | existing | 200           | success        |
            | C305_1 | emailid   | email     | 256      | 400           | error          |
            | C305_2 | emailid   | alphabets | 250      | 400           | error          |
            | C305_3 | emailid   | boolean   | true     | 400           | error          |

    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | parameter | valuetype                   | length   | response code | responsestatus |
            | C305   | mobile    | alphabets                   | 11       | 200           | success        |
            | C306   | mobile    | alphabets                   | 10       | 400           | error          |
            | C307   | mobile    | empty                       | empty    | 400           | error          |
            | C308   | mobile    | null                        | null     | 400           | error          |
            | C309   | mobile    | existing                    | existing | 200           | success        |
            | C309_2 | mobile    | numeric                     | 10       | 400           | error          |
            | C309_3 | mobile    | numeric                     | 11       | 400           | error          |
            | C309_4 | mobile    | alphanumeric                | 9        | 400           | error          |
            | C309_3 | mobile    | alphanumeric                | 11       | 400           | error          |
            | C309_5 | mobile    | special char                | 10       | 200           | success        |
            | C309_6 | mobile    | special char                | 11       | 400           | error          |
            | C309_7 | mobile    | accepted special char Phone | 10       | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request


        Examples:
            | testid | parameter | valuetype    | length | response code | responsestatus |
            | C310   | firstname | alphabets    | 49     | 200           | success        |
            | C311   | firstname | alphabets    | 256    | 400           | error          |
            | C312   | firstname | empty        | empty  | 400           | error          |
            | C313   | firstname | null         | null   | 400           | error          |
            | C315   | firstname | alphabets    | 255    | 400           | error          |
            | C315_1 | firstname | special char | 20     | 200           | success        |
            | C315_2 | firstname | alphanumeric | 25     | 200           | success        |
            | C315_3 | firstname | numeric      | 25     | 200           | success        |




    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | parameter | valuetype    | length | response code | responsestatus |
            | C310   | lastname  | alphabets    | 49     | 200           | success        |
            | C311   | lastname  | alphabets    | 256    | 400           | error          |
            | C312   | lastname  | empty        | empty  | 400           | error          |
            | C313   | lastname  | null         | null   | 400           | error          |
            | C315   | lastname  | alphabets    | 255    | 400           | error          |
            | C315_1 | lastname  | special char | 20     | 200           | success        |
            | C315_2 | lastname  | alphanumeric | 25     | 200           | success        |
            | C315_3 | lastname  | numeric      | 25     | 200           | success        |

    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | parameter   | valuetype    | length | response code | responsestatus |
            | C310   | designation | alphabets    | 49     | 200           | success        |
            | C311   | designation | alphabets    | 256    | 400           | error          |
            | C312   | designation | empty        | empty  | 400           | error          |
            | C313   | designation | null         | null   | 400           | error          |
            | C315   | designation | alphabets    | 255    | 400           | error          |
            | C315_1 | designation | special char | 20     | 200           | success        |
            | C315_2 | designation | alphanumeric | 25     | 200           | success        |
            | C315_3 | designation | numeric      | 25     | 200           | success        |



    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating <parameter> of <valuetype> having <length> characters

        When <testid> <parameter> having <valuetype> <length> is passed in tenant contact api update request
        Then <response code> and <responsestatus> is received for tenant contact request

        Examples:
            | testid | parameter | valuetype | length | response code | responsestatus |
            | C328   | isActive  | boolean   | true   | 200           | success        |
            | C329   | isActive  | boolean   | false  | 200           | success        |
            | C330   | isActive  | numeric   | 10     | 400           | error          |
            | C331   | isActive  | empty     | empty  | 400           | error          |
            | C332   | isActive  | null      | null   | 400           | error          |


    @api @tenantAPI @tenantcontactapi @system @put @functional @reviewed @superadmin
    Scenario: <testid> updating a tenant contact by updating multiple parameters

        When <testid> update tenant contact api is called with multiple parameters <parameter1><value1> <parameter2><value2>
        Then <responsecode>, <status> and <records> is received for update request with tenant contact multiple parameters query

        Examples:
            | testid | parameter1 | value1  | parameter2 | value2  | responsecode | status  | records |
            | C404   | firstname  | valid   | lastname   | valid   | 200          | success | 1       |
            | C405   | firstname  | invalid | lastname   | valid   | 400          | error   | 0       |
            | C406   | firstname  | empty   | lastname   | valid   | 400          | error   | 0       |
            | C407   | firstname  | null    | lastname   | valid   | 400          | error   | 0       |
            | C408   | firstname  | valid   | lastname   | invalid | 400          | error   | 0       |
            | C409   | firstname  | valid   | lastname   | empty   | 400          | error   | 0       |
            | C410   | firstname  | valid   | lastname   | null    | 400          | error   | 0       |


    @api @tenantAPI @tenantcontactapi @system @delete @functional @reviewed @superadmin
    Scenario: <testid> deleting a tenant contact by <pathparameter1> as <value1> and <pathparameter2> as <value2>

        When <testid> <pathparameter1> includes <value1> and <pathparameter2> includes <value2> for delete tenant contact api
        Then <responsecode>, <status> and <records> is received for delete request with tenant contact id query

        Examples:
            | testid | pathparameter1 | value1  | pathparameter2  | value2  | responsecode | status  | records |
            | C411   | tenantid       | valid   | tenantcontactid | valid   | 200          | success | 1       |
            | C412   | tenantid       | invalid | tenantcontactid | valid   | 400          | error   | 0       |
            | C413   | tenantid       | empty   | tenantcontactid | valid   | 400          | error   | 0       |
            | C414   | tenantid       | null    | tenantcontactid | valid   | 400          | error   | 0       |
            | C415   | tenantid       | valid   | tenantcontactid | invalid | 400          | error   | 0       |
            | C416   | tenantid       | valid   | tenantcontactid | empty   | 400          | error   | 0       |
            | C417   | tenantid       | valid   | tenantcontactid | null    | 400          | error   | 0       |

    @api @tenantAPI @tenantcontactapi @system @delete @functional @reviewed @superadmin
    Scenario: <testid> deleting a tenant contact by <pathparameter1> as <value1> and <pathparameter2> as <value2> with invalid combination

        When <testid> <pathparameter1> includes <value1> and  <pathparameter2> includes <value2> with invalid combination for delete tenant contact api
        Then <responsecode>, <status> and <records> is received for delete request with tenant contact id query

        Examples:
            | testid | pathparameter1 | value1 | pathparameter2  | value2 | responsecode | status | records |
            | C418   | tenantid       | valid  | tenantcontactid | valid  | 400          | error  | 0       |

    @api @tenantAPI @tenantcontactapi @system @getsingle @functional @reviewed @superadmin
    Scenario: <testid> getting a single tenant contact by passing id in path parameter
        When <testid> tenant contact path having <value> is passed in the request
        Then <responsecode>, <responsestatus> is received

        Examples:
            | testid | value   | responsecode | responsestatus |
            | C419   | valid   | 200          | success        |
            | C420   | invalid | 400          | error          |
            | C421   | empty   | 400          | error          |
            | C422   | null    | 400          | error          |
