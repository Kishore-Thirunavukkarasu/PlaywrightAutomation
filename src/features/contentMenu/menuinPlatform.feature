Feature: Verify menu in platform site

    @platformui @menu @MNU001MenuCreation @system @form @functional @smoke @notreviewed @platformuser @NOTupdated @notautomated
    Scenario: Verify the platform user can able to view the menu
        When User launches platform application
        When User enters the valid appcode for the specific program
        When Platform "self registration" user login
        # Then "successful" message shown up in platform
        Then Verify "home page" is displayed in platform
        Then Verify the menu is displayed in the platform site
        When User Logout from the platform site