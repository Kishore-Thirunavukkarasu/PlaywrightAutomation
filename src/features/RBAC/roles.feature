Feature: Verification of Roles ui crud operation

    # created by  = Ruthrakkanth
    # reviewed by = Kishore Thirunavukkarasu
    # updated by  = Kishore Thirunavukkarasu
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/admin

    # RBAC004DeleteaRole - Role cannot be deleted, it should only disabled but system roles cannot be disabled, custom role can only be disabled
    # RBAC007UpdatePermission, RBAC008DeletePermission - Permissions cannot be deleted or updated, Needs to be removed



    @adminui @rbac @RBAC002ViewRole @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can navigate to the role page

    @adminui @rbac @RBAC002ViewRole @system @list @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can navigate to the role page which doesn't contain any roles

    @adminui @rbac @RBAC002ViewRole @system @list @functional @positive @notreviewed @tenantadmin @updated @notautomated
    Scenario: Verify super super admin can able to see the list of roles

    @adminui @rbac @RBAC002ViewRole @system @search @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to search the role

    @adminui @rbac @RBAC002ViewRole @system @search @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin only can able to view the roles

    @adminui @rbac @RBAC002ViewRole @system @search @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to view the roles

    @adminui @rbac @RBAC002ViewRole @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the status of the role is displayed in the role view page

    @adminui @rbac @RBAC002ViewRole @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    # Scenario: Verify the count of the admins who are assigned to the role is displayed in the role view page
    

    @adminui @rbac @RBAC001CreateRole @navigation @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin user can able to navigate to New Role

    @adminui @rbac @RBAC001CreateRole @system @form @functional @smoke @notreviewed @superadmin @updated @notautomated
    Scenario: Verify creating a new role by super admin
    
    @adminui @rbac @RBAC001CreateRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to create a role

    @adminui @rbac @RBAC001CreateRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to create a role without role name

    @adminui @rbac @RBAC001CreateRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to create a role with multiple feature

    @adminui @rbac @RBAC003UpdateRole @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to edit the created custom role in the role view page

    @adminui @rbac @RBAC003UpdateRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to edit the created custom role in the role view page

    @adminui @rbac @RBAC003UpdateRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the scenario when super admin edit the custom role and click on Cancel

    @adminui @rbac @RBAC003UpdateRole @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the super admin cannot able to modify the system roles

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the roles cannot be disabled when it is assigned to any active admin user

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to disable the custom roles

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to disable the custom roles

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin cannot able to disable the system roles

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to enable the disabled custom roles

    @adminui @rbac @RBAC004DeleteaRole @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to enable the disabled custom roles

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to create a custom role without selecting <feature> feature and <permission> permission
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

    @adminui @rbac @RBAC005CreatePermissions @system @search @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can search the features in New Role page

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add permissions to the custom role from list of permissions

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify user can able to add multiple permissions to the custom role from list of permissions

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin has access to <feature> feature for <permission1> cannot able to access <permission2> <permission3> <permission4> <permission4>
        Examples:
            | feature           | permission | permission2 | permission3 | permission4 | permission5 |
            | Partner Hub       | Read       | Create      | Update      | Delete      | Publish     |
            | Program Setup     | Read       | Create      | Update      | Delete      | Publish     |
            | Admin Toolkit     | Read       | Create      | Update      | Delete      | Publish     |
            | Promotions        | Read       | Create      | Update      | Delete      | Publish     |
            | Integration Hub   | Read       | Create      | Update      | Delete      | Publish     |
            | Communications    | Read       | Create      | Update      | Delete      | Publish     |
            | Settings          | Read       | Create      | Update      | Delete      | Publish     |
            | Sales & Claims    | Read       | Create      | Update      | Delete      | Publish     |
            | Foundation Tools  | Read       | Create      | Update      | Delete      | Publish     |
            | Experience Studio | Read       | Create      | Update      | Delete      | Publish     |
            | Partner Hub       | Create     | Read        | Update      | Delete      | Publish     |
            | Program Setup     | Create     | Read        | Update      | Delete      | Publish     |
            | Admin Toolkit     | Create     | Read        | Update      | Delete      | Publish     |
            | Promotions        | Create     | Read        | Update      | Delete      | Publish     |
            | Integration Hub   | Create     | Read        | Update      | Delete      | Publish     |
            | Communications    | Create     | Read        | Update      | Delete      | Publish     |
            | Settings          | Create     | Read        | Update      | Delete      | Publish     |
            | Sales & Claims    | Create     | Read        | Update      | Delete      | Publish     |
            | Foundation Tools  | Create     | Read        | Update      | Delete      | Publish     |
            | Experience Studio | Create     | Read        | Update      | Delete      | Publish     |
            | Partner Hub       | Update     | Read        | Create      | Delete      | Publish     |
            | Program Setup     | Update     | Read        | Create      | Delete      | Publish     |
            | Admin Toolkit     | Update     | Read        | Create      | Delete      | Publish     |
            | Promotions        | Update     | Read        | Create      | Delete      | Publish     |
            | Integration Hub   | Update     | Read        | Create      | Delete      | Publish     |
            | Communications    | Update     | Read        | Create      | Delete      | Publish     |
            | Settings          | Update     | Read        | Create      | Delete      | Publish     |
            | Sales & Claims    | Update     | Read        | Create      | Delete      | Publish     |
            | Foundation Tools  | Update     | Read        | Create      | Delete      | Publish     |
            | Experience Studio | Update     | Read        | Create      | Delete      | Publish     |
            | Partner Hub       | Delete     | Read        | Create      | Update      | Publish     |
            | Program Setup     | Delete     | Read        | Create      | Update      | Publish     |
            | Admin Toolkit     | Delete     | Read        | Create      | Update      | Publish     |
            | Promotions        | Delete     | Read        | Create      | Update      | Publish     |
            | Integration Hub   | Delete     | Read        | Create      | Update      | Publish     |
            | Communications    | Delete     | Read        | Create      | Update      | Publish     |
            | Settings          | Delete     | Read        | Create      | Update      | Publish     |
            | Sales & Claims    | Delete     | Read        | Create      | Update      | Publish     |
            | Foundation Tools  | Delete     | Read        | Create      | Update      | Publish     |
            | Experience Studio | Delete     | Read        | Create      | Update      | Publish     |
            | Partner Hub       | Publish    | Read        | Create      | Update      | Delete      |
            | Program Setup     | Publish    | Read        | Create      | Update      | Delete      |
            | Admin Toolkit     | Publish    | Read        | Create      | Update      | Delete      |
            | Promotions        | Publish    | Read        | Create      | Update      | Delete      |
            | Integration Hub   | Publish    | Read        | Create      | Update      | Delete      |
            | Communications    | Publish    | Read        | Create      | Update      | Delete      |
            | Settings          | Publish    | Read        | Create      | Update      | Delete      |
            | Sales & Claims    | Publish    | Read        | Create      | Update      | Delete      |
            | Foundation Tools  | Publish    | Read        | Create      | Update      | Delete      |
            | Experience Studio | Publish    | Read        | Create      | Update      | Delete      |

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify selecting the feature will selects all the permissions

    @adminui @rbac @RBAC005CreatePermissions @system @configure @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to add permissions to the custom role

    @adminui @rbac @RBAC006ViewlistofPermissions @system @list @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to view all the list of features and permissions in New Role page

    @adminui @rbac @RBAC006ViewlistofPermissions @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the super admin cannot able to edit the permission in view mode

    @adminui @rbac @RBAC006ViewlistofPermissions @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify super admin can able to view the permission for created custom role

    @adminui @rbac @RBAC006ViewlistofPermissions @system @form @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify admins other than super admin cannot able to view the permission for created custom role






