Feature: Sales Claim Feature for Existing Tenant

    Scenario: Sales Claim Claimed by valid user
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Platform "Sales Claim" user login
        Then BC Verify "home page" is displayed in platform
        When BC User click on the "Sales Claim" menu from menu tab
        When BC User Claim the Sales
        Then BC "Successful" message shown up in platform
        When BC User Logout from the platform site

    Scenario: Verify the admin user can approve the Sales Claim
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Platform "Claim Approver" user login
        Then BC Verify "home page" is displayed in platform
        When BC User click on the "Sales Approve" menu from menu tab
        When BC User approve the Sales Claim
        Then BC "Successful" message shown up in platform
        When BC User Logout from the platform site

        