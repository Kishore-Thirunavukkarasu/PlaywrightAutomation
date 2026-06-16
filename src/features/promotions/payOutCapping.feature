Feature: Payout Capping for promotion

    @adminui @payoutcapping @payoutConfig @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the payout capping is enabled and the values are set for the promotion

    @adminui @payoutcapping @payoutConfig @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the payout capping is disable and there is no specific value set for the promotion and there is no restriction in points awarding

    @adminui @payoutcapping @payoutConfig @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the payout capping is enabled and the max value is set for the participant

    @adminui @payoutcapping @payoutConfig @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the promotion eligible user cannot able to earn more than the max value set for the participant

    @adminui @payoutcapping @payoutConfig @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the payout capping is enabled and the max value is set for the measure

    @adminui @payoutcapping @payoutConfig @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the promotion eligible users cannot able to earn more than the max value set for the measure

    @adminui @payoutcapping @payoutConfig @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario:Verify the max for participant should not be greater than the max for measure

    @adminui @payoutcapping @payoutConfig @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the payout capping where the max value is set for the participant and the measure and the total participants cummulative value should not be greater than the max value set for the measure

    @adminui @payoutcapping @payoutConfig @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the rules cannot be configured to get the max value for the participant and the measure

    #Preloaded sales - with users

    @adminui @payoutcapping @PreloadedSales_withUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot be awarded more than the max value set for the participant

    @adminui @payoutcapping @PreloadedSales_withUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the sales with users and max payout points where the points should be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the sales with users and points more than the max payout points where the points should not be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the second sales file with users and max payout points where the user already achieved the max payout points level so that the points should not be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the second sales with users and points where the total users points should not be greater than the max payout points set for the measure

    #Preloaded sales - Without users

    @adminui @payoutcapping @PreloadedSales_withoutUsers @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the sales without users and the user can able to claim the sales so that the points should be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withoutUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the sales without users and the user cannot able to claim the sales more than the max payout points so that the points should not be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withoutUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the second sales without users and the user already achieved the max payout points level so that the points should not be awarded to the users

    @adminui @payoutcapping @PreloadedSales_withoutUsers @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin uploads the second sales without users and when the max payout points is achieved by the user at that time when challenged is made and points are reverted, he can able to claim till the target of max payout points 

    #Invoice Claim

    @adminui @payoutcapping @invoiceClaim @system @special @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload the sales file and claim the rewards not more than the max payout capping

     @adminui @payoutcapping @invoiceClaim @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
     Scenario: Verify the user cannot claim more than the max payout capping value by uploading the invoice file

    @adminui @payoutcapping @invoiceClaim @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user cannot awarded the reward more than the max payout capping when they upload the sales data multiple times

    @adminui @payoutcapping @invoiceClaim @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload the sales file with value more than the max payout capping and the points are not awarded to them

    @adminui @payoutcapping @invoiceClaim @system @special @functional @negative @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user upload the sales file and rejected by the admin so that the points are not awarded and the user can again reclaim it where the value should not be more than the max payout capping points