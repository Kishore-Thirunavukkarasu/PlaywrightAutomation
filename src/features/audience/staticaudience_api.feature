Feature: static Audience CRUD and System Testing
    CRUD testing includes create, retrieve, update and delete
    System testing includes verification of the particular system.

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /phoenix/services/audience

    Background:
        Given Verify tenant is created

    @api @audienceAPI @staticaudienceapi @system @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Creating a static audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the static audience request
        Then <responsecode> and <responsestatus> is received to create static audience request
        Then responseheader should contain the id of the static audience if <responsestatus> is success
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C2210  | name      | alphabets | 10     | 201          | success        |


    @api @audienceAPI @staticaudienceapi @system @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Creating a static audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the static audience request
        Then <responsecode> and <responsestatus> is received to create static audience request
        Then responseheader should contain the id of the static audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype                 | length   | responsecode | responsestatus |
            | C2205  | code        | alphanumeric              | 3        | 201          | success        |
            | C2214  | name        | alphabets                 | 255      | 201          | success        |
            | C2216  | name        | alphanumeric              | 25       | 201          | success        |
            | C2218  | name        | existing                  | existing | 201          | success        |
            | C2220  | description | alphabets                 | 200      | 201          | success        |
            | C2221  | description | alphanumeric              | 200      | 201          | success        |
            | C2222  | description | numeric                   | 200      | 201          | success        |
            | C2223  | description | alphanumeric special char | 200      | 201          | success        |
            | C2224  | description | empty                     | empty    | 201          | success        |
            | C2225  | description | null                      | null     | 201          | success        |
            | C2227  | description | existing                  | existing | 201          | success        |
            | C2228  | description | alphabets                 | 4000     | 201          | success        |
            | C2231  | type        | static                    | 6        | 201          | success        |
            | C2240  | rules       | null                      | null     | 400          | error          |

    @api @audienceAPI @staticaudienceapi @system @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Creating a static audience with <parameter> having <valuetype> of <length> characters
        When <testid> <parameter> having <valuetype> <length> characters is passed in the static audience request
        Then <responsecode> and <responsestatus> is received to create static audience request
        Then responseheader should contain the id of the static audience if <responsestatus> is success
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C2201  | code        | numeric      | 3        | 201          | success        |
            | C2202  | code        | numeric      | 4        | 201          | error          |
            | C2203  | code        | numeric      | 2        | 201          | error          |
            | C2204  | code        | alphabets    | 3        | 201          | error          |
            | C2206  | code        | special char | 3        | 400          | error          |
            | C2207  | code        | null         | null     | 400          | error          |
            | C2208  | code        | empty        | empty    | 400          | error          |
            | C2209  | code        | existing     | existing | 400          | error          |
            | C2211  | name        | alphabets    | 256      | 400          | error          |
            | C2212  | name        | empty        | empty    | 400          | error          |
            | C2213  | name        | null         | null     | 400          | error          |
            | C2215  | name        | special char | 20       | 400          | error          |
            | C2217  | name        | numeric      | 25       | 400          | error          |
            | C2219  | name        | boolean      | boolean  | 400          | error          |
            | C2232  | type        | empty        | empty    | 400          | error          |
            | C2233  | type        | null         | null     | 400          | error          |
            | C2234  | type        | alphabets    | 6        | 400          | error          |
            | C2235  | type        | numeric      | 6        | 400          | error          |
            | C2236  | type        | boolean      | boolean  | 400          | error          |
            | C2238  | type        | special char | 6        | 400          | error          |
            | C2239  | type        | alphanumeric | 6        | 400          | error          |
            | C2241  | rules       | empty        | empty    | 400          | undefined      |
            | C2242  | rules       | alphabets    | 6        | 400          | undefined      |
            | C2243  | rules       | numeric      | 6        | 400          | undefined      |
            | C2244  | rules       | boolean      | boolean  | 400          | undefined      |
            | C2245  | rules       | special char | 6        | 400          | undefined      |
            | C2246  | rules       | alphanumeric | 6        | 400          | undefined      |
            | C2226  | description | alphabets    | 4001     | 400          | error          |
            | C2229  | description | alphanumeric | 4001     | 400          | error          |
            | C2230  | description | boolean      | boolean  | 400          | error          |

    @api @audienceAPI @staticaudienceapi @system @get @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a static audience by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get static audience api
        Then <responsecode> <responsestatus> and <records> is received for get request in static audience api
        Examples:
            | testid | query parameter | value | responsecode | responsestatus | records |
            | C2247  | id              | valid | 200          | success        | 1       |

    @api @audienceAPI @staticaudienceapi @system @get @functional @positive @notreviewed @superadmin
    Scenario: <testid> Getting a static audience by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get static audience api
        Then <responsecode> <responsestatus> and <records> is received for get request in static audience api
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C2248  | id              | invalid | 200          | success        | 0       |
            | C2250  | id              | empty   | 200          | success        | 10      |
            | C2251  | code            | valid   | 200          | success        | 1       |
            | C2254  | code            | empty   | 200          | success        | 10      |
            | C2255  | name            | valid   | 200          | success        | 1       |
            | C2258  | name            | empty   | 200          | success        | 10      |
            | C2263  | type            | valid   | 200          | success        | 1       |
            | C2266  | type            | empty   | 200          | success        | 10      |
            | C2259  | description     | valid   | 200          | success        | 1       |
            | C2262  | description     | empty   | 200          | success        | 10      |

    @api @audienceAPI @staticaudienceapi @system @get @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a static audience by quering <query parameter> as <value>
        When <testid> <query parameter> includes <value> for get static audience api
        Then <responsecode> <responsestatus> and <records> is received for get request in static audience api
        Examples:
            | testid | query parameter | value   | responsecode | responsestatus | records |
            | C2249  | id              | null    | 400          | error          | 0       |
            | C2252  | code            | invalid | 400          | error          | 0       |
            | C2253  | code            | null    | 400          | error          | 0       |
            | C2256  | name            | invalid | 400          | error          | 0       |
            | C2257  | name            | null    | 400          | error          | 0       |
            | C2260  | description     | invalid | 400          | error          | 0       |
            | C2261  | description     | null    | 400          | error          | 0       |
            | C2264  | type            | invalid | 400          | error          | 0       |
            | C2265  | type            | null    | 400          | error          | 0       |

    @api @audienceAPI @staticaudienceapi @system @put @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Updating a static audience by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a static audience by updating <parameter> of <valuetype> having <length> characters in the static audience request
        Then <responsecode> and <responsestatus> is received for static audience request
        Examples:
            | testid | parameter | valuetype | length | responsecode | responsestatus |
            | C2276  | name      | alphabets | 5      | 200          | success        |

    @api @audienceAPI @staticaudienceapi @system @put @functional @positive @notreviewed @superadmin
    Scenario: <testid> Updating a static audience by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a static audience by updating <parameter> of <valuetype> having <length> characters in the static audience request
        Then <responsecode> and <responsestatus> is received for static audience request
        Examples:
            | testid | parameter   | valuetype                 | length   | responsecode | responsestatus |
            | C2271  | code        | alphanumeric              | 3        | 200          | success        |
            | C2275  | code        | existing                  | existing | 200          | success        |
            | C2280  | name        | alphabets                 | 255      | 200          | success        |
            | C2284  | name        | existing                  | existing | 200          | success        |
            | C2286  | description | alphabets                 | 200      | 200          | success        |
            | C2287  | description | alphanumeric              | 200      | 200          | success        |
            | C2288  | description | numeric                   | 200      | 200          | success        |
            | C2289  | description | alphanumeric special char | 200      | 200          | success        |
            | C2293  | description | existing                  | existing | 200          | success        |
            | C2294  | description | alphabets                 | 4000     | 200          | success        |
            | C2297  | type        | static                    | 6        | 200          | success        |

    @api @audienceAPI @staticaudienceapi @system @put @functional @negative @notreviewed @superadmin
    Scenario: <testid> Updating a static audience by replacing <parameter> of <valuetype> having <length> characters
        When <testid> Updating a static audience by updating <parameter> of <valuetype> having <length> characters in the static audience request
        Then <responsecode> and <responsestatus> is received for static audience request
        Examples:
            | testid | parameter   | valuetype    | length   | responsecode | responsestatus |
            | C2267  | code        | numeric      | 3        | 200          | success        |
            | C2268  | code        | numeric      | 4        | 200          | success        |
            | C2269  | code        | numeric      | 2        | 200          | success        |
            | C2270  | code        | alphabets    | 3        | 200          | success        |
            | C2272  | code        | special char | 3        | 400          | error          |
            | C2273  | code        | null         | null     | 400          | error          |
            | C2274  | code        | empty        | empty    | 400          | error          |
            | C2277  | name        | alphabets    | 256      | 400          | error          |
            | C2278  | name        | empty        | empty    | 400          | error          |
            | C2279  | name        | null         | null     | 400          | error          |
            | C2281  | name        | special char | 20       | 400          | error          |
            | C2282  | name        | alphanumeric | 25       | 400          | error          |
            | C2283  | name        | numeric      | 25       | 400          | error          |
            | C2285  | name        | boolean      | boolean  | 400          | error          |
            | C2290  | description | empty        | empty    | 200          | success        |
            | C2291  | description | null         | null     | 400          | error          |
            | C2292  | description | alphabets    | 4001     | 400          | error          |
            | C2295  | description | alphanumeric | 4001     | 400          | error          |
            | C2296  | description | boolean      | boolean  | 400          | error          |
            | C2298  | type        | empty        | empty    | 400          | error          |
            | C2299  | type        | null         | null     | 400          | error          |
            | C2300  | type        | alphabets    | 6        | 400          | error          |
            | C2301  | type        | numeric      | 6        | 400          | error          |
            | C2302  | type        | boolean      | boolean  | 400          | error          |
            | C2303  | type        | existing     | existing | 200          | success        |
            | C2304  | type        | special char | 6        | 400          | error          |
            | C2305  | type        | alphanumeric | 6        | 400          | error          |

    @api @audienceAPI @staticaudienceapi @system @getsingle @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Getting a static audience by passing <parameter> in path parameter with <value> in the static audience request
        When <testid> static audience path with <parameter> having <value> is passed in the static audience request
        Then <responsecode> and <responsestatus> is received for static audience request
        Examples:
            | testid | parameter        | value | responsecode | responsestatus |
            | C2306  | staticaudienceId | valid | 200          | success        |

    @api @audienceAPI @staticaudienceapi @system @getsingle @functional @negative @notreviewed @superadmin
    Scenario: <testid> Getting a static audience by passing <parameter> in path parameter with <value> in the static audience request
        When <testid> static audience path with <parameter> having <value> is passed in the static audience request
        Then <responsecode> and <responsestatus> is received for static audience request
        Examples:
            | testid | parameter        | value   | responsecode | responsestatus |
            | C2307  | staticaudienceId | empty   | 400          | error          |
            | C2308  | staticaudienceId | null    | 400          | error          |
            | C2309  | staticaudienceId | invalid | 400          | error          |

    @api @audienceAPI @staticaudienceapi @system @delete @functional @positive @notreviewed @superadmin
    Scenario: <testid> Deleting a static audience by passing id in path parameter with <type> id value
        When <testid> delete a <type> static audience in the request
        Then <responsecode> <responsestatus> is received with deletion message in the static audience request
        Examples:
            | testid | type  | responsecode | responsestatus |
            | C2310  | valid | 200          | success        |

    @api @audienceAPI @staticaudienceapi @system @delete @functional @negative @notreviewed @superadmin
    Scenario: <testid> Deleting a static audience by passing id in path parameter with <type> id value
        When <testid> delete a <type> static audience in the request
        Then <responsecode> <responsestatus> is received with deletion message in the static audience request
        Examples:
            | testid | type    | responsecode | responsestatus |
            | C2311  | empty   | 400          | error          |
            | C2312  | null    | 400          | error          |
            | C2313  | invalid | 400          | error          |


    # adding user to the audience api

    @api @audienceAPI @staticaudienceapi @integration @post @functional @smoke @notreviewed @superadmin
    Scenario: <testid> Adding a <usertype> user to the audience
        When <testid> Adding a <usertype> user to the audience
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | usertype | responsecode | responsestatus |
            | C2314  | valid    | 201          | success        |

    @api @audienceAPI @staticaudienceapi @integration @post @functional @negative @notreviewed @superadmin
    Scenario: <testid> Adding a <usertype> user to the audience
        When <testid> Adding a <usertype> user to the audience
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | C2315 | invalid  | 400 | error |
            | C2316 | inactive | 400 | error |

    @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding a user id with <usertype> to the audience api
        When <testid> Adding a <usertype> user to the audience
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | usertype | responsecode | responsestatus |
            | C2317  | empty    | 400          | error          |
            | C2319  | null     | 400          | error          |

    @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding a user to audience with start date of value <valuetype>
        When <testid> Adding a user to audience with "start date" of value <valuetype>
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | valuetype   | responsecode | responsestatus |
            | C2320  | currentdate | 200          | success        |
            | C2321  | pastdate    | 400          | error          |
            | C2322  | futuredate  | 400          | success        |

    @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding a user to audience with end date of value <valuetype>
        When <testid> Adding a user to audience with "end date" of value <valuetype>
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | valuetype   | responsecode | responsestatus |
            | C2323  | currentdate | 200          | success        |
            | C2324  | pastdate    | 400          | error          |
            | C2325  | futuredate  | 400          | success        |

    @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding the <numberuser> number of users to the audience
        When <testid> Adding the <numberuser> number of users to the audience
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | numberuser | responsecode | responsestatus |
            | C2326  | 1          | 200          | success        |
            | C2327  | 2          | 200          | success        |

    # @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding more than one number of users to the audience where one audience is <firstaudience> and the other audience is <secondaudience>
        When <testid> Adding more than one number of users to the audience where one audience is <firstaudience> and the other audience is <secondaudience>
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | firstaudience | secondaudience | responsecode | responsestatus |
            | C2329  | valid         | invalid        | 200          | error          |
            | C2330  | valid         | valid          | 200          | success        |
            | C2331  | invalid       | valid          | 200          | error          |
            | C2332  | invalid       | invalid        | 200          | error          |

    # @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: <testid> Adding the user to the <validorinvalid> audience
        When <testid> Adding the user to the <validorinvalid> audience
        Then <responsecode> and <responsestatus> is received for adding user to the audience
        Examples:
            | testid | validorinvalid | responsecode | responsestatus |
            | C2333  | valid          | 200          | success        |
            | C2334  | invalid        | 400          | error          |
            | C2335  | null           | 400          | error          |
            | C2336  | empty          | 400          | error          |

    # @api @audienceAPI @staticaudienceapi @integration @post @functional @positive @notreviewed @superadmin
    Scenario: Adding the same user to the audience
        When Adding the same user to the audience
        Then 200 and success is received for adding user to the audience