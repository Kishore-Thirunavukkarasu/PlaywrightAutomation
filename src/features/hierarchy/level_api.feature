Feature: Organization Level CRUD and System Testing
#     CRUD testing includes create, retrieve, update and delete
#     System testing includes verification of the particular system.

#     @api @post @organizationlevelapi @systemcase
#     Scenario: <testid> creating a organization Level with change in name as <value>

#         When <testid> Organization level <parameter> having <value> is passed in the organization level creation request
#         Then <responsecode> and <responsestatus> is received in the organizagion level creation request

#         Examples:
#             | testid | parameter | value         | responsecode | responsestatus |
#             | 3200   | name      | valid         | 200          | success        |
#             | 3201   | name      | more than 255 | 400          | error          |
#             | 3202   | name      | null          | 400          | error          |
#             | 3203   | name      | empty         | 400          | error          |
#             | 3204   | name      | number        | 400          | error          |
#             | 3205   | name      | boolean       | 400          | error          |


#     @api @post @organizationlevelapi @systemcase
#     Scenario: <testid> creating a organization Level with change in hierarchyId as <value>

#         When <testid> Organization level <parameter> having <value> is passed in the organization level creation request
#         Then <responsecode> and <responsestatus> is received in the organizagion level creation request

#         Examples:
#             | testid | parameter   | value   | responsecode | responsestatus |
#             | 3206   | hierarchyId | valid   | 200          | success        |
#             | 3207   | hierarchyId | invalid | 400          | error          |
#             | 3208   | hierarchyId | null    | 400          | error          |
#             | 3209   | hierarchyId | empty   | 400          | error          |


#     @api @post @organizationlevelapi @systemcase
#     Scenario: <testid> creating a organization Level with change in level as <value>

#         When <testid> Organization level <parameter> having <value> is passed in the organization level creation request
#         Then <responsecode> and <responsestatus> is received in the organizagion level creation request

#         Examples:
#             | testid | parameter | value   | responsecode | responsestatus |
#             | 3210   | level     | 1       | 200          | success        |
#             | 3211   | level     | 8       | 200          | success        |
#             | 3212   | level     | 0       | 400          | error          |
#             | 3213   | level     | 9       | 400          | error          |
#             | 3214   | level     | null    | 400          | error          |
#             | 3215   | level     | empty   | 400          | error          |
#             | 3216   | level     | boolean | 400          | error          |
#             | 3217   | level     | string  | 400          | error          |


#     @api @get @organizationlevelapi @systemcase
#     Scenario: <testid> Getting a organization Level by querying organization parameters as <value>

#         When <testid> <query parameter> includes <value> for get organization level request
#         Then <responsecode> and <responsestatus> is received in the organizagion level get request

#         Examples:
#             | testid | query parameter | value   | responsecode | responsestatus |
#             | 3218   | name            | valid   | 200          | success        |
#             | 3219   | name            | invalid | 400          | error          |
#             | 3220   | name            | null    | 400          | error          |
#             | 3221   | name            | empty   | 400          | error          |
#             | 3222   | hierarchyId     | valid   | 200          | error          |
#             | 3223   | hierarchyId     | invalid | 400          | error          |
#             | 3224   | hierarchyId     | null    | 400          | error          |
#             | 3225   | hierarchyId     | empty   | 400          | error          |
#             | 3226   | level           | valid   | 200          | error          |
#             | 3227   | level           | invalid | 400          | error          |
#             | 3228   | level           | null    | 400          | error          |
#             | 3229   | level           | empty   | 400          | error          |

#     @api @put @organizationlevelapi @systemcase
#     Scenario: <testid> Updating a organization level with level name as <value>

#         When <testid> Organization level with <path parameter> in <path parameter value> <parameter> with <value> in organization request
#         Then <responsecode> and <responsestatus> is received in the organization level update request

#         Examples:
#             | testid | path parameter | path parameter value | parameter | value         | responsecode | responsestatus |
#             | 3230   | name           | valid                | name      | valid         | 200          | success        |
#             | 3231   | name           | invalid              | name      | valid         | 400          | error          |
#             | 3232   | name           | null                 | name      | valid         | 400          | error          |
#             | 3233   | name           | empty                | name      | valid         | 400          | error          |
#             | 3234   | name           | valid                | name      | more than 255 | 400          | error          |
#             | 3235   | name           | valid                | name      | null          | 400          | error          |
#             | 3236   | name           | valid                | name      | empty         | 400          | error          |
#             | 3237   | name           | valid                | name      | number        | 400          | error          |
#             | 3238   | name           | valid                | name      | boolean       | 400          | error          |
            