Feature: SSO Login for the platform site


    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    # ******************************************************************************

    Background: Verify valid user can login to admin
        Given I am on the admin login page
        When I enter valid username and password
        And I click on the login button
        Then I should be logged in successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure OAuth for a tenant
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then connector should be created successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can configure OpenID for a Tenant
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then connector should be created successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can update the OAuth Configuration and parameters

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can update the OpenID Configuration and parameters

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create a connector without name
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then should show the error message in connector overlay

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create a connector by enabling it
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then connector should be created successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create a connector by disabling it
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user disables the connector
        When user enter the valid image path
        When user click on the save button
        Then connector should be created successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create a connector without a form
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then should show the error message in connector overlay

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can create a connector without image
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the add connector button
        Then connector form should be displayed
        When user enter the connector name
        When user enter the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user click on the save button
        Then connector should be created successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @list @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can view the list of connectors
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @search @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can search for a connector
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user enter the connector name in the search box
        Then user should see the connector in the search results

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can update a connector
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the edit icon of a connector
        Then connector form should be displayed
        When user update the connector name
        When user update the connector description
        When user select the group as "SSO"
        When user select a form
        When user enables the connector
        When user enter the valid image path
        When user click on the save button
        Then connector should be updated successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can delete a connector
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the delete icon of a connector
        Then user should see the confirmation dialog
        When user click on the delete button in the confirmation dialog
        Then connector should be deleted successfully

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user can update a connector without name
        When user navigate to the SSO configuration page
        Then user can able to view the list of connectors
        When user click on the edit icon of a connector
        Then connector form should be displayed
        When user update the connector description
        When user removes the connector name
        When user click on the save button
        Then should show the error message in connector overlay

    @adminui @sso @SSO001ConfigureOAuthOpenID @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario:

    # ******************************************************************************


    Scenario: Verify the user can connect to platform portal using OpenID connect - SSO Login

    Scenario: Verify the user can logout from platform portal using OpenID connect - SSO Login

    Scenario: Verify the user can logout from platform portal using OAuth - SSO Login

    Scenario: Verify the login session has expired/Token invalidated once the user logout from platform site using SSO Login

    Scenario: Verify the user receives an error message when the SSO Login fails with invalid credentials

    Scenario: Verify the Platform site handles timeout for the SSO Login

    Scenario: Verify the session remains active across different pages using SSO Login

    Scenario: Verify the deleted user can able to login

    Scenario: Verify the Locked user can able to login

    Scenario: Verify the inactive user can able to login

    Scenario: Verify the SSO Login details are logged and tracked

    Scenario: Cancels the SSO Login redirects to login page

    # User AGENT->Browser->SP->IDP->SAML Auth->SP->SAML Req->IDP->saml assertion->SP
    # IDP->IDENTITY PROVIDER-->Microsoft, google authenticator
    # SP->SERVICE PROVIDER...The application which we want to access

    # SAML->Protocall used to exchange auth data between DSP and SP

    # IDP Created SAML assertion
    # SAML assertion has name, email, roles, permission.


    #SAML

    Scenario: Verify the platform site redirects to the IDP for SAML authentication

    Scenario: Verify the user can able to provide the credentials to IDP for SAML authentication

    Scenario: Verify the SAML authentication request is not generated for invalid credentials

    Scenario: Verify the SAML authentication request contains the necessary details including user authentication request parameters

    Scenario: Verify the platform site receives the SAML authentication request after the user is redirected back to from the IDP

    Scenario: Verify the IDP system generates a valid SAML assertion containing user information

    Scenario: Verify the SAML assertion is encrypted and digitally signed by IDP

    Scenario: Verify the SAML Request send back to Platform site with encrypted SAML assertion

    Scenario: Verify the SAML assertion is received and decrypted by the platform site

    Scenario: Verify the user can authenticate using the SAML assertion with IDP Signature

    Scenario: Verify the user can login to platform site without re-entering the credentials

    Scenario: Verify the session token expires when any error occurs during the SAML assertion

    Scenario: Verify the SAML assertion provided by the IDP is valid and not expired

    Scenario: Verify the SAML assertion is not exposed anywhere in the platform site


    #OAUTH

    # authorization server- IDP

    #            User->SP->IDP->Enter Credentials->Access Token->Platform Site->Access Toke with Client Credentials->IDP Endpoint->
    #            ->Issue Access Token to SP->SP use that access token and req to IDP and get the profile Info->Login


    Scenario: Verify the user redirects to the authorization server when trying to access SSO Login using OAuth

    Scenario: Verify the user can provide the valid credientials to the authorization server for OAuth

    Scenario: Verify the user receives the error message when login with invalid credentials for OAuth

    Scenario: Verify the user is redirected to platform site after successful login with OAuth

    Scenario: Verify the access token is generated by the authorization server and received by the platform site after entering the credentials

    Scenario: Verify the access token is not generated by the authorization server for invalid credentials

    Scenario: Verify the access token is sent to the authorization server along with the client credentials to get the user profile information

    Scenario: Verify the access token is validated by the resource server before granting access to the protected resources

    Scenario: Verify the user can review and accept the requested permissions before authorizing access

    Scenario: Verify the user can reject the requested permissions and are not logged into the platform site

    Scenario: Verify the authorization token is received from the authorization server and able to access the protected resources

    Scenario: Verify the authorization token is properly scoped to limit the access to only authorized resources

    Scenario: Verify the authorization token contains necessary info such as expiration time, scopes, and user information

    Scenario: Verify the authorization token is not exposed anywhere in the platform site

    Scenario: Verify the authorization token provided by the authorization server is valid and not expired

    Scenario: Verify the user cannot able to login when the authorization token is expired

    Scenario: Verify the authorization token gets expired after logout and the user needs to regenerate the authorization token for next session

    #OpenID Connect

    Scenario: Verify the user is redirected to the OPENID Connect provider for authentication when trying to login to the platform site

    Scenario: Verify the user can provide the valid credentials to the OPENID Connect provider for authentication

    Scenario: Verify the user receives the error message when login with invalid credentials for OPENID Connect

    Scenario: Verify the user is redirected to the platform site after successful login with OPENID Connect

    Scenario: Verify the ID token provided by the OPENID Connect provider is valid and not expired

    Scenario: Verify the ID token is generated by the OPENID Connect provider and received by the platform site after entering the credentials

    Scenario: Verify the ID token is not generated by the OPENID Connect provider for invalid credentials

    Scenario: Verify the ID token contains necessary user information and is digitally signed by the OPENID Connect provider

    Scenario: Verify the IDP asks for user consent before providing the ID token to the platform site

    Scenario: Verify the user can review and accept the requested permissions before authorizing access

    Scenario: Verify the user can reject the requested permissions and are not logged into the platform site

    Scenario: Verify the IDP and user information in the ID token is matched

    Scenario: Verify the ID  Token signature is verified to ensure the authenticity of the token

    Scenario: Verify the user cannot able to login when the ID token is expired

    Scenario: Verify the ID token gets expired after logout and the user needs to regenerate the ID token for next session