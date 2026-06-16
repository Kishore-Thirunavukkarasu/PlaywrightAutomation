Feature: Coupon claim

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =


    #Coupon Claim

    @adminui @claimFormConfiguration @CouponClaimForm @integration @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim form can be configured for the coupon claim

    @adminui @claimFormConfiguration @CouponClaimForm @integration @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon claim form can be configured based on participants organization

    @adminui @claimFormConfiguration @CouponClaimForm @integration @configure @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon claim form can be configured based on hierarchy

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon can be claimed by the participants in the assigned organization

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon cannot be claimed by the participants in the other organization

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon can be claimed by the participants in the assigned hierarchy

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon cannot be claimed by the participants in the other hierarchy

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim can be done by uploading the valid coupon code

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the claim cannnot be done by uploading the invalid coupon code

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon can be claimed before the expiry date

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon cannot be claimed after the expiry date

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon can be claimed by case sensitive characters

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon can be used only once

    @adminui @claimFormConfiguration @CouponClaimForm @system @form @functional @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the coupon cannot be used multiple times




























