
Feature: Points Statement Filter to search with specfic transcation

    # created by  = Kishore Gunasekaran
    # reviewed by =
    # updated by  =

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the promotion name "All" in the points statements
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Promotion Name" filter dropdown
        And the user chooses "All" from the dropdown options
        Then the points statements should display entries for all promotions
        And the entries should include promotions such as "Summer Sale", "Holiday Bonus", and "Welcome Offer"
        And the total points should reflect the sum of points from all promotions

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the promotion name "All" shows no results when there are no promotions
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        And the user has no promotions applied
        When the user selects the "Promotion Name" filter dropdown
        And the user chooses "All" from the dropdown options
        Then the points statements should display a message "No points statements available for the promotions"
        And the total points should be zero

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the promotion name "All" updates correctly after applying a new promotion
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Promotion Name" filter dropdown
        And the user chooses "All" from the dropdown options
        And the user applies a new promotion "Spring Discount"
        Then the points statements should update to include the "Spring Discount" promotion
        And the total points should reflect the sum of points from all promotions including the new promotion

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Filter points statements by promotion name with earned points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user enters "Promotion Name" into the promotion name filter options
        And the user selects "Earned" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements related to the "Promotion Name" promotion where points were earned
        And each displayed points statement should be associated with the "Promotion Name" promotion
        And each displayed points statement should have a points type of "Earned"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Filter points statements by promotion name with redeemed points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user enters "Summer Sale" into the promotion name filter options
        And the user selects "redeemed" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements related to the "Promotion Name" promotion where points were redeemed
        And each displayed points statement should be associated with the "Promotion Name" promotion
        And each displayed points statement should have a points type of "redeemed"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Filter points statements by start and end date with earned points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "Earned" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were earned within the date range from "2024-01-01" to "2024-05-31"
        And each displayed points statement should have a points type of "Earned"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date displays correct earned points
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Start Date" as "2023-01-01"
        And the user selects the "End Date" as "2023-01-31"
        And the user applies the date filter
        Then the points statements should display entries with earned points between "2023-01-01" and "2023-01-31"
        And each entry should show points earned within the specified date range
        And the total points displayed should be the sum of points earned within the specified date range

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date shows no results when no points are earned in the range
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Start Date" as "2024-01-01"
        And the user selects the "End Date" as "2024-01-31"
        And the user applies the date filter
        Then the points statements should display a message "No points earned within the specified date range"
        And the total points displayed should be zero

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date updates correctly after earning new points
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Start Date" as "2023-02-01"
        And the user selects the "End Date" as "2023-02-28"
        And the user applies the date filter
        And the user earns new points on "2023-02-15"
        Then the points statements should update to include the newly earned points on "2023-02-15"
        And the total points displayed should reflect the sum of points earned within the specified date range including the new points

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date handles invalid date ranges
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Start Date" as "2023-03-01"
        And the user selects the "End Date" as "2023-02-28"
        And the user applies the date filter
        Then the system should display an error message "Invalid date range: Start Date cannot be after End Date"
        And the points statements should not be updated

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date with redeemed points in the points statement
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "Redeemed" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were redeemed within the date range from "2024-01-01" to "2024-05-31"
        And each displayed points statement should have a points type of "Redeemed"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date with the all points in the points statement

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Filter points statements by start and end date with all points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "All" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were all within the date range from "2024-01-01" to "2024-05-31"
        And each displayed points statement should have a points type of "All"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date with promotion name in the All points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "promotion name" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were promotion name within the date range from "2024-01-01" to "2024-05-31"
        And each displayed points statement should have a points type of "promotion name"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date with promotion in the earned points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "Earned" from the points type filter options
        And the user enters "Summer Sale" into the promotion filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were earned within the date range from "2024-01-01" to "2024-05-31" and through the "promotion name" promotion
        And each displayed points statement should have a points type of "Earned"
        And each displayed points statement should be associated with the "promotion name" promotion
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with start and end date with promotion in the redeemed points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects a start date "2024-01-01" and an end date "2024-05-31" from the date filter options
        And the user selects "redeemed" from the points type filter options
        And the user enters "Summer Sale" into the promotion filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were redeemed within the date range from "2024-01-01" to "2024-05-31" and through the "promotion name" promotion
        And each displayed points statement should have a points type of "Earned"
        And each displayed points statement should be associated with the "promotion name" promotion
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with earned points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects "Earned" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were earned
        And each displayed points statement should have a points type of "Earned"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter displays entries with earned points within the specified range
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Earned Points" filter dropdown
        And the user enters a minimum points value of "100"
        And the user enters a maximum points value of "500"
        And the user applies the points filter
        Then the points statements should display entries with earned points between "100" and "500"
        And each entry should show points earned within the specified range
        And the total points displayed should be the sum of points earned within the specified range

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter shows no results when no points are earned within the specified range
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Earned Points" filter dropdown
        And the user enters a minimum points value of "1000"
        And the user enters a maximum points value of "2000"
        And the user applies the points filter
        Then the points statements should display a message "No points earned within the specified range"
        And the total points displayed should be zero

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter updates correctly after earning new points within the specified range
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Earned Points" filter dropdown
        And the user enters a minimum points value of "50"
        And the user enters a maximum points value of "150"
        And the user applies the points filter
        And the user earns new points of "120"
        Then the points statements should update to include the newly earned points of "120"
        And the total points displayed should reflect the sum of points earned within the specified range including the new points

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter handles invalid point ranges
        Given the user is logged into their account
        And the user navigates to the "Points Statements" page
        When the user selects the "Earned Points" filter dropdown
        And the user enters a minimum points value of "500"
        And the user enters a maximum points value of "100"
        And the user applies the points filter
        Then the system should display an error message "Invalid points range: Minimum points cannot be greater than maximum points"
        And the points statements should not be updated

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verfiy the filter the redemmed points
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user selects "Redeemed" from the points type filter options
        And the user applies the filter
        Then the points statements list should display only statements where points were redeemed
        And each displayed points statement should have a points type of "Redeemed"
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @search @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the filter with the Promotion name
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user enters "Promotion Name" into the promotion name filter options
        And the user applies the filter
        Then the points statements list should display only statements related to the "Promotion Name" promotion
        And each displayed points statement should be associated with the "Promotion Name" promotion
        And the total count of filtered points statements should be correctly displayed

    @mobile @achievo @PointStatement @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the total points for earned is displayed in the points statements
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user views their points statements
        Then the total points earned should be displayed
        And the total points earned should accurately reflect in the earned points entries

    @mobile @achievo @PointStatement @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the total points for redeemed is displayed in the points statements
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user views their points statements
        Then the total points redeemed should be displayed
        And the total points redeemed should accurately reflect in the redeemed points entries

    @mobile @achievo @PointStatement @system @special @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the current balance in the points statement for the particular logged in user
        Given the user is logged into the application
        And the user navigates to the points statements page
        When the user views their points statements
        Then the current balance should be displayed
        And the current balance should accurately reflect in the current balance entries


