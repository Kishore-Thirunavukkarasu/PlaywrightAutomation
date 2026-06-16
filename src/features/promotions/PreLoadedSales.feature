Feature: PreLoaded Sales

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded in the product level and points are awarded for the user who acheived the target

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded in the uploads tab in the promotion and points are awarded for the user who acheived the target

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales contains more than one user and both users achieved the target and points are awarded for both users

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales contains more than one user and one the user is eligible for promotion and achieved the target and points are awarded for the eligible user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and this sale creates the target is equal to the user sales value, and points are not awarded for the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains more than one record for the same user and the combined sales value is added to the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains the user present in the excluded list and points are not awarded for the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains the user who is inactive and points are not awarded for the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains the user who is not activated yet and points are not awarded for the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains the user who is not eligible for the promotion and points are not awarded for the user

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and it contains the user who is eligible for the promotion but the user did not achieve the target and points are not awarded for the user

    @adminui @PreloadedSales @saleperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the sale date is within the promotion date range and sale value is attached to the user

    @adminui @PreloadedSales @saleperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the sale date is outside the promotion date range and sale value is not attached to the user

    @adminui @PreloadedSales @productperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the product is not in eligible product list and sale value is not attached to the user even when user achieved the target

    @adminui @PreloadedSales @productperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the product is in eligible product list and sale value is attached to the user when user achieved the target

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the user achieves the first target and points are awarded for the user's first target

    @adminui @PreloadedSales @userperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded and the user achieves the second target and points are awarded for the user's first and second target

    @adminui @PreloadedSales @saleperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded where the reward is related to that sale record (say 10% of the sale value) and points are awarded for the user

    @adminui @PreloadedSales @saleperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify prelaoded sales are uploaded where the upload contains more than one record for the same user and the reward is related to each sale record and points are awarded for the user for each sale record (say 10% of first sale value and 10% of the next sale value)

    @adminui @PreloadedSales @saleperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded where the upload contains more than one sales for different products and verify the sales are correspondingly marked to those products
   
    @adminui @PreloadedSales @productperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded where the upload contains the product which is part of a bundled product group and verify the sales are correspondingly marked to those products

    @adminui @PreloadedSales @productperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded where the upload contains the bundled product group and verify the points are awarded for the user who achieved the target

    @adminui @PreloadedSales @productperspective @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify preloaded sales are uploaded with invalid product value and the points are not awarded for the user. Verify the error messages are shown up in the file download

# username,measureName,target,reward,level
# file name : TargetUser.csv

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the invalid username
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the invalid target value
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the invalid reward value
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the invalid measure name
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the invalid level with numeric value
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the target with decimal value
        When user uploads the file
        Then it should show the error message and should add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the target by having reward as decimal value
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usertarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the target with more than one user
        When user uploads the file
        Then it should show the error message and should add the data into usertarget table

    @adminui @TargetandReward @usermultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the target with more than target for one user
        When user uploads the file
        Then it should show the error message and should add the data into usertarget table
    
    @adminui @TargetandReward @usermultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the target with more than one user and more than one target for each user
        When user uploads the file
        Then it should show the error message and should add the data into usertarget table

    @adminui @TargetandReward @usermultipletarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated 
    Scenario: Verify uploading the target with more than one user and more than one target for each user and each target have the same level value
        When user uploads the file
        Then it should show the error message and should not add the data into usertarget table

    @adminui @TargetandReward @usermultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than one user and more than one target for each user and each target have the different level value
        When user uploads the file
        Then it should show the error message and should add the data into usertarget table

