Feature: Measure Rule Trigger

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the trigger type can be set as manual in measure rule

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the trigger type can be set as event based in measure rule

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the trigger type can be set as onScheduled in measure rule

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as manual and the trigger should be triggered manually

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as event based and the trigger should be triggered based on the selected event

    @adminui @measureTrigger @triggerConfig @system @form @functional @positive @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as onScheduled and the trigger should be triggered based on the scheduled time

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as manual and the trigger should not be triggered onSchedule or event based

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as event based and the trigger should not be triggered onSchedule or manual

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify the configured trigger type as onScheduled and the trigger should not be triggered onManual or event based

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the measure trigger is made, the rewards should be awarded based on the configured measure rule

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the promotion has multiple measure with different triggers are configured in each measure

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify when the promotion has multiple measure with same triggers are configured in each measure and the rewards should be awarded based on the configured measure rule

    @adminui @measureTrigger @triggerConfig @system @form @functional @negative @reviewed @superadmin @notupdated @notautomated
    Scenario: Verify when trigger is made outside the promotion period the rewards are not awarded to the user