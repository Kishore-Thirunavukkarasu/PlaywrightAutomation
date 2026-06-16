Feature: Content management system

    # created by  = Ruthrakanth
    # reviewed by =
    # updated by  =

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to configure the content in strapi and verify the content in the platform site
        When Admin user login to the Strapi admin console
        When Admin user creates a new token in the Strapi Admin
        When Get the strapi token and save them in a valid data
        When Strapi Admin logout
        When Admin User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When Add the cms config to tenant
        Then "Successful" message shown up


    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a Mini contents in strapi

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can successfully add a new paragraph in strapi

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can successfully edit existing paragraph in strapi

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can delete a Paragraph content

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the added paragraph content is dynamically included on the specified pages

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that paragraph content is displayed on the specified pages as configured in the phoenix admin console

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a FAQ page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a message page in strapi

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user is able to limit the Content via Phoenix admin so that it can be displayed in various pages

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to limit the paragraphs via Phoenix admin so that it can be displayed in various pages


    @api @contentManagement @CMS002ApiIntegration @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a new paragraph can be successfully stored in Strapi via an API call

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a new content can be successfully stored in Strapi via an API call

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an existing paragraph can be successfully updated via an API call

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an existing content can be successfully updated via an API call

    @api @contentManagement @CMS002ApiIntegration @system @get @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that paragraph content can be retrieved via an API call

    @adminui @contentManagement @CMS002ApiIntegration @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that stored and updated paragraph content is consistent across different platforms

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the API call fails when required fields are missing

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the API call fails when data is provided in an invalid format

    @api @contentManagement @CMS002ApiIntegration @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the API call fails when unauthorized access is attempted

    # @api @contentManagement @CMS002ApiIntegration @system @post @functional @negative @notreviewed @superadmin @updated @notautomated
    # Scenario: Verify that the API is secure against injection attacks



    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can access existing mini content paragraphs in the Strapi admin console

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can successfully translate a mini content paragraph present in Strapi to another language

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether all the languages that are configured by admin in Strapi are available under Locale

    # Need to be modified according to the program

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin is able to select & translate mini content paragraph present in Strapi to any languages available under Locale

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the translated content can be retrieved correctly

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the mini content/paragraphs gets translated properly without any issues

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can edit the translated content of a mini content paragraph

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether Phoenix admin can configure the platform site in which the translated content should get displayed

    @adminui @contentManagement @CMS003TranslateContentinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user can configure the menus/sections in the phoenix admin where the translated content should be displayed in the platform site

    # UTF encoding

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the application successfully fetches all labels from Strapi

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an update made in Strapi labels is reflected in the Platform application without redeployment

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the application fetches the latest labels from Strapi when user logins into platform website

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the labels are consistently fetched and displayed correctly across different user sessions

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the application fetches labels from Strapi when user selects different language from the Locale

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message shown on the application , when strapi is down

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the lables shown in the platform application gets updated correctly when admin changes the label in Strapi

    #  add test cases related to translate from Platform & achievo

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that multiple instances of the application fetch and display consistent label data from Strapi
        When Start multiple instances of the platform application
        Then Each instance fetches labels from Strapi

    @adminui @contentManagement @CMS004DynamicLabelfetching @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify update in the label is reflected in platform website and mobile application without deployment

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add new Languages in the Strapi Admin site

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the added languages are displayed under Locale

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can add translations for a label in multiple languages

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that translated labels are correctly retrieved and displayed in the platform application

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the language configuration in the admin site within strapi

    # Cover all the scenarios in Mobile application

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the translation for the labels can be done in strapi

    @adminui @contentManagement @CMS005TranslateLabelsinStrapi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the translated label appear in platform site without any issues

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin is able to create new Communication content for various communication channels in Phoenix admin site

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for sms in admin site

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for email notifications in admin site

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for mobile push notifications in admin site

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that all the communication content created in Phoenix admin is successfully pushed to Strapi

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a user can update existing communication content in Phoenix and push the updates to Strapi

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a user can delete communication content in Phoenix and this gets reflect in Strapi

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the content pushed from Phoenix is correctly displayed in Strapi

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the system prevents pushing communication content with missing required fields to Strapi

    @adminui @contentManagement @CMS006SetupCommunicationContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the communication content created in admin site is still retained in strapi

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a message/paragrapgh can be accurately translated into the target language

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a text message containing special characters can be accurately translated

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that a long paragraph can be accurately translated into the target language

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the contents are completely translated into the target language without any issues

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether there are no words/letters displayed in the source language after translating it to target language

    @adminui @contentManagement @CMS007TranslateCommunicationContent @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the translated paragraphs are correctly displayed in the applications as per the configuration made in the Admin portal

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user is able to Create message page content successfully

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user is able to update message page content successfully

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether created message page content gets displayed in the selected locale successfully

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to delete the message content page

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the changes made in the Strapi are reflected in the Platform without re-deployment

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to see the list of all message contents created in Strapi

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message is displayed for creating message page with invalid values (With empty, single space)

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message is displayed for duplicate message contents

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @negative @notreviewed @contentadmin @updated @notautomated
    Scenario: Verify whether the content admin can access the Message page in Strapi

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @negative @notreviewed @contentadmin @updated @notautomated
    Scenario: Verify whether the content admin can create/update the Message page in Strapi

    @adminui @contentManagement @CMS008ManageMessagePages @system @delete @functional @negative @notreviewed @contentadmin @updated @notautomated
    Scenario: Verify whether the content admin can delete the Message page in Strapi

    @adminui @contentManagement @CMS008ManageMessagePages @system @delete @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether the super admin can delete the Message page in Strapi

    @adminui @contentManagement @CMS008ManageMessagePages @system @delete @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message when user tries to delete the message page which is used in platform site

    @adminui @contentManagement @CMS008ManageMessagePages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the message when user tries to delete the message page which is not used in platform site

    # audience part needs to be added

    # Needs to be continued from here

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to Successfully create a new page with program information

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verfy user is able to add promotion-specific details to a new page

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to update the existing page with new information

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to add multimedia content to the new page

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to create a new page with text without using any multimedia

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to create a new page with both text and multimedia content

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user is able to delete the page created with promotion-specific details

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to delete the page created with promotion-specific details which is rendering in platform site

    @adminui @contentManagement @CMS009ConfigureNewPages @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify whether user is able to delete the page created with Program information which is rendering in platform site

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can translate the main content of a page in strapi

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can translate individual components of a page in strapi

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the translated page is rendered on the Platform as per the configuration done in admin site

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can delete an existing translation for a page and its components which is not rendered in platform site

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that an admin can delete an existing translation for a page and its components which is rendered in platform site

    @adminui @contentManagement @CMS010TranslatePages @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that the translated content displayed in platform is same as it is in the strapi

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that communication content can be successfully stored in Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that communication content can be successfully retrieved from Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that promotion content can be successfully retrieved from Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that promotion content can be successfully stored in Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that content in other categories can be successfully stored in Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that content in other categories can be successfully retrieved from Strapi via API

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that retrieving non-existent content returns an appropriate error

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that unauthorized users cannot store or retrieve content
    #   Send a POST request to the Strapi API endpoint without proper authentication
    #   Send a GET request to the Strapi API endpoint without proper authentication
    #   Both the cases should throw error message

    @adminui @contentManagement @CMS011ContentStorage @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that storing content with duplicate values for unique fields fails

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verfiy the pre-build components in strapi (label ,mini contents)


    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the labels,contents with components in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a Article-content page with category strapi
    ##Faq,news, message page

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a Promotion page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a Page in strapi
    ## about page , rewards page

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a Category page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create article in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the cretaed content page in strapi is shown in the experience studio - content session

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the cretaed home page in strapi is shown in the experience studio - home page

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify video content view in mobile

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify audio content view in mobile

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify table content view in mobile

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify link content view in mobile

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify video content can able to configure in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify audio content can able to configure in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify link and hyperlink can able to configure in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a communication page with paragraph in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to create a hub page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to update a content page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admin user can able to update all the pages in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the intergration between the admin site and strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content after the intergration into strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the update in content page in strapi after the integration with the admin,check platform site for the updated content page

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content translation from strapi to platform site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the mobile after integration between the admin site and strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all pages with the translations (multiple languages) from strapi to platform site

    #dynamic label fetching from strapi

    #Translate Labels in Strapi

    #Setup Communication Content in Phoenix


    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for message center notifications in admin site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all communication content is shown in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the communication content is pushed in strapi

    #Translate Communication Content in Strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for sms is translated in strapi and reflected correctly with the configured language in the platform site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for email notifiation is translated in strapi and reflected correctly with the configured language in the platform site for the users

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for mobile push notifications is translated in strapi and reflected correctly with the configured language in the platform site for the users

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the communication content for message center is translated in strapi and reflected correctly with the configured language in the platform site for the users

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the communication content is translated in strapi and reflected correctly with the configured language in the platform site for the users

    #Manage Message Pages in Strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create the message page with text in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create the message page with image and text in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create the message page with image,text,special char in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit the message page in the strapi with the content

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Update the message page in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the alignment of the message page text in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Translation for the message page for all the languages

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create the message page with text content in french langauge in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: The configuration of message pages that include elements like a teaser image, teaser text, banner, and message content

    #Configure New Pages in Strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-up and Configure a new page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-Up a Program information in a new page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-Up Promotion Specfic Information in a new Page in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-Up and Configure the new content pages in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-Up and configure the new component in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-Up and configure the new module in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Set-up and configure the new catagory in strapi

    #Import & Export Translations in Strapi and Phoenix

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import of the translation data in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the export of the translation of data in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import and export in the CSV Format in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import of label and content in the CSV Format

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify updating the import file with change in the content and label

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import of the translation data in the admin site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the export of the translation data in the admin site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the download of the export file from strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import and export in the CSV Format in admin site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the download

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the validation of the CSV file data to ensure and match with the expected results

    #Content preview

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Content pre-view in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Content pre-view in the admin site

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content pre-view in platform website before publishing the content

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content pre-view in the mobile view before publishing the content

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the pages can be pre-viewed

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content can be pre-viewed and saved, but do not publish the content

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify content in not published, See how it is reflected in web and mobile

    # Acceptance Test Cases
    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can create content page with multiple paragraph text

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can create content page with images embedded to the page

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can create content page with combination of image and text

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content in Strapi can be added/updated using api calls

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the content is available for translation in the Strapi admin

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can manage the existing labels/text/user messages in web/mobile app

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user can manage the labels/text/user messages at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify any components/widgets built in can be managed at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify any dashboards created at the promotion level and available for display to participant can be managed

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the email content can be managed by the CMS at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the email content can use variables at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the sms message along with variables can be managed by the CMS at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the articles with image, banner can be managed by the CMS at the program level

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the article image/banner can be setup differently for different languages

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the translations can be added to all the contents managed from the CMS

    #content Migration
    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify any content is transferred (moved) from one tenant to another tenant

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify any content is transferred (moved) from one environment to another environment

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify any content is moved from dev environment to Qa environment

    #Pre-built template

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify cms page can be created in the strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify cms page with pre-build template with text in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify cms page with pre build template with images in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the cms with pre build template with text and images in strapi

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the existing cms page can be converted into the pre build template tect

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the pre build pages will be responsive in the website

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the pre build template will be resposive in mobile

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the pre-build template

    @adminui @contentManagement @CMS @navigation @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify all the pre build template with text and images






    #----------------------------------------------------------Deferred----------------------------------------------------------#

    Scenario: Verify bold text content view in mobile
    Scenario: Verify italic text content view in mobile
    Scenario: Verify underline text content view in mobile
    Scenario: Verify strike through text content view in mobile
    Scenario: Verify ordered list content view in mobile
    Scenario: Verify unordered list content view in mobile
    Scenario: Verify code content view in mobile
    Scenario: Verify left alignment content view in mobile
    Scenario: Verify center alignment content view in mobile
    Scenario: Verify right alignment content view in mobile
    Scenario: Verify justify alignment content view in mobile
    Scenario: Verify image content view in mobile
    Scenario: Verify image content added inline with the text
    Scenario: Verify image, text content view in mobile
    Scenario: Verify video content view in mobile
    Scenario: Verify audio content view in mobile
    Scenario: Verify table content view in mobile
    Scenario: Verify link content view in mobile
    # Scenario: Verify blockquote content view in mobile
    Scenario: Verify horizontal line content view in mobile
    Scenario: Verify heading content view in mobile
    Scenario: Verify subheading content view in mobile
    Scenario: Verify paragraph content view in mobile
    Scenario: Verify text color content view in mobile
    Scenario: Verify text background color content view in mobile
    Scenario: Verify text size content view in mobile
    Scenario: Verify text font content view in mobile
    Scenario: Verify text style content view in mobile
    Scenario: Verify text indent content view in mobile
    Scenario: Verify More than one column content view in mobile
    Scenario: Verify the content view with different language and content are present for that language
    Scenario: Verify the content view with different language and content are not present for that language
    Scenario: Verify the content view by user present in assigned static audience group
    Scenario: Verify the content view by user present in assigned dynamic audience group
    Scenario: Verify the content view by user who is not present in the assigned audience group
    Scenario: Verify the content view by user who is present in the assigned audience group and also in the other audience group
    Scenario: Verify the content view by user who is present in the assigned audience group and is present in excluded user list
    Scenario: verify the content view by anonymous user
    Scenario: Verify the content view by user who is not present in the assigned audience group and is present in excluded user list
    # acceptance
    Scenario: Verify the user can create content page with multiple paragraph text
    Scenario: Verify the user can create content page with images embedded to the page
    Scenario: Verify the user can create content page with combination of image and text
    Scenario: Verify the content in Strapi can be added/updated using api calls
    Scenario: Verify the content is available for translation in the Strapi admin
    Scenario: Verify the user can manage the existing labels/text/user messages in web/mobile app
    Scenario: Verify the user can manage the labels/text/user messages at the program level
    Scenario: Verify any components/widgets built in can be managed at the program level
    Scenario: Verify any dashboards created at the promotion level and available for display to participant can be managed
    Scenario: Verify the email content can be managed by the CMS at the program level
    Scenario: Verify the email content can use variables at the program level
    Scenario: Verify the sms message along with variables can be managed by the CMS at the program level
    Scenario: Verify the articles with image, banner can be managed by the CMS at the program level
    Scenario: Verify the article image/banner can be setup differently for different languages
    Scenario: Verify the translations can be added to all the contents managed from the CMS
    # workpackage document
    Scenario: Verify if user can enable Points Summary widget in the content page
    Scenario: Verify if enabling points summary can be able to see in mobile device
    Scenario: Verify if enabling points summary can be able to see in web application
    Scenario: Verify if new page can be created and added in the menu
    Scenario: Verify if labels can be added to the page
    Scenario: Verify if promotion paragraph can be created as a content from admin
    Scenario: Verify if communication content can be created
    Scenario: Verify if one or more pages can be combined to create a new page
    Scenario: Verify if one or more content can be combined to create a new page

