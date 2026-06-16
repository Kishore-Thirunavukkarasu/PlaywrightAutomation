Feature: Dynamic Audience Creation

    # created by  = Ruthrakkanth
    # reviewed by = 
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/{tenantid}/program/{programid}/users/groups/dynamic/

    Background: Audience Page Navigation
        Given User launches admin application
        When "SuperAdmin" login to "Admin" application
        When Navigate to Tenant list page
        Then Tenant list page will be displayed with "All" tenant
        When Search the "existing" tenant
        When Choose the "existing" tenant
        When User clicks on the "Program" button from the tenant
        Then Verify the Hierarchy Creation Popup appears
        When Click cancel on the hierarchy creation popup
        #When User selects the "Program1" from the program list
        Then Verify the user is on the program landing page
        When User click on "Partner Hub"
        When User click on the "Audience" submenu
        Then Verify the "Audience" page is displayed


    @adminui @audience @ADN003CreateDynamicAudience @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group - complete the audience
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When Add the "Job Role Criteria" for Dynamic Audience
        When User enables "Organization" from Criteria
        When Add the "Organization Criteria" for Dynamic Audience
        When User enables "Custom" from Criteria
        When Add the "Custom Criteria" for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN003CreateDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Navigate to Create dynamic audience page
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        Then Verify the "Dynamic: Create New Group" page is displayed

    @adminui @audience @ADN003CreateDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group without mandatory fields
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User removes the mandatory fields for Dynamic Audience
        When User clicks on "Submit" button
        Then "Error" message shown up

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the job roles accordion is displayed when job roles are enabled in the dynamic audience
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Job roles" accordion should be displayed in Dynamic Audience page


    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the seach box with valid job role from the job roles accordion in the dynamic audience
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        Then "Add Job role overlay" should be displayed in Dynamic Audience Creation Page
        Then "search for job role" should be displayed in Dynamic Audience Creation Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the seach box with invalid job role from the job roles accordion in the dynamic audience
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        Then "Add Job role overlay" should be displayed in Dynamic Audience Creation Page
        Then "search for job role" should be displayed in Dynamic Audience Creation Page
        When User enter a "invalid" job role in the search box
        Then The Job Role should not be displayed for Dynamic Audience

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the adding the jobrole to dynamic audience from the job roles accordion
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        Then "Add Job role overlay" should be displayed in Dynamic Audience Creation Page
        Then "search for job role" should be displayed in Dynamic Audience Creation Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        Then The Job Role should be added to the Dynamic Audience


    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding multiple jobroles to dynamic audience from the job roles accordion
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        Then "Add Job role overlay" should be displayed in Dynamic Audience Creation Page
        Then "search for job role" should be displayed in Dynamic Audience Creation Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User adds multiple jobrole from jobrole criteria page
        Then The Job Role should be added to the Dynamic Audience

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding the jobrole to dynamic audience from the job roles accordion by checking the primary jobrole checkbox
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        Then "Add Job role overlay" should be displayed in Dynamic Audience Creation Page
        Then "search for job role" should be displayed in Dynamic Audience Creation Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User checks on the "Apply to primary role" checkbox from Jobrole Criteria Page
        Then The Job Role should be added to the Dynamic Audience

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group without selecting the job role criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN004JobrolebasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when primary job role is selected, the users are added only based on the primary jobrole to dynamic audience group
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        Then "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User checks on the "Apply to primary role" checkbox from Jobrole Criteria Page
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users who are having the primary job role only should be added to the dynamic audience group


    @adminui @audience @ADN009CustomOrganisationAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group based on organization
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN006HierarchybasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group based on organization by selecting the hierarchy
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User clicks on the hierarchy dropdown in the organization criteria
        Then List of hierarchy should be displayed for Dynamic Audience

    @adminui @audience @ADN006HierarchybasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group based on organization and verify the levels and nodes are displayed based on the choosed hierarchy
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User clicks on the hierarchy dropdown in the organization criteria
        Then List of hierarchy should be displayed for Dynamic Audience
        When User selects the hierarchy for Dynamic Audience
        Then The levels and nodes should be displayed based on the choosed hierarchy

    @adminui @audience @ADN009CustomOrganisationAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group without selecting the organization criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN010AudiencebasedCustomOrganisationAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify when primary organization is selected, the users are added only based on the primary organization to dynamic audience group
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User checks on the "Apply to primary organization" checkbox from Organization Criteria Page
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users who are having the primary organization only should be added to the dynamic audience group

    @adminui @audience @ADN008CustomuserAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group when multiple hierarchy are added for the organization criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the multiple hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN008CustomuserAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group where users are added based on the jobroles and organization criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN008CustomuserAttributes @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group where users from other jobroles and organization are not added
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from other jobroles and organization are not added to the dynamic audience group

    @adminui @audience @ADN008CustomuserAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group where users are added based on primary jobrole and organization criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User checks on the "Apply to primary organization" checkbox from Organization Criteria Page
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from primary jobrole and organization are added to the dynamic audience group

    @adminui @audience @ADN008CustomuserAttributes @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify users other than the primary jobrole and organization are not added to the dynamic audience group when primary jobrole and organization are selected
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User checks on the "Apply to primary role" checkbox from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User checks on the "Apply to primary organization" checkbox from Organization Criteria Page
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from other jobroles and organization are not added to the dynamic audience group

    @adminui @audience @ADN006HierarchybasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group where the hierarchy can be removed/deleted from the organization criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Delete" button from the organization criteria
        Then The hierarchy should be removed from the organization criteria

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group by adding the custom criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group by adding the custom criteria based on the rules
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users are added based on the custom criteria rules

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Create dynamic audience group by adding multiple rules in custom criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the multiple rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users are added based on the multiple rules in custom criteria

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rules can be removed from the custom criteria
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Remove" button from the custom criteria
        Then The rules should be removed from the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users also removed based on the removed rules in custom criteria

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rules can be added to the custom criteria where the users are added based on the rules
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users are added based on the rules in custom criteria

    @adminui @audience @ADN013CustomAttributes @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if the jobroles, organization and custom criteria are set then the users are added based on the rules
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users are added based on the jobroles, organization and custom criteria rules

    @adminui @audience @ADN013CustomAttributes @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user does not comes under the jobroles, organization and custom criteria are not added to the dynamic audience group
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users who are not comes under the jobroles, organization and custom criteria are not added to the dynamic audience group

    @adminui @audience @ADN013CustomAttributes @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify if the jobroles, organization are checked as primary and custom criteria are set then the users are added based on the rules
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User checks on the "Apply to primary role" checkbox from Jobrole Criteria Page
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users are added based on the jobroles, organization and custom criteria rules

    @adminui @audience @ADN005StatusbasedAudience @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic audience status is active by default
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the dynamic audience status is active by default

    @adminui @audience @ADN005StatusbasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the dynamic audience status can be changed to inactive
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User clicks on "Submit" button
        When User clicks on "Inactive" button from the dynamic audience group
        Then Verify the dynamic audience status is changed to inactive

    @adminui @audience @ADN005StatusbasedAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the inactive dynamic audience group can be changed to active
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User clicks on "Inactive" button from the dynamic audience group
        Then Verify the dynamic audience status is changed to inactive
        When User clicks on "Active" button from the dynamic audience group
        Then Verify the dynamic audience status is changed to active

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Edit dynamic audience group
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User updates the dynamic audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up

    @adminui @audience @ADN016ViewDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: View dynamic audience group
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "View" option from the dynamic audience group
        Then User should be able to view the dynamic audience group

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by removing the jobroles and verify the users from that jobroles are removed
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User removes the jobroles from the dynamic audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that jobroles are removed from the dynamic audience group

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by adding the jobroles and verify the users from that jobroles are added along with existing users
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that jobroles are added to the dynamic audience group along with existing users

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by removing the organization and verify the users from that organization are removed
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User removes the organization from the dynamic audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that organization are removed from the dynamic audience group

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by adding the organization and verify the users from that organization are added along with existing users
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that organization are added to the dynamic audience group along with existing users

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by removing the custom criteria and verify the users from that custom criteria are removed
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User removes the custom criteria from the dynamic audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that custom criteria are removed from the dynamic audience group

    @adminui @audience @ADN015EditDynamicAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify editing the dynamic audience group by adding the custom criteria and verify the users from that custom criteria are added along with existing users
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User enables "Custom" from Criteria
        When "Add custom criteria" button should be displayed for Dynamic Audience
        When User click on "Add custom criteria" button from Dynamic Audience Page
        When User enters the custom criteria for Dynamic Audience
        When User add the rules for the custom criteria
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the users from that custom criteria are added to the dynamic audience group along with existing users


    #***************************************************Common to all Audience Group Dynamic and Static Audience***************************************************

    @adminui @audience @ADN003CreateDynamicAudience @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group based on job role criteria
        When User created audience with job role criteria
        When New user register to that job role while registration
        When User gets activated after completing the activation
        Then New user should be added to the audience group
        Then New user should be able to see the configured content for that audience group

    @adminui @audience @ADN003CreateDynamicAudience @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group based on organization criteria
        When User created audience with organization criteria
        When New user register to that organization while registration
        When User gets activated after completing the activation
        Then New user should be added to the audience group
        Then New user should be able to see the configured content for that audience group

    @adminui @audience @ADN022AssignAudiencetoFeatures @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group and user can see the menu configured for that audience
        When User created audience with job role criteria
        When New user register to that job role while registration
        When User gets activated after completing the activation
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group based on organization criteria and user is a part of multiple organizations. Verify user can see the menu configured for that audience
        When User created audience with Organization criteria
        When New user register to that organization while registration
        When User gets activated after completing the activation
        When User is a part of multiple organizations
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group and user approval is present and pending for that user. Verify user can see the menu configured for that audience
        When User created audience with Organization criteria
        When New user register to that organization while registration
        When User gets activated after completing the activation
        When User approval is pending for that user
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group and user approval is present and approved for that user. Verify user can see the menu configured for that audience
        When User created audience with Organization criteria
        When New user register to that organization while registration
        When User gets activated after completing the activation
        When User approval is approved for that user
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify new registered users are added to the audience group and user approval is present and rejected for that user. Verify user can see the menu configured for that audience
        When User created audience with Organization criteria
        When New user register to that organization while registration
        When User gets activated after completing the activation
        When User approval is rejected for that user
        Then New user should not be added to the audience group
        Then New user should not be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is present in an audience group based on an organization criteria and now platform user updates the organization in profile page with different organization. Now the menu and content which is shown up in platform because of that audience group should not be displayed.
        When User created audience with Organization criteria
        When User register to that organization while registration
        When User gets activated after completing the activation
        When User updates the organization in profile page with different organization
        Then User should be removed from the audience group
        Then User should not be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is present in an audience group based on an organization criteria and now admin user updates the organization in profile page with different organization. Now the menu and content which is shown up in platform because of that audience group should not be displayed.
        When User created audience with Organization criteria
        When User register to that organization while registration
        When User gets activated after completing the activation
        When Admin user updates the organization in user page with different organization
        Then User should be removed from the audience group
        Then User should not be able to see the configured menu for that audience group

    @adminui @audience @ADN024AudienceRefresh @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is present in an audience group based on tier criteria and now after the tiering is completed, user is placed in different tier than the audience configured tier, Then the menu and content which is shown up in platform because of that audience group should not be displayed.
        When User created audience with Tier criteria
        When User register to that tier while registration
        When User gets activated after completing the activation
        When User is placed in different tier than the audience configured tier
        Then User should be removed from the audience group
        Then User should not be able to see the configured menu for that audience group

    @adminui @audience @ADN022AssignAudiencetoFeatures @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify user is present in an audience group based on organization criteria and now the organization becomes inactive. Then the users present in that audience group will be removed.
        When User created audience with Organization criteria
        When User register to that organization while registration
        When User gets activated after completing the activation
        When Organization becomes inactive
        Then User should be removed from the audience group
        Then User should not be able to see the configured menu for that audience group

    @adminui @audience @ADN022AssignAudiencetoFeatures @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify audience is configured based on organization criteria. Verify new user is added to the organization via upload. Verify new user is added to the audience group.
        When User created audience with Organization criteria
        When New user is added to the organization via upload
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @audience @ADN022AssignAudiencetoFeatures @scenario @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify audience is configured based on job role criteria. Verify new user is added to the job role via upload. Verify new user is added to the audience group.
        When User created audience with Job role criteria
        When New user is added to the job role via upload
        Then New user should be added to the audience group
        Then New user should be able to see the configured menu for that audience group

    @adminui @ADN021AudienceMembership @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the logs can be maintained for audience membership
        When User creates a new audience group
        When Update some changes in the audience
        Then Verify the logs of the users participation can be maintained for the audience membership

    @adminui @ADN021AudienceMembership @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the logs of the users participation can be tracked and maintained for the audience membership
        When User creates a new audience group
        When Update some changes in the audience
        Then Verify the logs of the users participation can be tracked and maintained for the audience membership

    @adminui @ADN021AudienceMembership @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify all the details and changes made in the audience membership can be tracked and maintained in the logs
        When User creates a new audience group
        When Update some changes in the audience
        When User added the users to the audience
        Then Verify all the details and changes made in the audience membership can be tracked and maintained in the logs

    @adminui @ADN023OrgJobRoleMapping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user from the organization jobrole can be added to the audience group when user has start date and end date in that organization
        When User creates a new audience group
        When User adds the organization jobrole to the audience group
        Then Verify the user should have the start date and end date for that organization
        Then Verify the user from the organization jobrole can be added to the audience group

    @adminui @ADN023OrgJobRoleMapping @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user cannnot able to continue in the audience group mapped to the organization jobrole after the end date
        When User creates a new audience group
        When User adds the organization jobrole to the audience group
        Then Verify the user should have the start date and end date for that organization
        Then Verify the user from the organization jobrole can be added to the audience group
        When User end date is reached
        Then Verify the user cannnot able to continue in the audience group mapped to the organization jobrole after the end date

    @adminui @ADN024AudienceRefresh @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the audience refresh should happen when the admin updates any user details and the menus should be updated accordingly
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When User updates the dynamic audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then The audience refresh should happen
        Then The menus should be updated accordingly

    @adminui @ADN024AudienceRefresh @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the audience refresh should happen when the admin updates any organization details and the menus should be updated accordingly
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User choose the existing dynamic audience group
        When User clicks on the three dots from the dynamic audience group
        When User selects the "Edit" option from the dynamic audience group
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then The audience refresh should happen
        Then The menus should be updated accordingly

    @adminui @ADN028JobRolesTranslations @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the audience can be created with jobrole having multiple languages and user from the audience can have multiple languages
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Job Roles" from Criteria
        When "Add job role criteria" button should be displayed for Dynamic Audience
        When User click on "Add job role criteria" button from Dynamic Audience Page
        When User enter a "valid" job role in the search box
        Then The Job Role should be displayed for Dynamic Audience
        When User selects the "Jobrole" for Dynamic Audience
        When User click on "Add selected" button from Jobrole Criteria Page
        Then Verify the jobroles having multiple languages can be added to the audience group
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the user from the audience can have multiple languages

    @adminui @ADN029HierarchyNodesTranslations @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the audience can be created with organization hierarchy having multiple languages and user from the audience can have multiple languages
        When User is on the Audience page
        When User clicks on "Create New Group" button
        When User selects "Dynamic" Audience
        Then User is on the "Dynamic: Create New Group" page from Audience
        When User enters the mandatory details for "Dynamic Audience" creation
        When User enables "Organization" from Criteria
        When "Add organization criteria" button should be displayed for Dynamic Audience
        When User click on "Add organization criteria" button from Dynamic Audience Page
        Then Verify the organization hierarchy having multiple languages can be added to the audience group
        When User selects the organization hierarchy for Dynamic Audience
        When User clicks on "Submit" button
        Then "Successful" message shown up
        Then Verify the user from the audience can have multiple languages

    @adminui @ADN030PromotionEligibility @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the user can be removed form the audience group when he is a part of the promotion
        When User is on the Audience group
        When User is a part of the promotion
        When User is removed from the audience group
        Then Verify the user should not be removed form the promotion
        Then Verify the user should able to continue till the end date of the promotion

