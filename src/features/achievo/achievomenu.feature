Feature: Menu in Admin and platform - web and mobile

    # created by  = kishore Gunasekaran
    # reviewed by =
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/menu/


    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can able to create Level 0 menu without Parent for mobile
        When User is on "Menu" page
        When User click on Mobile tab
        When User click on Add button under Main menu of Mobile tab
        Then Add Level 0 Menu overlay appears
        Then User should be able to see default icon displayed in the Add Level 0 Menu overlay
        When User enters data with all the other fields
        Then Parent field should be disabled by default
        When User click on "add" button
        Then Error should be able to create a new menu for Mobile without parent name

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify rearranging the menus in Mobile tab has impact on the Achievo mobile application
        When User is on "Menu" page
        When User click on "Mobile" tab
        When User click on the first menu item and drags it to the last by clicking on the six dots present left to the name
        Then The selected menu item will be moved to the last
        When User click on the last menu item and drags it to the first by clicking on the six dots present left to the name
        Then The selected menu item will be moved to the first
        Then User should be able to see the changes in the Mobile application

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario:  Verify that the menu is visible in the Achievo application only to the users selected in the "Menu Audience" dropdown.

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo mobile can have one home menu

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo mobile can have one profile menu

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo mobile can have one + menu

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo with more than one and less than four in the mobile home page tab for the user's audience and verify all the menu will be displayed

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo with more than one and less than four in the mobile + tab for the user's audience and verify all the menu will be displayed

    @adminui @achievo @AchievoMenu @system @configure @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario Outline: Verify platform achievo by navigating to the menu of type <menutype> and verify the page is displayed

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu displayed for the user where the menu is configured for one of the audience user is part of

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu displayed for the user where the menu is configured for both of the audience user is part of

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu is not displayed for the user where the menu is configured for not for any of the audience user is part of

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo user tries to login and verify the menu is not displayed as the user is excluded from the audience group where the menu is configured

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo user tries to login via <androidorios> and verify the menu is displayed as per the configuration
        When user tries to login via <androidorios>
        Then user should able to see the menu as per the configuration
        Examples:
            | androidorios |
            | Android      |
            | IOS          |

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify platform achievo user tries to login via <androidorios> and verify the menu icon is displayed as per the configuration
        When user tries to login via <androidorios>
        Then user should able to see the menu icon as per the configuration
        Examples:
            | androidorios |
            | Android      |
            | IOS          |

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure the mobile menu for the quiz and game promotions

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure in the +menu in the mobile menu  configurations

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the admin user can able to configure the profile menu in the mobile menu configurations

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the icons are reflceted in the mobile platfrom user, accordiony to the menu configurations

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify the Cms menu can be configured in the admin site in the menus for the mobile applications

    @adminui @achievo @AchievoMenu @integration  @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: verify all the menus can be configured for the mobile applications in the admin site
