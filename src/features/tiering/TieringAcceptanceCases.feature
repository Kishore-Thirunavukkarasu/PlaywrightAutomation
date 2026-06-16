Feature: Accceptance Cases for Tiering Feature

# ########################## New tier setup ##########################

Scenario: Verify the rbac access for Tier setup CRUD

Scenario: Verify the admin can create participant tier setup

Scenario: Verify the admin can create organization tier setup //phase 2

# refresh frequence can be of none which means onyl on final refresh date

Scenario: Verify the admin can create static tier setup with past, present and future start dates

Scenario: Verify the admin can create static tier setup with different refresh frequence

Scenario: Verify the refresh is happening for the static tier setup depending upon the configuration

Scenario: Verify the refresh will completed upon the final refresh date

Scenario: Verify admin can configure multiple tier names with levels

Scenario: Verify the tier downgrade is working after the tier refresh once it is enabled

Scenario: Verify the tier upgrade is working after the tier refresh

Scenario: Verify the admin can create dynamic tier setup with default tier name //phase 2

Scenario: Verify the admin can create dynamic tier setup with refresh frequence and evaluation period //phase 2

# Scenario: Verify the admin can create dynamic tier setup without default tier name //phase 2

Scenario: Verify the admin can configure the dynamic tier rolling window //phase 2

Scenario: Verify the individual action based rolling window in dynamic tier with each user action based

Scenario: Verify the common cycle based rolling window is working for the dynamic tier setup

Scenario: Verify the hybrid rolling window is working for the dynamic tier setup

Scenario: Verify the n number of tier segment can be assigned to the tier setup

Scenario: Verify excluding the users and organization from the user tier segment

Scenario: Verify excluding the users and organization from the organization tier segment

# if organization tier segment is added, then can we add user exclusion which will exclude the user's primary organization.

####################### Tiering Segment #######################

Scenario: Verify the rbac crud access for tier segment

Scenario: Verify admin can create new tiering segment for participant

Scenario: Verify admin user can view the tiering segment user list

Scenario: Verify participant tiering segment creation with job role

Scenario: Verify participant tiering segment creation with custom criteria such as users.country, users.staus, users.addresses.state

Scenario: Verify Organization tiering segment creation with custom criteria such as organisations.orgtype, organizations.status, organizationAddresses.state, organizationAddress.country

# only user's primary organization
# jobrole and custom but we can have and/or inside custom criteria


Scenario: Verify admin user annot able to modify the tier segment once it is published

# phase 2
Scenario: Verify admin can create new tiering segment for organization 

Scenario: Verify admin user can view the tiering segment organization list


# ################################# Tiering data, rule and communication ##############################

Scenario: Verify creating more than one tiering setup option

Scenario: Verify RBAC advanced setup access for tiering setup

Scenario: Verify creating a view inside a tiering setup

Scenario: Verify admin user can publish the view

Scenario: Verify admin user can view the sample data of the view

Scenario: Verify admin user can upload the data with any template inside the tier //phase 2

# tier upload data specification

Scenario: Verify admin user can upload the user tier assignment data

Scenario: Verify admin user can upload the organization tier assignment data

Scenario: Verify admin user can create 3 number of tier rules

Scenario: Verify admin user can select 3 number of tier segments for one tier rule

Scenario: Verify admin user can add 3 number of measure rules for tier rules

Scenario: Verify admin user can add and edit measure rules until the tier setup is published

Scenario: Verify admin user can add variable name for the measure rules

Scenario: Verify admin user can select the view column and operator in the variable name expression

Scenario: Verify admin user can create more than one rule variables

Scenario: Verify admin user can create the rule definition with the column from view selected and the operators

Scenario: Verify admin user can select the assign reward

# need to have static from configured ones and dynamic from the views

Scenario: Verify admin user can create multiple measure rules for each tier name in a single tier rule

Scenario: Verify admin user can create multiple tier rule wherein each tier rule can have multiple measure rules for each tier name

# communications are event based //phase 2

Scenario: Verify communication is configured and sent to the user for tier upgrade

Scenario: Verify communication is configured and sent to the user for tier retention

Scenario: Verify communication is configured and sent to the user for tier downgrade

Scenario: Verify communication is configured and sent to the user for tier reminder

Scenario: Verify sending the user defined notification message to the user

# ############################# Tiering movement report #############################

# movement report running batch until is based on the program's timezone's 12:01 am.

Scenario: Verify the movement report is getting created automatically for the tier setup upon tier refresh

Scenario: Verify the movement report is getting created for both organization and participant tier setup

Scenario: Verify the movement report is getting created for both static and dynamic tier setup

Scenario: Verify the movement report is getting created for different rolling window type

Scenario: Verify user can view and download the report

Scenario: Verify admin user can filter the reports based on the date range

Scenario: Verify admin user can search for the report data based on the user name

Scenario: Verify admin user can search for the report data based on the organization name //phase 2

# no user should not belong to more than one tier segment

# ############################# Tier Branding and others ############################# phase 2

Scenario: Verify creating n number of tier branding

Scenario: Verify each tier brand is having the tier name and colors selected

Scenario: Verify tier brand cannot be created for the duplicate tier name

Scenario: Verify the tier workflow is exists upon tenant creation as a seeded workflow

Scenario: Verify the dynamic audience have the tiers criteria with both user and organization tiers //phase 2

Scenario: Verify creating the organization tiers dynamic audience will create the user list who is having the organization tier's organization as primary organization //phase 2

Scenario: Verify enabling and disabling the membership tiering in admin enables it in platform portal

# what is exclude awarded points from tiering in promotion

Scenario: Verify the tier you are here in mobile

Scenario: Verify the tier you are here in platform

Scenario: Verify the remaining points required for moving to the next tier

Scenario: Verify the tiering page in platform

Scenario: Verify the tiering bonus statement //phase 2

Scenario: Verify the tiering bonu statement sorting and filtering //phase 2

Scenario: Verify the tiering bonus statment record with transaction details //phase 2

# tier setup widgets