Feature: Form Components

    # created by  = Kadarkarai Selvam
    # reviewed by =
    # updated by  =
    # updated on  = 10/09/2019

    # Formbuilder
    #   Components

    # ************************************Single line text************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the single line text can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        Then User can able to see one field type as Single line text

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple single line text can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        When Drop Single line text to the group
        Then User can able to see two field type as Single line text

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component single line text parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        Then User cannot able to edit field type
        Then User can able to see field Field name
        Then User can able to see field Label
        Then User can able to see field help text
        Then User can able to see field placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @negative @notreviewed @superadmin
    Scenario: Verify component Single line text can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        And User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Single line text can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Single line text can be edited
        Given Form is already created
        And User click on edit button on the created form
        When User click on the single line text component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component single line text can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Single line text to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the single line text component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component single line text can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the single line text component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @negative @notreviewed @superadmin
    Scenario: Verify the component single line text cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the single line text component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the single line text component in the preview


    # ************************************Check box************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the check box can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop check box to the group
        Then User can able to see one field type as check box

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple check box can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop check box to the group
        When Drop check box to the group
        Then User can able to see two field type as check box

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component check box parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop check box to the group
        Then User cannot able to edit field type
        Then User can able to enter value in field name
        Then User can able to enter value in Label
        Then User can able to enter value in help text

    @adminui @formbuilder @formcomponents @system @special @functional @negative @notreviewed @superadmin
    Scenario: Verify component check box can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop check box to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component check box can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the check box component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component check box can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the check box component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component check box can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop check box to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the check box component in the preview


    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component check box can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the check box component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component check box cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the check box component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the check box component in the preview

    # ************************************Radio button************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Radio Button can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User can able to see one field type as Radio Button

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Radio Button can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        When Drop Radio Button to the group
        Then User can able to see two field type as Radio Button

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Radio Button parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Radio Button can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Radio Button can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Radio Button can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Radio Button component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Radio Button can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Radio Button component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Radio Button can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Radio Button component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Radio Button cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Radio Button component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Radio Button component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component radio button without option
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User cannot add option

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component radio button with more than 2 options
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to add multiple options

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component radio button with 2 options having same value
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to add multiple options
        And User can able to add same label and value for multiple options

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component radio button by removing the option and verify the option is removed in preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Radio Button to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to add multiple options
        And User can able to remove the option
        And User cannot able to see the removed option in preview

    # ************************************Number************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Number can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        Then User can able to see one field type as Number

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Number can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        When Drop Number to the group
        Then User can able to see two field type as Number

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Number parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Number can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Number can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Number can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Number component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Number can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Number to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Number component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Number can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Number component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Number cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Number component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Number component in the preview

    # ************************************Button************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Button can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        Then User can able to see one field type as Button

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Button can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        When Drop Button to the group
        Then User can able to see two field type as Button

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Button for Dynamic parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        Then User can able to select Dynamic from Button Text
        Then User can able to enter text in Edit Text box
        Then User can able to enter text in Create Text box
        Then User can able to select button type
        Then User can able to enter in Button Colour
        Then User can able to enter in Text Colour

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Button for Static parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        Then User can able to select Static from Button Text
        Then User can able to enter text in Text box
        Then User can able to select button type
        Then User can able to enter in Button Colour
        Then User can able to enter in Text Colour

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Button can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Button can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Button component
        Then it should display the parameter and values
        When User update the value in Text box
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button with Button Type as Submit and verify the parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type as Submit
        And Configure the API
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button with Button Type as Reset and verify the parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type as Reset
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button by API Configuration as internal API
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type as Submit
        And Configure the Internal API
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button by API Configuration as External API
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type as Submit
        And Configure the External API
        And User selects from Button Action dropdown
        And User enter the value in Endpoint
        And User Adds the Header
        Then Enter the payload
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Button can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Button to the group
        And User selects from Button Text
        And User enter the value in Text box
        And User selects button type
        And User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Button component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Button component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Button cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Button component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Button component in the preview


    # ************************************Paragraph************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Paragraph can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        Then User can able to see one field type as Paragraph

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Paragraph can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        When Drop Paragraph to the group
        Then User can able to see two field type as Paragraph

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Paragraph parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder
        And User can able to enter value in Rows

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Paragraph can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Paragraph can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Paragraph can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Paragraph component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Paragraph can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Paragraph to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Paragraph component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Paragraph can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Paragraph component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Paragraph cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Paragraph component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Paragraph component in the preview

    # ************************************Password************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Password can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        Then User can able to see one field type as Password

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Password can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        When Drop Password to the group
        Then User can able to see two field type as Password

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Password parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Password can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Password can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Password can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Password component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Password can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Password to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Password component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Password can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Password component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Password cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Password component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Password component in the preview

    # ************************************Date Field************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Date Field can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Date Field to the group
        Then User can able to see one field type as Date Field

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Date Field can be added to the group

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Date Field parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Date Field to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Date Field can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Date Field to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Date Field can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Date Field to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Date Field can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Date Field component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Date Field can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Date Field to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Date Field component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Date Field can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Date Field component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Date Field cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Date Field component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Date Field component in the preview


    # ************************************dropdown*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the dropdown can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop dropdown to the group
        Then User can able to see one field type as dropdown

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple dropdown can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop dropdown to the group
        When Drop dropdown to the group
        Then User can able to see two field type as dropdown

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component dropdown can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop dropdown to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component dropdown can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop dropdown to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component dropdown can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the dropdown component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component dropdown can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop dropdown to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the dropdown component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the dropdown component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the dropdown component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the dropdown component in the preview

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown with static option
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Dropdown to the group
        When User selects  the static option
        Then User can able to see the add option
        When User click on add button in static option
        Then Text box Label and Value, Button Remove and Add should be displayed

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown with static option and adding values
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Dropdown to the group
        When User selects the static option
        Then User can able to see the add option
        When User click on add button in static option
        Then First set of Text box Label and Value, Button Remove and Add should be displayed
        And User can able to enter the label and value
        When User click on add button
        Then Second set of Text box Label and Value, Button Remove and Add should be displayed
        When user click on last remove button
        Then Second set of Text box Label and Value, Button Remove and Add should be removed

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown with dynamic option
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Dropdown to the group
        When User selects the dynamic option
        Then User can able to see the add option
        When User click on add button in dynamic option
        Then Text box API endpoint and Headers add button should be displayed
        When User click on add button in headers for dropdown
        Then Text box label and Value, Button Remove and Add should be displayed

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component dropdown with dynamic option and adding headers
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Dropdown to the group
        When User selects the dynamic option
        Then User can able to see the add option
        When User click on add button in dynamic option
        Then Text box API endpoint and Headers add button should be displayed
        When User click on add button in headers for dropdown
        Then Text box label and Value, Button Remove and Add should be displayed
        When User click on add button in headers for dropdown
        Then Second set of Text box Key and Value, Button Remove and Add should be displayed
        When user click on last remove button
        Then Second set of Text box Key and Value, Button Remove and Add should be removed

    # ************************************File Upload*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the File Upload can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        Then User can able to see one field type as File Upload

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple File Upload can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        When Drop File Upload to the group
        Then User can able to see two field type as File Upload

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component File Upload parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component File Upload can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component File Upload can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component File Upload can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the File Upload component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component File Upload can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop File Upload to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the File Upload component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component File Upload can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the File Upload component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component File Upload cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the File Upload component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the File Upload component in the preview

    # ************************************Auto Complete*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Auto Complete can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        Then User can able to see one field type as Auto Complete

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Auto Complete can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When Drop Auto Complete to the group
        Then User can able to see two field type as Auto Complete

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Auto Complete parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Auto Complete can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Auto Complete can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Auto Complete can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Auto Complete component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Auto Complete can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Auto Complete component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Auto Complete component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Auto Complete component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Auto Complete component in the preview

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete and select static options and Add the label and value
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When User selects  the static option
        Then User can able to see the add option
        When User click on add button in static option
        Then Text box Label and Value, Button Remove and Add should be displayed
        When User enter the label and value
        When User click on add button
        Then User can able to see the label and value in the list

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete and select static options and remove the label and value
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When User selects  the static option
        Then User can able to see the add option
        When User click on remove button in static option and verify it is removed

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete and select dynamic options and Add the label and value
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When User selects the dynamic option
        Then User can able to see the add option
        When User click on add button in dynamic option
        Then User enters value in API Endpoint
        When User click on add button in headers for Auto Complete
        Then Text box label and Value, Button Remove and Add should be displayed
        When User enter the label and value
        When User click on add button
        Then User can able to see the label and value in the list

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Auto Complete and select dynamic options and remove the label and value
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Auto Complete to the group
        When User selects the dynamic option
        Then User can able to see the add option
        When User click on remove button in dynamic option and verify it is removed

    # ************************************Range Picker*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Range Picker can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        Then User can able to see one field type as Range Picker

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Range Picker can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        When Drop Range Picker to the group
        Then User can able to see two field type as Range Picker

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Range Picker parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Range Picker can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Range Picker can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Range Picker can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Range Picker component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Range Picker can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Range Picker to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Range Picker component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Range Picker can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Range Picker component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Range Picker cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Range Picker component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Range Picker component in the preview

    # ************************************Field Array************************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Field Array can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        Then User can able to see one field type as Field Array

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Field Array can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        When Drop Field Array to the group
        Then User can able to see two field type as Field Array

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Field Array parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And Add Fields by click on Add Fields button

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Field Array can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Field Array can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Field Array can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Field Array component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Field Array can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Field Array component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Field Array can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Field Array component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Field Array cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Field Array component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Field Array component in the preview

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Field Array by click on Add Field button
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        When user enter the value in field name
        And User click on Add Field button
        Then User can able to see the Field Array component in the preview

    @adminui @formbuilder @createform @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Field Array by click on Remove Field
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Field Array to the group
        When user enter the value in field name
        And User click on Remove Field button
        Then User cannot able to see the Field Array component in the preview


    # ************************************RAW HTML*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Raw HTML can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        Then User can able to see one field type as Raw HTML

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Raw HTML can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        When Drop Raw HTML to the group
        Then User can able to see two field type as Raw HTML

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Raw HTML parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Raw Html

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Raw HTML can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Raw HTML can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Raw HTML can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Raw HTML component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Raw HTML can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Raw HTML to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Raw HTML component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Raw HTML can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Raw HTML component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Raw HTML cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Raw HTML component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Raw HTML component in the preview


    # ************************************Currency*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Currency can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        Then User can able to see one field type as Currency

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Currency can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        When Drop Currency to the group
        Then User can able to see two field type as Currency

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Currency parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Currency can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Currency can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Currency can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Currency component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Currency can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Currency to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Currency component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Currency can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Currency component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Currency cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Currency component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Currency component in the preview


    # ************************************Image*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Image can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        Then User can able to see one field type as Image

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Image can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        When Drop Image to the group
        Then User can able to see two field type as Image

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Image parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Image can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Image can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Image can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Image component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Image can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Image to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Image component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Image can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Image component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Image cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Image component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Image component in the preview

    # ************************************Address*****************************************************

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the Address can be added by drag and drop to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        Then User can able to see one field type as Address

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify multiple Address can be added to the group
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        When Drop Address to the group
        Then User can able to see two field type as Address

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Address parameters
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        Then User cannot able to edit field type
        And User can able to enter value in field name
        And User can able to enter value in Label
        And User can able to enter value in help text
        And User can able to enter value in placeholder

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Address can be saved without Field Name
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        When User click on save button
        Then User can able to see the error message as Field Name is required

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Address can be added
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        And user enter the value in field name
        And User click on save button
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Address can be edited
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Address component
        Then it should display the parameter and values
        When User update the value in field name
        Then User can able to see the saved successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify component Address can be saved and displayed in the form preview
        Given Navigate to form builder
        Given Create a form
        When Create a group
        When Drop Address to the group
        When user enter the value in field name
        When User click on save button
        Then User can able to see the saved successfully message
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User can able to see the Address component in the preview

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Address can be deleted by clicking on the delete this field button
        Given Form is already created
        When User click on edit button on the created form
        When User click on the Address component
        When user click on delete this field button
        Then User can able to see the deleted successfully message

    @adminui @formbuilder @formcomponents @system @special @functional @positive @notreviewed @superadmin
    Scenario: Verify the component Address cannot be displayed in the form preview when it is deleted
        Given Form is already created
        When User already deleted the Address component
        When User navigate to Form Data
        When User selects the formname in dropdown
        Then User cannot able to see the Address component in the preview


