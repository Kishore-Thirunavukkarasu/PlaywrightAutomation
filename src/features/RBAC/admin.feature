Feature: Verification of Admin ui crud operation

        # created by  = Kishore Thirunavukkarasu
        # reviewed by =
        # updated by  =
        # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/admin

        # RBAC013ViewMyPermissions - Need to Remove from WorkPackage
        # RBAC015ApproveUser - Need to Remove from WorkPackage
        # RBAC012ViewUserActivity, RBAC016NotificationsforApproval, RBAC019ChangeLog - Need a discussion with Kumar
        # RBAC020AccessControls - Access are not based on metadata, it is based on features/pages



        @adminui @rbac @RBAC009AssignRole @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the super admin can able to create a new admin user

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin user with all the mandatory fields

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin user with all the mandatory fields and without selecting any role

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin without mandatory fields

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new super admin user

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify when super admin checkbox is clicked and other fields are disappeared

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new admin by assigning a role with restricted permissions

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new admin by adding a pre-defined role
        # What are the pre-defined roles
        #Super Admin, Tenant Admin, Participant Admin, Program Admin, Content Admin

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new tenant admin and check the admin can access the per-defined permissions for features

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new tenant admin and check whether the tenant admin cannot access the non assigned permissions for features

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new participant admin and check the admin can access the per-defined permissions for features

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new participant admin and check whether the tenant admin cannot access the non assigned permissions for features

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new content admin and check the admin can access the per-defined permissions for features

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating new content admin and check whether the tenant admin cannot access the non assigned permissions for features

        @adminui @rbac @RBAC020AccessControls @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the super admin can define field level restrictions for <access> for specific roles in <features>
                Examples:
                        | features          | access  |
                        | Partner Hub       | Read    |
                        | Partner Hub       | Create  |
                        | Partner Hub       | Update  |
                        | Partner Hub       | Delete  |
                        | Partner Hub       | Publish |
                        | Program Setup     | Read    |
                        | Program Setup     | Create  |
                        | Program Setup     | Update  |
                        | Program Setup     | Delete  |
                        | Program Setup     | Publish |
                        | Admin Toolkit     | Read    |
                        | Admin Toolkit     | Create  |
                        | Admin Toolkit     | Update  |
                        | Admin Toolkit     | Delete  |
                        | Admin Toolkit     | Publish |
                        | Promotions        | Read    |
                        | Promotions        | Create  |
                        | Promotions        | Update  |
                        | Promotions        | Delete  |
                        | Promotions        | Publish |
                        | Integration Hub   | Read    |
                        | Integration Hub   | Create  |
                        | Integration Hub   | Update  |
                        | Integration Hub   | Delete  |
                        | Integration Hub   | Publish |
                        | Communications    | Read    |
                        | Communications    | Create  |
                        | Communications    | Update  |
                        | Communications    | Delete  |
                        | Communications    | Publish |
                        | Settings          | Read    |
                        | Settings          | Create  |
                        | Settings          | Update  |
                        | Settings          | Delete  |
                        | Settings          | Publish |
                        | Sales & Claims    | Read    |
                        | Sales & Claims    | Create  |
                        | Sales & Claims    | Update  |
                        | Sales & Claims    | Delete  |
                        | Sales & Claims    | Publish |
                        | Foundation Tools  | Read    |
                        | Foundation Tools  | Create  |
                        | Foundation Tools  | Update  |
                        | Foundation Tools  | Delete  |
                        | Foundation Tools  | Publish |
                        | Experience Studio | Read    |
                        | Experience Studio | Create  |
                        | Experience Studio | Update  |
                        | Experience Studio | Delete  |
                        | Experience Studio | Publish |



        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify new tenant admin can be created respective to tenant

        @adminui @rbac @RBAC018TenantAssignment @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the new program admin can be created respective to tenant and program along with specific country

        @adminui @rbac @RBAC018TenantAssignment @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the new program admin can be created respective to multiple tenants and programs along with multiple countries

        @adminui @rbac @RBAC009AssignRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify deleting the newly added tenant, program, country details from the program admin

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin user with custom roles

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin user with custom roles specific to tenant

        @adminui @rbac @RBAC009AssignRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify creating a new admin user with multiple custom roles for multiple tenants

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with super admin role can able to access everything

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the access are not restricted to super admin user

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with pre-defined role can able to access only the assigned permissions

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with pre-defined role cannot able to access the restricted permissions

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user can be added as a Tenant Admin and the access are restricted to selected tenant

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user can be added as a Tenant Admin and the user cannot able to access other tenants

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify multiple tenants can be added to the user and the user can able to access only the selected tenants

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify removing the tenant from the user and the user cannot able to access the removed tenant

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user added as a Program Admin with restricting the access to the selected tenant and program and the user can able to access only the selected tenant and program

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user added as a Program Admin with restricting the access to the selected tenant and program and the user cannot able to access other tenants and programs

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify multiple tenants and programs can be added to the user and the user can able to access only the selected tenants and programs

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify deleting the tenant and program from the user and the user cannot able to access the deleted tenant and program

        # Users and Organizations only will have the country level access
        @adminui @rbac @RBAC018TenantAssignment @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user added as a Program Admin with restricting the access to the selected tenant and program along with specific country and the user can able to access only the features of the selected country

        @adminui @rbac @RBAC018TenantAssignment @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user added as a Program Admin with restricting the access to the selected tenant and program along with specific country and the user cannot able to access the features of the other countries

        @adminui @rbac @RBAC018TenantAssignment @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user added as a Program Admin with multiple tenants and programs along with multiple countries and the user can able to access only the features of the selected tenants, programs and countries

        @adminui @rbac @RBAC018TenantAssignment @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user is removed from the tenant and program along with specific country and the user cannot able to access the features of the removed tenant, program and country

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user role is updated and changed to someother country then the user can able to access only the features of the selected country

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user role is updated and changed to someother country then the user cannot able to access the features of the other countries

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify user added with custom roles specific to tenant and the user can able to access only the selected tenant with the custom roles

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with custom roles can able to access the selected tenant and the permissions for features given to that role

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with custom roles cannot able to access the other tenants

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with custom roles cannot able to access the restricted permissions for features in the selected tenant

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with multiple custom roles can able to access the permissions for features given to that role for the selected tenant

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with multiple custom roles cannot able to access the restricted permissions for features in the selected tenant

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user with multiple custom roles cannot able to access the other tenants with same permissions for features

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify disabled the custom roles from the user and the user cannot able to access the disabled access permissions

        @adminui @rbac @RBAC009AssignRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user permission with inactive tenant and program
        #What is the end result if the tenant or program is inactive
        # He as access to that and can make active/inactive

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify all the users are displayed in the admin user screen

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify pagination from the admin users list page

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify emailId, Name and Role are displayed in the admin users list page

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @search @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the user can be searched from the admin users list page

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify sorting admin users with emailId

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify sorting admin users with Name

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify sorting admin users with Role

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering admin users with emailId

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering admin users with Tenant

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering admin users with Role

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering admin users with Country

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering admin users with Status

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify filtering the admin users with combination of emailId, Tenant, Role, Country and Status then verify the results

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the results are displayed based on the filter applied

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Cancelling the filter applied and verify the results are displayed without any filter

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin user details can be viewed

        @adminui @rbac @RBAC010ViewlistofUsersandRoles @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin user details and roles can be viewed

        @adminui @rbac @RBAC014RevokeAccess @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify admin user details can be edited

        @adminui @rbac @RBAC014RevokeAccess @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify editing the admin user details and roles

        @adminui @rbac @RBAC014RevokeAccess @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify editing the roles from the admin user details

        @adminui @rbac @RBAC014RevokeAccess @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify updating the admin details and roles without mandatory fields




        @adminui @rbac @RBAC014RevokeAccess @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify editing the roles from the admin user details and saving the changes

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the roles of admin user to super admin and verify the user can able to access everything

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the roles of super admin to other roles and verify the user can able to access only the assigned permissions

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the roles of admin user then verify the user cannot able to access the previous permissions assigned

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles to custom roles and verify the user can able to access only the selected tenant with the custom roles

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles to custom roles and verify the user cannot able to access the other tenants with same permissions for features

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles to custom roles and verify the user cannot able to access the restricted permissions for features in the selected tenant

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles specific to tenant and verify the user can able to access only the selected tenant

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles specific to tenant and program and verify the user can able to access only the selected tenant and program

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles specific to tenant, program and country and verify the user cannot able to access the features of the other countries

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles specific to tenant, program and country and verify the user can able to access only the features of the selected tenant, program and country

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the admin user roles specific to tenant, program and country and verify the user cannot able to access the features of the removed tenant, program and country

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the permission of the roles and verify the user can able to access the permissions for features based on the updated roles

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the permission of the roles and verify the user cannot able to access the restricted permissions for features in the selected tenant

        @adminui @rbac @RBAC014RevokeAccess @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Updating the <feature> features from the roles and changing the permission to <permission> only and verify the user can able to access only the selected tenant with the selected permission
                Examples:
                        | feature           | permission |
                        | Partner Hub       | Read       |
                        | Partner Hub       | Create     |
                        | Partner Hub       | Update     |
                        | Partner Hub       | Delete     |
                        | Partner Hub       | Publish    |
                        | Program Setup     | Read       |
                        | Program Setup     | Create     |
                        | Program Setup     | Update     |
                        | Program Setup     | Delete     |
                        | Program Setup     | Publish    |
                        | Admin Toolkit     | Read       |
                        | Admin Toolkit     | Create     |
                        | Admin Toolkit     | Update     |
                        | Admin Toolkit     | Delete     |
                        | Admin Toolkit     | Publish    |
                        | Promotions        | Read       |
                        | Promotions        | Create     |
                        | Promotions        | Update     |
                        | Promotions        | Delete     |
                        | Promotions        | Publish    |
                        | Integration Hub   | Read       |
                        | Integration Hub   | Create     |
                        | Integration Hub   | Update     |
                        | Integration Hub   | Delete     |
                        | Integration Hub   | Publish    |
                        | Communications    | Read       |
                        | Communications    | Create     |
                        | Communications    | Update     |
                        | Communications    | Delete     |
                        | Communications    | Publish    |
                        | Settings          | Read       |
                        | Settings          | Create     |
                        | Settings          | Update     |
                        | Settings          | Delete     |
                        | Settings          | Publish    |
                        | Sales & Claims    | Read       |
                        | Sales & Claims    | Create     |
                        | Sales & Claims    | Update     |
                        | Sales & Claims    | Delete     |
                        | Sales & Claims    | Publish    |
                        | Foundation Tools  | Read       |
                        | Foundation Tools  | Create     |
                        | Foundation Tools  | Update     |
                        | Foundation Tools  | Delete     |
                        | Foundation Tools  | Publish    |
                        | Experience Studio | Read       |
                        | Experience Studio | Create     |
                        | Experience Studio | Update     |
                        | Experience Studio | Delete     |
                        | Experience Studio | Publish    |

        @adminui @rbac @RBAC014RevokeAccess @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the confirmation alert is displayed when the admin user details are updated

        @adminui @rbac @RBAC014RevokeAccess @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the confirming the alert will save the changes made to the admin user details

        @adminui @rbac @RBAC014RevokeAccess @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the cancelling the alert will not save the changes made to the admin user details

        @adminui @rbac @RBAC012ViewUserActivity @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of admin users activities can be viewed
        #Who has the access to view the logs and where it is stored?

        @adminui @rbac @RBAC012ViewUserActivity @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of admin users activities cannot be deleted

        @adminui @rbac @RBAC012ViewUserActivity @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of admin users activities can be filtered based on the user

        @adminui @rbac @RBAC012ViewUserActivity @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin users can able to view the modules and permissions which are assigned to them

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin user is notified when the user is added to the system

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin user is notified when the user is added to the system with the roles

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin users is notified when the user access are revoked

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin users is notified when the user access is updated and new roles are assigned

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin users is notified when the user access is updated and the roles are removed

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the notifications are triggered when the user role is disabled

        @adminui @rbac @RBAC016NotificationsforApproval @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the notifications are triggered when the user role is enabled

        @adminui @rbac @RBAC019ChangeLog @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of changes of admin user are recorded in the system

        @adminui @rbac @RBAC019ChangeLog @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of changes with role assignments of admin user are recorded in the system

        @adminui @rbac @RBAC019ChangeLog @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of changes with modifications of admin user are recorded in the system

        @adminui @rbac @RBAC019ChangeLog @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs of changes with revocations of admin user are recorded in the system

        @adminui @rbac @RBAC019ChangeLog @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the logs with timestamp of all the changes of admin user are recorded in the system

        @adminui @rbac @RBAC020AccessControls @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify all the sensitive information are protected and restricted to specific roles when the page level restrictions are defined
        # Need to be clarified

        @adminui @rbac @RBAC020AccessControls @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin user with custom roles when the role is disabled, the user cannot able to access the system

        @adminui @rbac @RBAC020AccessControls @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
        Scenario: Verify the admin user with custom roles when the role is enabled, the user can able to access the system



