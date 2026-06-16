Feature: Platform Login UI

    # created by  = Kadarkarai Selvam
    # reviewed by =
    # updated by  =
    # project url = 

    Background:
        Given Platform URL is launched
        Then Verify the login page is opened

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline: Platform User with status as <status> login with <username> username and <password> password
        When User is on the platform login page
        When User enters username as <username> and password as <password> for <status> user
        Then Verify the HomePage should is <view>
        When Logout the application if HomePage is <view>
        Examples:
            | username | password | status | view      |
            | valid    | valid    | active | displayed |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline:  Platform User with status as <status> login with <username> username and <password> password
        When User is on the platform login page
        When User enters username as <username> and password as <password> for <status> user
        Then Verify the HomePage should is <view>
        Examples:
            | username   | password   | status   | view         |
            | invalid    | invalid    | active   | notdisplayed |
            | valid      | invalid    | active   | notdisplayed |
            | invalid    | valid      | active   | notdisplayed |
            | valid      | valid      | inactive | notdisplayed |
            | valid      | valid      | deleted  | notdisplayed |
            | emptyfield | emptyfield | nostatus | notdisplayed |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline:  Platform User with status as <status> login with <email> email and <password> password
        When User is on the platform login page
        When User enters email as <email> and password as <password> for <status> user
        Then Verify the HomePage should is <view>
        Examples:
            | email      | password   | status   | view         |
            | valid      | valid      | active   | displayed    |
            | valid      | invalid    | active   | notdisplayed |
            | valid      | valid      | inactive | notdisplayed |
            | valid      | valid      | deleted  | notdisplayed |
            | emptyfield | emptyfield | nostatus | notdisplayed |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline:  Platform User with status as <status> login with <mobileNo> mobile number and <password> password
        When User is on the platform login page
        When User enters mobile number as <mobileNo> and password as <password> for <status> user
        Then Verify the HomePage should is <view>
        Examples:
            | mobileNo   | password   | status   | view         |
            | valid      | valid      | active   | displayed    |
            | valid      | invalid    | active   | notdisplayed |
            | valid      | valid      | inactive | notdisplayed |
            | valid      | valid      | deleted  | notdisplayed |
            | emptyfield | emptyfield | nostatus | notdisplayed |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Platform User login with multiple credentials
        When User is on the platform login page
        When User enters username <username1> and password <password1>
        When User click on login
        Then Verify the user should <what1>
        When User enters username <username2> and password <password2>
        When User click on login
        Then Verify the user should <what2>
        When User enters username <username3> and password <password3>
        When User click on login
        Then Verify the user should <what3>
        Examples:
            | username1 | password1 | what1    | username2 | password2 | what2    | username3 | password3 | what3 |
            | valid     | invalid   | notlogin | invalid   | valid     | notlogin | valid     | valid     | login |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Platform User login with invalid password and verify the account is locked
        When User is on the platform login page
        When User enters username <username1> and password <password1>
        When User click on login
        Then Verify the user should <what1>
        When User enters username <username2> and password <password2>
        When User click on login
        Then Verify the user should <what2>
        When User enters username <username3> and password <password3>
        When User click on login
        Then Verify the user should <what3>
        Then Verify the account is locked error message should be displayed
        Examples:
            | username1 | password1 | what1    | username2 | password2 | what2    | username3 | password3 | what3    |
            | valid     | invalid   | notlogin | valid     | invalid   | notlogin | valid     | invalid   | notlogin |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login session is active after closing the browser for platform user
        When User is on the platform login page
        When User enters username <username> and password <password>
        When User click on login
        Then Verify the user should <what>
        When User close the browser
        When User open the browser
        When User hits the platform URL
        Then Verify the user session should gets expired
        Examples:
            | username | password | what  |
            | valid    | valid    | login |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login session is active after page refresh for platform user
        When User is on the platform login page
        When User enters username <username> and password <password>
        When User click on login
        Then Verify the user should <what>
        When User refresh the page
        Then Verify the user session should not gets expired
        Examples:
            | username | password | what  |
            | valid    | valid    | login |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether login password is visible when click on the show password for platform user
        When User is on the platform login page
        When User enters username <username> and password <password>
        When User click on show password
        Then Verify the password should be visible
        When User click on hide password
        Then Verify the password should not be visible
        Examples:
            | username | password |
            | valid    | valid    |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify whether clicking on forgot password redirects to forgot password page for platform user
        When User is on the platform login page
        When User click on forgot password
        Then Verify the forgot password page should be displayed

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user login through <otp> OTP for platform site
        When User is on the platform login page
        When User enters username <username> and password <password>
        When User click on login through OTP
        Then Verify the OTP is generated
        Then Verify the OTP page should be displayed
        When User enters the <otp> OTP
        Then Verify the user should <what>
        Examples:
            | username | password | otp     | what     |
            | valid    | valid    | valid   | login    |
            | valid    | valid    | invalid | notlogin |

    @platformui @identity @IDM023Platformloginui @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user self registration for platform site
        When User is on the platform login page
        When User click on register user
        Then Verify the registration page should be displayed
        When User enters all the mandatory details in the user form
        When User click on register
        Then Verify the user should be registered
        When User enters the registered username and password
        When User click on login
        Then Verify the user should be logged in
        Then Verify the homepage is displayed