Feature: Get Permission for Roles to access the Tables

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =
    Background:
        Given Verify tenant is created
        Given Verify role is created
        Given Get the created schema

    @api @user @permissionapi @system @post @functional @smoke @nonreviewed @superadmin
    Scenario: Create <testid> for roles inorder to access the <tableName> table
        When <testid> Creating permission for <tableName> table
        Then permission response <responsecode> should be <responsestatus>
        Examples:
            | testid                 | tableName     | responsecode | responsestatus |
            | addressPermission      | addresses     | 201          | success        |
            | userPermission         | users         | 201          | success        |
            | organizationPermission | organizations | 201          | success        |