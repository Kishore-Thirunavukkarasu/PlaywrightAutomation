Feature: Auth Login, Logout, Change Password for admin user and System Testing
    Auth Login, Logout, Change Password for Admin User
    System testing includes verification of the particular system

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = /phoenix/services/identity

    @api @identityAPI @adminloginapi @system @post @functional @smoke @reviewed @superadmin
    Scenario: <testid> Login to admin site by passing <valuetype> of <parameter> and <passwordValuetype> password
        When <testid> user login to admin site by passing <valuetype> <parameter> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for admin login
        Examples:
            | testid | parameter | valuetype   | passwordValuetype | responsecode | responsestatus |
            | I101   | email     | validMailId | encrypted         | 200          | success        |

    @api @identityAPI @adminloginapi @system @post @functional @positive @reviewed @superadmin
    Scenario: <testid> Login to admin site by passing <valuetype> of <parameter> and <passwordValuetype> password
        When <testid> user login to admin site by passing <valuetype> <parameter> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for admin login
        Examples:
            | testid | parameter | valuetype   | passwordValuetype | responsecode | responsestatus |
            | I102   | username  | validName   | encrypted         | 200          | success        |
            | I104   | mobile    | validNumber | encrypted         | 200          | success        |

    @api @identityAPI @adminloginapi @system @post @functional @negative @reviewed @superadmin
    Scenario: <testid> Login to admin site by passing <valuetype> of <parameter> and <passwordValuetype> password
        When <testid> user login to admin site by passing <valuetype> <parameter> and <passwordValuetype> password
        Then <responsecode> and <responsestatus> is received for admin login
        Examples:
            | testid | parameter | valuetype     | passwordValuetype | responsecode | responsestatus |
            | I105   | username  | invalidName   | encrypted         | 400          | error          |
            | I106   | email     | invalidMailId | encrypted         | 400          | error          |
            | I107   | mobile    | invalidNumber | encrypted         | 400          | error          |
            | I108   | username  | validName     | non-encrypted     | 400          | error          |
            | I109   | email     | validMailId   | non-encrypted     | 400          | error          |
            | I110   | mobile    | validNumber   | non-encrypted     | 400          | error          |
            | I111   | username  | validName     | invalid           | 400          | error          |
            | I112   | email     | validMailId   | invalid           | 400          | error          |
            | I113   | mobile    | validNumber   | invalid           | 400          | error          |
            | I114   | username  | validName     | empty             | 400          | error          |
            | I115   | email     | validMailId   | empty             | 400          | error          |
            | I116   | mobile    | validNumber   | empty             | 400          | error          |
            | I117   | username  | validName     | null              | 400          | error          |
            | I118   | email     | validMailId   | null              | 400          | error          |
            | I119   | mobile    | validNumber   | null              | 400          | error          |
            | I120   | username  | empty         | encrypted         | 400          | error          |
            | I121   | email     | empty         | encrypted         | 400          | error          |
            | I122   | mobile    | empty         | encrypted         | 400          | error          |
            | I123   | username  | null          | encrypted         | 400          | error          |
            | I124   | email     | null          | encrypted         | 400          | error          |
            | I125   | mobile    | null          | encrypted         | 400          | error          |
            | I126   | username  | validName     | invalid-encrypted | 400          | error          |
            | I127   | email     | validMailId   | invalid-encrypted | 400          | error          |
            | I128   | mobile    | validNumber   | invalid-encrypted | 400          | error          |


    @api @identityAPI @adminloginapi @system @post @functional @positive @reviewed @superadmin
    Scenario: <testid> Logout from admin site using <valuetype> <tokentype>
        When <testid> user logout from admin site using <valuetype> <tokentype>
        Then <responsecode> and <responsestatus> is received for admin logout
        Examples:
            | testid | tokentype   | valuetype | responsecode | responsestatus |
            | I127   | BearerToken | valid     | 200          | success        |

    @api @identityAPI @adminloginapi @system @post @functional @negative @reviewed @superadmin
    Scenario: <testid> Logout from admin site using <valuetype> <tokentype>
        When <testid> user logout from admin site using <valuetype> <tokentype>
        Then <responsecode> and <responsestatus> is received for admin logout
        Examples:
            | testid | tokentype   | valuetype | responsecode | responsestatus |
            | I128   | BearerToken | invalid   | 400          | error          |
            | I129   | No Auth     | invalid   | 400          | error          |
            | I130   | JWT Bearer  | invalid   | 400          | error          |
            | I131   | OAuth       | invalid   | 400          | error          |

    @api @identityAPI @adminloginapi @system @post @functional @negative @reviewed @superadmin
    Scenario: <testid> user attempt SQL Injection as <value> on Login
        When <testid> having SQL Injection payload as <value1> in the username field and enter the password as <value2>
        Then <responsecode> and <responsestatus> is received
        Examples:
            | testid | value1     | value2 | responsecode | responsestatus |
            | I132   | SQLpayload | valid  | 400          | error          |
            | I133   | SQLpayload | valid  | 400          | error          |

    @api @identityAPI @adminloginapi @system @post @functional @negative @reviewed @superadmin
    Scenario: <testid> user attempt XSS Injection as <value> on Login
        When <testid> having XSS Injection payload as <value1> in the username field and enter the password as <value2>
        Then <responsecode> and <responsestatus> is received
        Examples:
            | testid | value1     | value2 | responsecode | responsestatus |
            | I134   | XSSpayload | valid  | 400          | error          |
            | I135   | XSSpayload | valid  | 400          | error          |