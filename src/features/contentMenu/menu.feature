Feature: Menu in Admin and platform - web and mobile

        # created by  = Ruthrakkanth
        # reviewed by =
        # updated by  =
        # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/menu/

        Background: Menu Page Navigation
                Given User launches admin application
                When "SuperAdmin" login to "Admin" application
                When Navigate to Tenant list page
                Then Tenant list page will be displayed with "All" tenant
                When Search the "existing" tenant
                When Choose the "existing" tenant
                When User clicks on the "Program" button from the tenant
                Then Verify the user is on the program landing page
                When User click on "Experience Studio"
                When User click on the "Platform Navigations" submenu
                Then Verify the "Menu" page is displayed

        @adminui @menu @MNU001MenuCreation @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can create a new menu for User Approval
                When User click on Web tab in Menu
                When User click on Add button under Main menu of Web tab
                When Add Level 0 Menu overlay appears
                When User enters all the mandatory field for "User Approval" & clicks on Add button
                When User should be able to create a new menu under Web
                Then "Successful" message shown up


        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create a new menu under Mobile tab by entering all the fields
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User enters all the fields & clicks on Add button
                Then User should be able to create a new menu under Mobile

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Mobile : Verify whether a new menu is created when clicked on Cancel button
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User enters only the mandatory fields & clicks on Cancel button
                Then Menu should not be created

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario Outline: Verify user can able to create a new menu for Web <categoryorpage>
                When User click on Web tab in Menu
                When User click on Add button under Main menu of Web tab
                When Add Level 0 Menu overlay appears
                When User enters all the fields & clicks on Add button
                When User should be able to create a new menu under Web
                Examples:
                        | categoryorpage |
                        | category       |
                        | page           |


        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether a new menu is created when user clicks on Cancel button
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on Add button under Main menu of Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User enters only the mandatory fields & clicks on Cancel button
                Then Menu should not be created


        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario Outline: Verify user can able to create a menu with <iconavailable> for <mobilewebglobal>
                When User is on "Menu" page
                When User click on <mobilewebglobal> tab
                When User click on Add button under Main menu of Web tab
                Then Add Level 0 Menu overlay appears
                Then User should <benotbe> able to see icon displayed in the Add Level 0 Menu overlay
                When User enters data with all the other fields & clicks on Add button
                Then User should be able to create a new menu under <mobilewebglobal>
                Examples:
                        | iconavailable | mobilewebglobal | benotbe |
                        | not available | Web             | not be  |
                        | available     | Mobile          | be      |
                        | not available | global          | not be  |

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create menu without name
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Web/Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User should be able to see default icon displayed in the Add Level 0 Menu overlay
                When User enters data with all the other fields and deletes the Menu name
                When User click on "add" button
                Then Error should be thrown & User should not be allowed to create a new menu for Web/Mobile.

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create menu without menu link
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Web/Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User should be able to see default icon displayed in the Add Level 0 Menu overlay
                When User enters data with all the other fields and deletes the Menu link
                When User click on "add" button
                Then Error should be thrown & User should not be allowed to create a new menu for Web/Mobile.

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create Level 0 menu without Parent for Web
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Web tab
                Then Add Level 0 Menu overlay appears
                Then User should be able to see default icon displayed in the Add Level 0 Menu overlay
                When User enters data with all the other fields
                Then Parent field should be disabled by default
                When User click on "add" button
                Then User should be able to create a new menu for Web without parent name.

        @adminui @menu @MNU001MenuCreation @system @achievo @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create Level 0 menu without Parent for mobile
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Main menu of Mobile tab
                Then Add Level 0 Menu overlay appears
                Then User should be able to see default icon displayed in the Add Level 0 Menu overlay
                When User enters data with all the other fields
                Then Parent field should be disabled by default
                When User click on "add" button
                Then Error should be able to create a new menu for Mobile without parent name.

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to create Level 1 menu by directly clicking on Add button
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on Add button under Level 1 of Web/Mobile tab
                Then No action should happen
                Then User should not be shown with the Add Level 1 Menu overlay

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the parent field is automatically populated with the level 0 menu when creating a Level 1 menu
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on any menu under Level 0 of Web tab
                When User click on Add button under Level 1 of Web tab
                Then Add Level 1 Menu overlay appears
                Then User should be able to see the Level 0 menu added by default in parent field
                When User enters data with all the other fields
                When User click on "add" button
                Then User should be able to create a new menu for Web under Level 1

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Mobile : Verify that the parent field is automatically populated with the level 0 menu when creating a Level 1 menu
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on any menu under Level 0 of Mobile tab
                When User click on Add button under Level 1 of Mobile tab
                Then Add Level 1 Menu overlay appears
                Then User should be able to see the Level 0 menu added by default in parent field
                When User enters data with all the other fields
                When User click on "add" button
                Then User should be able to create a new menu for Mobile under Level 1


        @adminui @menu @MNU001MenuCreation @system @achievo @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether admin is able to update the parent field when creating a Level 1 menu for Mobile
                When User is on "Menu" page
                When User click on Mobile tab
                When User click on any menu under Level 0 of Mobile tab
                When User click on Add button under Level 1 of Mobile tab
                Then Add Level 1 Menu overlay appears
                Then User should be able to see the Level 0 menu added by default in parent field
                When User tries to update the parent field
                Then User should not be able to update the parent field

        @adminui @menu @MNU001MenuCreation @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether admin is able to update the parent field when creating a Level 1 menu for Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on any menu under Level 0 of Web tab
                When User click on Add button under Level 1 of Web tab
                Then Add Level 1 Menu overlay appears
                Then User should be able to see the Level 0 menu added by default in parent field
                When User tries to update the parent field
                Then User should not be able to update the parent field

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify adding Level 1 menu for Web by filling in only the mandatory fields.
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on any menu under Level 0 of Web tab
                When User click on Add button under Level 1 of Web tab
                Then Add Level 1 Menu overlay appears
                When User enters all the mandatory data
                When User click on "Add" Button
                Then User should be able to create Level 1 menu.

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify adding Level 1 menu for Web by filling in all fields.
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on any menu under Level 0 of Web tab
                When User click on Add button under Level 1 of Web tab
                Then Add Level 1 Menu overlay appears
                When User enters data with all the fields
                When User click on "Add" Button
                Then User should be able to create Level 1 menu.

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify adding Level 2 menu for Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on any menu under Level 1 of Web tab
                When User click on Add button under Level 2 of Web tab
                Then Add Level 2 Menu overlay appears
                When User enters all the mandatory data
                When User click on "Add" Button
                Then User should be able to create Level 2 menu.

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the menu which doesn't contain any child menu
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on menu which has not childs under Level 0 of Web tab
                Then User should not see any menus getting populated with the Level 1 or Level 2
                When User selects the newly created menu from the Main menu
                Then User should not see any of the child menus in Level 1 or Level 2

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the menu which contains child menu under Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User click on Add button under Level 1 menu by selecting a menu X from Main menu
                When User enters all the mandatory data & click on Add Button
                Then User should be able to create level 1 child menu Y.
                When User click on Add button under Level 2 menu by selecting a menu Y from Level1
                When User enters all the mandatory data & click on Add Button
                Then User should be able to create level 2 child menu Z.
                When User selects the menu X Under the Main menu
                Then User should be able to see the child menu Y getting populated under Level1
                When User selects menu Y Under Level 1
                Then User should be able to see the child menu Z populated under Level2

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to click on edit with Level 0 menu created under Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User is on the Main menu
                When User click on three dots in menu
                Then User will be provided with the options to Edit and Delete
                When User Click on Edit
                Then user should be able to edit the LEvel 0 menu

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user edit and update the fields with Level0 menu created under Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User is on the Main menu
                When User click on three dots in menu
                Then User will be provided with the options to Edit and Delete
                When User Click on Edit
                When User updates all the fields with new data
                When User Click on Update
                Then User should be able to update the changes

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user edit and update the fields with Level 1 menu created under Web
                When User is on "Menu" page
                When User click on Web tab in Menu
                When User is on the Level 1 menu
                When User click on three dots in menu
                Then User will be provided with the options to Edit and Delete
                When User Click on Edit
                When User updates all the fields with new data
                When User Click on Update
                Then User should be able to update the changes

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user edit and update the fields with Level 2 menu created under Web
                When User is on "Menu" page
                When User click on "Web" tab
                When User is on the Level 2 menu
                When User click on three dots in menu
                Then User will be provided with the options to Edit and Delete
                When User Click on Edit
                When User updates all the fields with new data
                When User Click on Update
                Then User should be able to update the changes

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can delete Level 0 menu under Web/Mobile tab which doesnt contain child menus
                When User is on "Menu" page
                When User click on "Web" tab
                When User click on three dots to the right of menu
                Then User will be provided with the options to Edit and Delete
                When User Click on Delete
                Then User should be able to delete it successfully

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user cannot delete Level 0 menu under Web/Mobile tab which contains Level 1

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user cannot delete Level 0 menu under Web/Mobile tab which contains Level 1 & Level 2 menu

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can delete Level 1 menu in Mobile/Web tab which doesnt contain any child menu

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can delete Level 1 menu in Mobile/Web tab which contains child menu

        @adminui @menu @MNU001MenuCreation @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can delete Level 2 menu in Mobile/Web tab


        @adminui @menu @MNU001MenuCreation @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to change the order of menu by dragging and dropping in Web tab
                When User is on "Menu" page
                When User click on "Web" tab
                When User click on the first menu item and drags it to the last by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the last
                When User click on the last menu item and drags it to the first by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the first

        @adminui @menu @MNU001MenuCreation @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify rearranging the menus in Web tab has impact on the Platform site
                When User is on "Menu" page
                When User click on "Web" tab
                When User click on the first menu item and drags it to the last by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the last
                When User click on the last menu item and drags it to the first by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the first
                Then User should be able to see the changes in the platform site

        @adminui @menu @MNU001MenuCreation @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user can able to change the order of menu by dragging and dropping in Mobile tab
                When User is on "Menu" page
                When User click on "Mobile" tab
                When User click on the first menu item and drags it to the last by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the last
                When User click on the last menu item and drags it to the first by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the first

        @adminui @menu @MNU001MenuCreation @system @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify rearranging the menus in Mobile tab has impact on the Achievo mobile application
                When User is on "Menu" page
                When User click on "Mobile" tab
                When User click on the first menu item and drags it to the last by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the last
                When User click on the last menu item and drags it to the first by clicking on the six dots present left to the name
                Then The selected menu item will be moved to the first
                Then User should be able to see the changes in the Mobile application

        @adminui @menu @MNU001MenuCreation @Intrgration @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the page type selected in create flow under web tab, is getting displayed properly in the Web platform

        @adminui @menu @MNU001MenuCreation @Integration @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the page type selected in create flow under mobile tab, is getting displayed properly in the Mobile application

        @adminui @menu @MNU002MenuCreationAddmenu @Integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can add a menu item that links to a page in platform site.
                When User is on "Menu" page
                When User click on "Mobile" tab
                When User adds menus under Web
                When User creates a menu with the valid link & clicks on Add button
                Then User should be able to create menus under Web
                Then User is able to see this menu reflected in platform site

        @adminui @menu @MNU002MenuCreationAddmenu @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario:Verify that the admin can add multiple menu items with links to different pages in the platform site.
                When User is on "Menu" page
                When User click on "Mobile" tab
                When User adds menus under Web
                When User creates several menus with the different valid links
                Then User should be able to create menus under Web
                Then User is able to see this menu reflected in platform site, which will re-direct to different internal pages

        @adminui @menu @MNU002MenuCreationAddmenu @integration @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether unpublished contents are getting displayed in the platform

        @adminui @menu @MNU002MenuCreationAddmenu @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario:Verify whether published contents are getting displayed in the platform

        @adminui @menu @MNU002MenuCreationAddmenu @integration @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario:Verify whether unpublished contents are getting displayed in the Mobile application

        @adminui @menu @MNU002MenuCreationAddmenu @integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario:Verify whether published contents are getting displayed in the Mobile application


        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can update the link of an existing menu item under Web.

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the error message thrown for the menu added with Invalid link

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the updated content is reflected in the platform site as the user changes the menu link.

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether admin can add add duplicate menu items with same name and same link

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether tenant admin with limited access can add/edit Menu

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether tenant admin with limited access can delete Menu


        @adminui @menu @MNU002MenuCreationAddmenu @Integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if a menu can be created by linking a content page
                Given User is on "Menu" page
                When User click on "Web" tab
                When User click on Add button under Main menu of Web tab
                When User select Pagetype as Content and enters all the valid information
                When User clicks on "Add" button
                Then User should be able to see the created menu under Web
                Then User is able to see this menu reflected as a content page in the Platform site


        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify content page is displayed only when the user selects the last sub menu from a menu which contains multiple child menus


        @adminui @menu @MNU002MenuCreationAddmenu @Integration @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario Outline: Verify user can navigate to <level123> menu in platform site
                When User is on "Menu" page
                When User click on "Web" tab
                When User adds menus under Web
                When User creates a menu with the valid link & clicks on Add button
                Then User should be able to create menus under Web
                Then User is able to see this menu reflected in platform site
                When User selects the menu from the Main menu
                When User selects the <level123> menu <withwithoutchild>
                Then User should be able to see the <pageormenu>
                Examples:
                        | level123 | withwithoutchild | pageormenu |
                        | Level 1  | without child    | page       |
                        | Level 1  | with child       | menu       |
                        | Level 2  | without child    | page       |
                        | Level 2  | with child       | menu       |
                        | Level 3  | without child    | page       |
                        | Level 3  | with child       | menu       |


        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: verify whether content page is displayed when clicking the main menu on the platform site, which is created with multiple child menus in the admin site.

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if a menu can be created by linking a form under Web
                GWhen User is on "Menu" page
                When User click on "Web" tab
                When User click on Add button under Main menu of Web tab
                When User select Pagetype as Form and enters all the valid information
                When User clicks on "Add" button
                Then User should be able to see the created menu under Web
                Then User is able to see this menu reflected as a Form in the Platform site

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if a menu can be created by linking a form under Mobile
                GWhen User is on "Menu" page
                When User click on "Mobile" tab
                When User click on Add button under Main menu of Mobile tab
                When User select Pagetype as Form and enters all the valid information
                When User clicks on "Add" button
                Then User should be able to see the created menu under Mobile
                Then User is able to see this menu reflected as a Form in the Mobile application



        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify menu audience dropdown is displayed when user clicks on Menu Audience checkbox

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether all the audience group created in the application are being displayed in the Menu Audience drop down

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user is able to select the audience group from the Menu Audience dropdown under Web

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user is able to select the audience group from the Menu Audience dropdown under Mobile

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the menu is visible in the platform application only to the users selected in the "Menu Audience" dropdown.

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario:  Verify that the menu is visible in the Achievo application only to the users selected in the "Menu Audience" dropdown.

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the menu in Platform is getting displayed for any other users who is not a part of the Audience group

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the menu in mobile application is getting displayed for any other users who is not a part of the Audience group

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if menu can be configured for certain audience group

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if menu is displayed for the user impersonation and menu is showing as per the impersonated user

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if menu is not displayed for the user who changed from the audience group which is configured

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if menu is displayed when a user is present in more than one audience group and one audience group is configured

        @adminui @menu @MNU003MenuCreationConfigureAudienceGroup @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if menu is displayed when a user is present in more than one audience group and more than one audience group is configured

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can specify display names for a menu in different languages.

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify if platform user changes the language in the platform, the menu should be displayed in the selected language

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Veirfy if platform user changes the language in platform and the menu doesn't contain the language value, then the menu should be displayed in the default language

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the menu displays the correct name based on the user's browser language setting.

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the menu name when the user's browser language is not specified.

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether admin can update the display name for different languages

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether user is able to save a menu with an empty display name for a specified language.

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether user is able to add duplicate menu name for the same language

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can assign access to point statements for a specific audience group

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can assign access to notification preference for a specific audience group

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can assign access to multiple components (point statements, point summaries, and notification preferences) to a specific audience group.

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can update the access rights for a specific audience group.

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that users in the selected audience group can see the assigned components.

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether user is able to add Same audience group to the components multiple times

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether admin is able to remove the access to the components

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify once the access is removed, particular audience group should not be able to view the components

        @adminui @menu @MNU005GlobalAccessMenuCommonComponents @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that changes in access rights are reflected correctly and promptly.
                When Admin remove certain audience group & adds another set of audience
                When Removed audience group should not be able to access the components while the newly added can do so

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin can enable the terms and conditions page

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin can enable the privacy policy page

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin can disable the privacy policy page

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can enable the Cookie Policy component to be available pre-login.

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the admin can specify a URL for redirection for the Terms and Conditions component.


        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether error is thrown if admin tries to enable a T&C component without providing a URL for redirection.

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that the system does not accept an invalid URL for redirection.

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that Tenant admin with limited access can enable or disable components

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify that admin can set a disabled component to be available pre-login.

        @adminui @menu @MNU006GlobalAccessMenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin can enable the cookie policy page


        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin user can create more than 4 home menu in mobile tab

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Veirfy admin user can create more than 4 + menu in mobile tab

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin can create more than 4 profile menu in web tab

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo mobile can have one home menu

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo mobile can have one profile menu

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo mobile can have one + menu

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo with more than four menu in mobile tab and verify first four for the user will be displayed

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo with more than one and less than four in the mobile home page tab for the user's audience and verify all the menu will be displayed

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo with more than one and less than four in the mobile + tab for the user's audience and verify all the menu will be displayed

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario Outline: Verify platform achievo by navigating to the menu of type <menutype> and verify the page is displayed
                When admin configures the menu of type <menutype>
                When user of the configured audience click on the menu of type <menutype>
                Then user should able to navigate to that page
                Examples:
                        | menutype                                       |
                        | Promotion Dashboard                            |
                        | Manager Dashboard                              |
                        | CMS page                                       |
                        | Message page                                   |
                        | Claim Form - Preloaded Sales                   |
                        | Claim Form - Preloaded Behaviours              |
                        | Claim Resolution - Preloaded Sales             |
                        | Claim Resolution - Preloaded Behaviours        |
                        | Claim Form - Sales Invoice Submission          |
                        | Claim Form - Behaviour Evidence Submission     |
                        | Claim History - Sales Invoice Submission       |
                        | Claim History - Behaviour Evidence Submission  |
                        | Claim Approval - Sales Invoice Submission      |
                        | Claim Approval - Behaviour Evidence Submission |
                        | Coupon Claim                                   |
                        | Coupon Claim history                           |
                        | Embedded Report                                |
                        | Experience Marketplace                         |
                        | Merchandise Marketplace                        |
                        | Mastery Marketplace                            |
                        | External link                                  |
                        | Game                                           |
                        | Goal Quest - Participant                       |
                        | Goal Quest - Manager                           |
                        | Quiz & Questionnaire                           |
                        | Quiz Admin                                     |
                        | Hub page                                       |
                        | Membership Tier                                |
                        | Point statement                                |
                        | Registration approval                          |
                        | Contact Us                                     |

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu displayed for the user where the menu is configured for one of the audience user is part of

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu displayed for the user where the menu is configured for both of the audience user is part of

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo who is more than one audience and tries to login and verify the menu is not displayed for the user where the menu is configured for not for any of the audience user is part of

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo user tries to login and verify the menu is not displayed as the user is excluded from the audience group where the menu is configured

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo user tries to login via <androidorios> and verify the menu is displayed as per the configuration
                When user tries to login via <androidorios>
                Then user should able to see the menu as per the configuration
                Examples:
                        | androidorios |
                        | Android      |
                        | IOS          |

        @adminui @menu @MNU002MenuCreationAddmenu @integration @achievo @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify platform achievo user tries to login via <androidorios> and verify the menu icon is displayed as per the configuration
                When user tries to login via <androidorios>
                Then user should able to see the menu icon as per the configuration
                Examples:
                        | androidorios |
                        | Android      |
                        | IOS          |

        # Additional test cases:
        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the menu screen has 3 tabs - Web, Mobile, and Global

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the number of sub-menus under each menu is getting displayed near kebab menu in Web tab

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether the number of sub-menus under each menu is getting displayed near kebab menu in Mobile tab

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify add Sub menu option is displayed when user clicks on the three dots in the menu which doesn't contain any child menu

        @adminui @menu @MNU002MenuCreationAddmenu @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether pagetype and pagename is displayed under each menu in Mobile/Web tab

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether Language tab is displayed in Add Level 0 Menu overlay under Web/Mobile tab

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether Language tab is displayed in Add Level 1 menu overlay under Web/Mobile tab

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify whether Language tab is displayed in Add Level 2 menu overlay under Web/Mobile tab

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the fields Select Lagugages & Menu name are present under Language

        @adminui @menu @MNU004MenuCreationLanguages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario Outline: Verify audience link is <shownupnot> for the <menutype> while creation
                When User is on "Menu" page
                When User click on "Web" tab
                When User click on Add button under Main menu of Web tab
                When User select Pagetype as Form and enters all the valid information
                When User clicks on "Add" button
                Then User should be able to see the created menu under Web
                Then audience selection should <shownupnot> for the <menutype> while creation

                Examples:
                        | menutype                                       | shownupnot  |
                        | Promotion Dashboard                            | not shown up |
                        | Manager Dashboard                              | not shown up |
                        | CMS page                                       | not shown up |
                        | Message page                                   | not shown up |
                        | Claim Form - Preloaded Sales                   | not shown up |
                        | Claim Form - Preloaded Behaviours              | not shown up |
                        | Claim Resolution - Preloaded Sales             | not shown up |
                        | Claim Resolution - Preloaded Behaviours        | not shown up |
                        | Claim Form - Sales Invoice Submission          | not shown up |
                        | Claim Form - Behaviour Evidence Submission     | not shown up |
                        | Claim History - Sales Invoice Submission       | not shown up |
                        | Claim History - Behaviour Evidence Submission  | not shown up |
                        | Claim Approval - Sales Invoice Submission      | not shown up |
                        | Claim Approval - Behaviour Evidence Submission | not shown up |
                        | Coupon Claim                                   | shown up     |
                        | Coupon Claim history                           | shown up     |
                        | Embedded Report                                | not shown up |
                        | Experience Marketplace                         | shown up     |
                        | Merchandise Marketplace                        | shown up     |
                        | Mastery Marketplace                            | shown up     |
                        | External link                                  | shown up     |
                        | Game                                           | shown up     |
                        | Goal Quest - Participant                       | not shown up |
                        | Goal Quest - Manager                           | not shown up |
                        | Quiz & Questionnaire                           | not shown up |
                        | Quiz Admin                                     | shown up     |
                        | Hub page                                       | shown up     |
                        | Membership Tier                                | shown up     |
                        | Point statement                                | shown up     |
                        | Registration approval                          | not shown up |
                        | Contact Us                                     | shown up     |





