# code,measureName,target,reward,level
# file name : TargetOrganization.csv

    @adminui @TargetandReward @organizationtarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table
    
    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with invalid orgcode
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with invalid target value
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with invalid reward value
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with invalid measure name
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with invalid level with numeric value
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with decimal value
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target by having reward as decimal value
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationtarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than one orgcode
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table

    @adminui @TargetandReward @organizationmultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than target for one orgcode
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table

    @adminui @TargetandReward @organizationmultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than one orgcode and more than one target for each orgcode
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table

    @adminui @TargetandReward @organizationmultipletarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than one orgcode and more than one target for each orgcode and each target have the same level value
        When user uploads the file
        Then it should show the error message and should not add the data into organizationtarget table

    @adminui @TargetandReward @organizationmultipletarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with more than one orgcode and more than one target for each orgcode and each target have the different level value
        When user uploads the file
        Then it should show the error message and should add the data into organizationtarget table

    @adminui @TargetandReward @usertarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the user target and as the target is added as reward in the rule, verify user is awarded with the points
        When user uploads the file
        Then it should show the success message and should add the data into usertarget table
        When user creates the rule with the target as reward
        Then it should be added
        When user achieves the target by uploading the preloaded sales
        Then the user should be awarded with the points

    @adminui @TargetandReward @organizationtarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target and as the target is added as reward in the rule, verify overall users of that organization is awarded with the points
        When user uploads the file
        Then it should show the success message and should add the data into organizationtarget table
        When user creates the rule with the target as reward
        Then it should be added
        When user achieves the target by uploading the preloaded sales
        Then the user should be awarded with the points

    @adminui @TargetandReward @usertarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the user target with multiple levels and as the target is added as reward in the rule, verify user is awarded with the both the level rewards
        When user uploads the file
        Then it should show the success message and should add the data into usertarget table
        When user creates the rule with the target as reward
        Then it should be added
        When user achieves the target level 1 by uploading the preloaded sales
        Then the user should be awarded with the level 1 points
        When user acheives the target level 2 by uploading the preloaded sales
        Then the user should be awarded with the level 2 points

    @adminui @TargetandReward @organizationtarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the organization target with multiple levels and as the target is added as reward in the rule, verify overall users of that organization is awarded with the both the level rewards
        When user uploads the file
        Then it should show the success message and should add the data into organizationtarget table
        When user creates the rule with the target as reward
        Then it should be added
        When user achieves the target level 1 by uploading the preloaded sales
        Then the user should be awarded with the level 1 points
        When user acheives the target level 2 by uploading the preloaded sales
        Then the user should be awarded with the level 2 points

# measureName,productAttributeName,productAttributeValue,reward,value,tier,productMaster
# file name : EligibleProductReward.csv

    @adminui @TargetandReward @producttarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product eligible reward with invalid measure name
        When user uploads the file
        Then it should show the error message and should not add the data into EligibleProductReward table
    
    @adminui @TargetandReward @producttarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product eligible reward with invalid productAttributeName
        When user uploads the file
        Then it should show the error message and should not add the data into EligibleProductReward table

    @adminui @TargetandReward @producttarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product eligible reward with not exists productAttributeValue
        When user uploads the file
        Then it should not show the error message and should add the data into EligibleProductReward table

    @adminui @TargetandReward @producttarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product eligible reward with invalid decimal reward
        When user uploads the file
        Then it should show the error message and should not add the data into EligibleProductReward table

    @adminui @TargetandReward @producttarget @system @post @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploding the product eligible reward with invalid productMaster value
        When user uploads the file
        Then it should show the error message and should not add the data into EligibleProductReward table

    @adminui @TargetandReward @producttarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading the product eligible reward with valid value
        When user uploads the file
        Then it should not show the error message and should add the data into EligibleProductReward table
    
    @adminui @TargetandReward @producttarget @system @post @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify uploading more than one product eligible rewards
        When user uploads the file
        Then it should not show the error message and should add the data into EligibleProductReward table

    @adminui @TargetandReward @producttarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when eligible product reward is added as the reward in the rule and when user achieves the rule by uploading the preloaded sales, verify user is awarded with the points
        When user uploads the file
        Then it should not show the error message and should add the data into EligibleProductReward table
        When user creates the rule with the target as EligibleProductReward
        Then it should be added
        When user achieves the target by uploading the preloaded sales
        Then the user should be awarded with the points

    @adminui @TargetandReward @producttarget @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when eligible product reward is added as the reward in the rule and when more than user achieves the rule by uploading the preloaded sales, verify all user is awarded with the points
        When user uploads the file
        Then it should not show the error message and should add the data into EligibleProductReward table
        When user creates the rule with the target as EligibleProductReward
        Then it should be added
        When user achieves the target by uploading the preloaded sales
        Then the user should be awarded with the points

    @adminui @TargetandReward @productbundling @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user create a new product bundle table

    @adminui @TargetandReward @productbundling @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user create a new product bundle file specification

    @adminui @TargetandReward @productbundling @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user create a new product bundle flows

    @adminui @TargetandReward @productbundling @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user able to upload the product bundle

    @adminui @TargetandReward @productbundling @system @post @integration @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when user creates a promotion with product bundle