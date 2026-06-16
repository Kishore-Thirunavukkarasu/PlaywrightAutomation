Feature: Promotions creation and workflow
    Create a new promotion and validate the workflow of the promotion
    # This is a older version of the promotion workflow.

    Background:
        Given : User is on the promotions page

    #Communication
    Scenario: Navigation to communication tab and the default value is disabled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be disabled and click on submit button
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Goal achieved tab is can be enabled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion launch remainder can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion launch remainder can be disabled and click on submit button
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder can be set for the promotion launch and check the remainder is triggered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder start date and end date can be set from the calendar
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder start date cannot be a past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder end date cannot be a past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder start date cannot be greater than end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder end date cannot be less than start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion launch remainder can be disabled and check the remainder is not triggered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion launch remainder value cannot be greater than the start date and end date duration
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion launch remainder trigger every having more than one month whereas start and end date having less than one month
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiring trigger every having more than one month whereas start and end date having less than one month
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion launch remainder cannot be lesser than promotion end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion launch remainder end date is before promotion start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion launch remainder start date is after promotion start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiring remainder end date is before promotion start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiring start date is after promotion start dat
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiring can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiring can be disabled and click on submit button
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: remainder can be set for the promotion expiring and check the remainder is triggered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiry remainder start date and end date can be set from the calendar
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiry remainder start date cannot be a past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiry remainder end date cannot be a past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiry remainder start date cannot be greater than end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: promotion expiry remainder end date cannot be less than start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion expiring remainder can be disabled and check the remainder is not triggered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Point deposit based on league position can be enabled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Custom notification can be enabled and fields can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: custom notification can be disabled and click on submit button
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: multiple custom notification can be added

    #What are the custom notification fields and where we are getting it?

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: user can navigate to next page after entering the communication details

    #Admin Promotion config for Multiple Measure
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Admin promotion configuration page is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion Duration, Audience added are displayed in Service Managers Guide page
    #Which Audience should come here? Whether Eligible or Reporting audience
    #If it is not published means what are all the other status?

    #Data
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Data Page and can able to Add Data by clicking on Create View button
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Create view page and user can able to enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table can be selected from the list
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Multiple tables can be selected and added

    #Need to verify the mouseover or click to get the details of the table overlay?

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table can be searched by entering the name in the search box
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Table can be added by Uploading the file
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: selected table can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table can be removed from the list
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Select Table can be cancelled and check the selected table is not added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Selected table can be displayed in the Create view page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Tables can be Expanded
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Tables can be Collapsed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table can be deleted
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table name multiple tables can be added
    #----------------------------------------------------------------------------------------------------

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Tables can be added to View table by drag and drop
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Add all and check all the columns are added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the added column name can be edited and updated

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Columns can be added and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Table Column name can be edited and displayed along with Original name

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Total Rows in the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Multiple columns can be added to the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Multiple Columns can be added from Multiple Tables
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Columns can be deleted

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Original method can be selected and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Calculated method can be selected and console is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Calculated method can be selected and enter the formula in console and verify it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Console can be cleared and enter the formula in console and verify it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Console formula can be copied

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Enable the filters and add the filters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Filters can be deleted from the column
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Multiple filters can be added to the column

    # Need to write Join Column Scenario and Enhance the filter scenario

    # What are the different values present in the filter data set. e.g. where >= promotion start date
    # Why Join Column is for there for specific tables and why it is not there for all the tables?
    # What is original and what is calculated method?
    # On What criteria join column will come in the ui. In UX some pages are having join column and some are not. !? E.g. desktop 527 - > brand table having the join column section

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Join columns by selecting them from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Two columns can be joined with the condition
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify joining the columns with the multiple conditions
        Examples:
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify creating a table with multiple columns manually

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Data added can be displayed in the Data page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Created table can be deleted from the Data page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Created table can be previewed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Created table file can be Downloaded as Excel

    # Downloading file format should be .csv or .xlsx?

    #Measure
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure can be searched by entering the name in the search box
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: New Measure can be created
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the list of Measures
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be Published without adding the Measure
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the promotion measure page without any measure

    #what is the expected result

    #Measure Info
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info page and enter the mandatory fields
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info without entering the mandatory fields
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info configured with multiple languages
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with changing the duration

    # can we change the measure duration and is meausre duration is same as promotion start date and end date

    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Measure Info with changing the duration of start date and end date
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Measure Info with changing the duration with start date greater than end date
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Measure Info with changing the duration with end date less than start date
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Measure Info with changing the duration with start date as past date
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Measure Info with changing the duration with end date as past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info without Bill Code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with Primary Bill Code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info without Primary Bill Code with secondary bill code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with Secondary Bill Code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info without Secondary Bill Code and with primary bill code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with expired Bill Code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with invalid Bill Code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info without Promotion Creative
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with adding the media in Promotion Creative
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info by selecting the wrong resolution in promotion creative
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info with Editing the Promotion Creative Media
    # What is the edit option hover on the Added media?
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info can be saved and navigated to Measure Rules page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info page can be navigated to Rules page without saving the Measure Info
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Info can be cancelled and check the Measure is not created

    #Measure Rules
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rules and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rules can be navigated to Payout page without entering the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measerure rule to payout without entering mandatory parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rule Type values to be verified
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rule with Selecting the Table

    # Applying rule to the table means what will happen for different rule type !?

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rule with Entering Refresh Schedule with valid values
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rule with Entering Refresh Schedule with invalid values

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rule with Reward Conditions and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Type can be selected as Target on value
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Type cannot be selected as Target on Quantity
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Sales Achievement Level can be selected as participant
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Sales Achievement Level can be selected as organization
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Claim Methods can be Selected as Import Total Sales
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Claim Methods can be Selected as Sales Claim
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Participants Rule can be added and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Manager Rule can be added and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with If Condition and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Condition with start vale and end value
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Condition with multiple expressions
    Example:
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with Reward as Static and add the Rule
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with Reward as Dynamic and enter tha parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with Reward as Dynamic and enter the Percentage
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with Reward as Dynamic and add the function
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be cancelled and check it is not added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Participants Rule can be added multiple times
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Participants Rule can be deleted
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Participants Rule can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Manager Rule can be added multiple times
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Manager Rule can be deleted
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Manager Rule can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Tier Bonus can be enabled and enter the parameters

    #What are the fields in the tier bonus
    # What is Rules and Reward

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be saved and navigated to Payout page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Measure Rules cannot be navigated to Payout page before saving it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be cancelled and check the Rule is not added

    #Measure Payout
    #How we can select the payout column?
    # Are we going to have anything as payable or non payable reward or if the column selection will take care of that business validation
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout column is displayed and reward can be selected from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description can be entered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Show Payout checkbox and check the Payout column is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout column is not displayed when Show Payout checkbox is unchecked
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Trigger and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout is triggered when the Payout Trigger is set
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is future date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is lesser than Payout Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is feature date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is greater than Payout Schedule Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: payout process schedule greater than promotion end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be saved and navigated to the Approver Settings page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout cannot be navigated to Approver Settings page without saving it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be cancelled and check the Payout is not added
    #Promotion end date and payout end date

    #Measure Approver Settings
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver Settings page is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver organization can be selected
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Participants organization can be selected and save the Approver Settings
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver Organization can be selected manually
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver Hierarchy and level can be selected from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver settings can be saved and navigated to the Dashboard page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver settings can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver settings can be cancelled and check the settings are not added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Approver settings cannot be navigated to Dashboard page without saving it

    #Measure Dashboard
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Saveing Measure without Configuring the Dashboard
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Saving Dashboard without adding the widget
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard widget can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: multiple widgets can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets by configuring the properties

    #What are the types of Widgets and its properties?

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget can be configured and viewed in Mobile View
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget can be configured and viewed in Web View
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be saved and navigated to the Dashboard page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard cannot be navigated to Dashboard page without saving it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be cancelled and check the Dashboard is not added
    #Measure Communication

    #What are the communication types can come under each rule?
    # Eg: Target vs achievement update?
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by setting the trigger in days
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by setting the trigger in hours
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by setting the trigger in months
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by start date and end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by start date greater than end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by end date less than start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by start date cannot be past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League Position by end date cannot be past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement can be enabled and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by setting the trigger in days
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by setting the trigger in hours
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by setting the trigger in months
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by start date and end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by start date greater than end date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by end date less than start date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by start date cannot be past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Target Achievement by end date cannot be past date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be saved and published
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication cannot be published without saving it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Communication can be cancelled and check the Communication is not added

    #Payout
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: payout rule can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: payout rule can be searched by organization code
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule type can be same as given in Measures
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rules can be displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rules can be deleted
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rules can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rules can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout column name and select the value from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description Table can be selcted from the Dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description Table Column can be selected from the Dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description Table Column description can be entered from the Dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description Table Column can be added multiple times
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Bank Description Table Column can be deleted
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Show Payout checkbox and check the Payout column is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is feature date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is lesser than Payout Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is feature date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is greater than Payout Schedule Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule with If Condition and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Condition with start vale and end value
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Condition with multiple expressions
    Example:
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Field can be selected from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Field can be searced by entering the name in the search box
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: string functions and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: advanced functions and enter the parameters
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Pay and select the type from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Pay as fixed and enter the value in the textbox
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Pay with selecting the metric value from the dropdown
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be added and displayed in the list
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Rule can be cancelled and check the Rule is not added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be submitted and displayed in the Payout page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be delete from the Payout page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout can be edited from the Payout page

    #Dashboard is same as the Measure Dasboard

    #Reports

    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Report configuration can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Report configuration can be searched by entering the name in the search box
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Report configuration can be added multiple times
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Report configuration can be deleted

    #Publish
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be published
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be published without completing the configurations
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be publish and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be cancelled and saved as draft
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be viewed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be Unpublished after publishing it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be deleted after publishing it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Promotion can be deleted after saving it as draft

    #Data
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Data sample can be previewed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Data sample can be downloaded

    #Rules-Target File
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file can be uploaded
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file can be uplaoded from the file explorer
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file can be uploaded by drag and drop
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file template can be downloaded
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file upload can be cancelled while uploading and check the file is not uploaded
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file cannot accept format other than csv file
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file can be uploaded and displayed as a table
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Total rows and columns matches the file records
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file is uploaded and submitted
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file can be deleted after uploading it
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: file is uploaded and displayed in the Rules page
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: file can be previewed from the Rules page
    # @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    # Scenario: Target file Total Records matches the uploaded file records

    #Rules is same as the previous one
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify Payout can be edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout column can be Viewed and edited
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Bank description detals can be entered
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is feature date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Schedule date is lesser than Payout Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is set and it is displayed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is feature date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Payout Date is greater than Payout Schedule Date
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard widget can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: multiple widgets can be added
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets by configuring the properties
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets by configuring the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets cannot be configured with multiple tables
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets by configuring the columns from the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets by adding multiple columns from the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Custom Name can be entered for the column
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widgets cannot be configured with the same column
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget Configuration by deleting the columns
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget Configuration by changing the table
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget can be configured and viewed in Mobile View
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Widget can be configured and viewed in Web View
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be saved and navigated to the Dashboard page
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be saved and cancelled
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard cannot be navigated to Dashboard page without saving it
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Dashboard can be cancelled and check the Dashboard is not added

    #Execution Logs
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Total Computed Points
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Total Banked Points
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: League name can be searched by entering the name in the search box
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Batch ID, Queue ID, Measure ID, Transactuins, Errors, Computation Status, Banking Status
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Computation Status can be Viewed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Banking Status can be Viewed
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the File can be downloaded

    #Single Measure
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Single Measure can be created
    @adminui @promotions @promotions @navigation @special @functional @positive @notreviewed @superadmin
    Scenario: Create Single Measure Promotion Page is despalyed and Validate Basic Details, Audience, Rules, Payout, Approver Settings, Dashboard

#Continue with the Basic Details