#         #********************************************** older menu test cases **********************************************

#         Scenario: Verify admin contains program setup menu which contains the program settings, hierarchy, login settings, contact information

#         Scenario: Verify admin contains partner hub menu which contains the organization, participants, participant approvals, job roles, status, audience groups, membership tiering

#         Scenario: Verify admin contains Sales and claims menu which contains the product and activity, and coupongeneration

#         Scenario: Verify promotion is a seperate menu in admin

#         Scenario: Verify admin contains Foundation Tools menu which contains the workflow buildre, schema builder, form buildre, report builder

#         Scenario: Verify admin contains the Experience studio menu which contains Assets, menu, home page, content, embedded reports

#         Scenario: Verify admin contains the communication menu seperately

#         Scenario: Verify admin contains the Admin Toolkit menu which contains the file uploads, offline downloads, change logs, alerts

#         Scenario: Verify admin contains the Integration hub menu

#         Scenario: Verify admin contains the Translation menu

#         Scenario: Verify admin contains the settings menu

#         # Acceptance cases

#         Scenario: Verify platform web contains the menu which contains child menu

#         Scenario: Verify platform web contains the menu which contains two level child menu

#         Scenario: Verify platform web contains the menu which doesn't contain any child menu

#         # Q: Does platform mobile can have child menu ? If yes, how many levels of child menu can be added

#         Scenario: Verify in responsive mode menu items are collapsed into the hamburger menu

#         Scenario: Verify by changing the language in the platform, changes the menu display name in the selected language

#         Scenario: Verify if the menu length is increased, it should be wrapped in mobile

#         Scenario: Verify if the menu length is increased, it should be wrapped in web

#         Scenario: Verify if all the menu is configured and platform user cannot see any performance lags


# # Is there any other field other than Audience, user is restricted to update ? =================

#         #  where do we specify the display name for different language? where do we have that config?
#         # In mockup Add submenu option is displayed in kebab menu, but in UI it is not displayed
#         # how many sub menu's can be added under one parent menu
