Feature: Invoice Claim for BC Tenant

    Scenario: Verify the user can able to a new Invoice Claim
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Platform "Invoice Claim" user login
        Then BC Verify "home page" is displayed in platform
        When BC User click on the "Invoice Claim" menu from menu tab
        When BC User Claim the Invoice
        Then BC "Successful" message shown up in platform
        When BC User Logout from the platform site


    Scenario: Verify the user cannot able to a submit new Invoice Claim without file upload
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Platform "Invoice Claim" user login
        Then BC Verify "home page" is displayed in platform
        When BC User click on the "Invoice Claim" menu from menu tab
        When BC User Claim the Invoice without file upload
        Then BC "error" message shown up in platform
        When BC User Logout from the platform site

    Scenario: Verify the Admin user can approve the Invoice Claim
        When BC User launches platform application
        When BC User enters the valid appcode for the specific program
        Then BC User should able to see the login screen
        When BC Platform " Claim Approver" user login
        Then BC Verify "home page" is displayed in platform
        When BC Approver click on the "Invoice approval" menu from menu tab
        When BC User approve the Invoice Claim
        Then BC "Successful" message shown up in platform
        When BC User Logout from the platform site

