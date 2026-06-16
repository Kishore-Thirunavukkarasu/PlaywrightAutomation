Feature: Membership tiering based on points and Promotional points added/notadding

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify creating a membership tier based on points by adding the points table in view

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points consider for tiering should be based on multiple measure rule from a promotion

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points consider for tiering should be based on multiple measure rule and multiple promotion

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the Segmentation users only should be able to get the tier based on points

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier should be added based on the configured segment rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify enable the tier downgrades option where when some points are reversed for a user, the tier should be downgraded based on the segmented rule with total points

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify disable the tier downgrades option where when some points are reversed for a user, the tier should not be downgraded based on the segmented rule with total points

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier should be upgraded based on the segmented rule with total points

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the tier should be retained if there is no change in the points

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if the user is not placed in any tier if no points are awarded(Depends on the segment rule configuration)

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify all the points from the promotion and measure rule should be considered for tiering if "Exclude Awarded Points from Tiering" is not selected in Rule Payout Tab from Measure Rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points should not be considered/added for tiering if "Exclude Awarded Points from Tiering" is selected in Rule Payout Tab from Measure Rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the points from the particular rule should be excluded from tiering calculation if "Exclude Awarded Points from Tiering" is selected in Rule Payout Tab from Measure Rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify all other points from the promotion and measure rule should be considered for tiering excluding the points from the particular rule if "Exclude Awarded Points from Tiering" is selected in Rule Payout Tab from Measure Rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the change of points in the promotion should not affect the tiering if "Exclude Awarded Points from Tiering" is selected in Rule Payout Tab from Measure Rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify change in sum of points in tiering should update the tier of users according to the segment rule

    @adminui @membershiptier @excludeTierPoints @scenario @special @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: If promotion with multiple measure rules is created and excluded only one rule from tiering, then the points from the excluded rule should not be considered for tiering and all other points from other rules should be considered for tiering
