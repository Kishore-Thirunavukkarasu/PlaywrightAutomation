Feature: MessageCenter - Filter to search specfic notifications

    # created by  = Kishore Gunasekaran
    # reviewed by =
    # updated by  =

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the view notification in filter search with unread

        Given the user is logged into the application
        And the user navigates to the notifications page
        When the user clicks on the filter icon
        And the user selects the "Unread" filter option
        And the user applies the filter
        Then only unread notifications should be displayed in the notifications list
        And each displayed notification should have a status of "unread"
        And the total count of unread notifications should be correctly displayed

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the view notification in filter search with read

        Given the user is logged into the application
        And the user navigates to the notifications page
        When the user clicks on the filter icon
        And the user selects the "read" filter option
        And the user applies the filter
        Then only unread notifications should be displayed in the notifications list
        And each displayed notification should have a status of "read"
        And the total count of unread notifications should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the view notification in filter search with all

        Given the user is logged into the application
        And the user navigates to the notifications page
        When the user clicks on the filter icon
        And the user selects the "All" filter option
        And the user applies the filter
        Then only unread notifications should be displayed in the notifications list
        And each displayed notification should have a status of "All"
        And the total count of unread notifications should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by title in the message center notification

        Given the user is logged into the application
        And the user navigates to the message center notification
        When the user enters "Search by title" into the search bar
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "Search by Title"
        # And each displayed notification should have a title that includes "Meeting Reminder"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by date in the message center notification

        Given the user is logged into the application
        And the user navigates to the message center notification
        When the user enters "date" into the search bar
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "date"
        # And each displayed notification should have a title that includes "date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the mesasge center notification with all the combinations

        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "All" into the search bar
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "All"
        And each displayed notification should have a title that includes "All"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with all and search by title

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search notifications by title
        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "Search by tite" into the search bar
        And select "All" in the dropdown
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "Meeting Reminder"
        And each displayed notification should have a title that includes "Meeting Reminder"
        And the total count of search results should be correctly displayed

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search notifications by title
        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "Meeting Reminder" into the search bar
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "Meeting Reminder"
        And each displayed notification should have a title that includes "Meeting Reminder"
        And the total count of search results should be correctly displayed

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with read and search by title

        Given the user is logged into the application
        And the user navigates to the message center
        And the user selects the view notification as "Read" filter in dropdown
        When the user enters "Title" into the search bar
        And the user clicks the search button
        Then the notifications list should display only read notifications with the title containing "Title"
        And each displayed notification should have a status of "read"
        And each displayed notification should have a title that includes "Title"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with unread and search by title

        Given the user is logged into the application
        And the user navigates to the message center
        And the user selects the "unread" filter in the dropdown
        When the user enters "Search by title" into the search bar
        And the user clicks the search button
        Then the notifications list should display only read notifications with the title containing "Search by title"
        And each displayed notification should have a status of "unread"
        And each displayed notification should have a title that includes "Search by title"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with all and search by date

        Given the user is logged into the application
        And the user navigates to the message center
        And the user selects the "All" filter in the dropdown
        When the user enters "Search by date" into the search bar
        And the user clicks the search button
        Then the notifications list should display only read notifications with the title containing "Search by date"
        And each displayed notification should have a status of "All"
        And each displayed notification should have a title that includes "Search by date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with read and search by date

        Given the user is logged into the application
        And the user navigates to the message center
        And the user selects the "read" filter option in the dropdown
        When the user enters "Search by date" into the search bar
        And the user clicks the search button
        Then the notifications list should display only read notifications with the title containing "Search by date"
        And each displayed notification should have a status of "read"
        And each displayed notification should have a title that includes "Search by date"
        And the total count of search results should be correctly displayedv in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with unread and search by date

        Given the user is logged into the application
        And the user navigates to the message center
        And the user selects the "unread" filter option in the dropdown
        When the user enters "Project Update" into the search bar
        And the user clicks the search button
        Then the notifications list should display only read notifications with the title containing "Search by date"
        And each displayed notification should have a status of "unread"
        And each displayed notification should have a title that includes "Search by date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with all and search by title with search by date

        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "Search by title" into the search bar
        And the user selects "All" from the status filter in the dropdown
        And the user enters "Search by date" into the date filter
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "All" and the date "search by date"
        And each displayed notification should have a title that includes "Search by title"
        And each displayed notification should have the date "search by date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with read and search by title with search by date

        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "Search by title" into the search bar
        And the user selects "read" from the status filter in the dropdown
        And the user enters "search by date" into the date filter
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "Search by title" and the date "search by date"
        And each displayed notification should have a title that includes "Search by date"
        And each displayed notification should have the date "search by date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the message center notification with unread and search by title with search by date

        Given the user is logged into the application
        And the user navigates to the message center
        When the user enters "search by title" into the search bar
        And the user selects "unread" from the status filter in the dropdown
        And the user enters "search by date" into the date filter
        And the user clicks the search button
        Then the notifications list should display only notifications with the title containing "Search by title" and the date "search by date"
        And each displayed notification should have a title that includes "Search by title"
        And each displayed notification should have the date "search by date"
        And the total count of search results should be correctly displayed in the notification

    @mobile @achievo @AchievoMessagecenter @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the notfications are shown in the message for days 'days' configurations

