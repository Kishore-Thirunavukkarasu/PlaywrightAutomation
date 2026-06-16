Feature: Claim Form Approver flow with set of users

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =



    #Claim Approval

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers can be configured in the promotion along with the claim form name

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers cannot be configured in the promotion without the claim form name

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers can able to see the claims of products and behaviours in the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers cannot able to see the claims of products and behaviours in the other promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver can approve the claim for the products and behaviours within the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver cannot approve the claim for the products and behaviours outside the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver can reject the claim for the products and behaviours within the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver cannot reject the claim for the products and behaviours outside the promotion

    @adminui @claimFormConfiguration_approval @CMF016ResolutionAndResubmissionWindow @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver can resolve the challenge for the products and behaviours within the promotion

    @adminui @claimFormConfiguration_approval @CMF016ResolutionAndResubmissionWindow @system @special @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver cannot resolve the challenge for the products and behaviours outside the promotion

    @adminui @claimFormConfiguration_approval @CMF019ApproverPage @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval page can be displayed to the approver for the promotion

    @adminui @claimFormConfiguration_approval @CMF019ApproverPage @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claims can be filtered based on the fields configured to the claim form

    @adminui @claimFormConfiguration_approval @CMF015ClaimAndChallengeWindow @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved only after the challenge is resolved for the preloaded sales claim

    @adminui @claimFormConfiguration_approval @CMF015ClaimAndChallengeWindow @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim cannot be approved before the challenge is resolved for the preloaded sales claim

    @adminui @claimFormConfiguration_approval @CMF023FormConfigurationAndDeadlines @system @form @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales claimed by the participant can be approved by the approver before the buffer days from the sales date for the invoice claim

    @adminui @claimFormConfiguration_approval @CMF023FormConfigurationAndDeadlines @system @form @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the sales claimed by the participant cannot be approved by the approver after the buffer days from the sales date for the invoice claim

    @adminui @claimFormConfiguration_approval @CMF041ClaimForm_BehaviourEligibility @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim from the specific behaviour promotion can be visible and approved by the approver

    @adminui @claimFormConfiguration_approval @CMF044ClaimApproval_Hierarchy_Jobrole @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by the approver of specific jobrole for the promotion


    #Hierarchy based approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver type as "Hierarchy" for the promotion

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers from hierarchy boundry can only see the claims done by participants

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers from hierarchy boundry cannot see the claims done by other approvers

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers from hierarchy boundry of an organization can approve the claim

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers not from hierarchy boundry of an organization cannot approve the claim

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers by checking the "within selling organization only" is enabled

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the "within selling organization only" is enabled, the approvers can be specified to jobroles only within the selling organization

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @system @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the "within selling organization only" is enabled, the approvers cannot be specified to jobroles outside the selling organization

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the "within selling organization only" is enabled, approvers from the assigned jobroles can only see the claims done by participants

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @system @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify when the "within selling organization only" is enabled, approvers from the other jobroles cannot see the claims done by participants

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers from the assigned jobroles can approve the claim

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers from the other jobroles cannot approve the claim even though they are in the hierarchy boundry

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify multiple jobroles can be added for the approvers in the promotion

    #Open Approval

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approver type as "Open" for the promotion

    @adminui @claimFormConfiguration_approval @CMF018ClaimApproval_Open @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approvers can be a audience group for the promotion in open approval

    @adminui @claimFormConfiguration_approval @CMF018ClaimApproval_Open @navigation @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by the configured audience group from a promotion in open approval

    @adminui @claimFormConfiguration_approval @CMF018ClaimApproval_Open @navigation @list @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim cannot be approved by the other audience group from a promotion in open approval

    #Approval Levels

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval level can be configured for the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval level can be configured as L1 and L2 for the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval type as open approval for L1 and hierarchy approval for L2

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval type as hierarchy approval for L1 and open approval for L2

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval type as hierarchy approval for L1 and L2

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the approval type as open approval for L1 and L2

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by the approvers in the configured level

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by L1 approver and approved by L2 approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by L1 approver and rejected by L2 approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be rejected by L1 approver and cannot go for L2 approval

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved when the L1 and L2 approvers are same

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by super approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be rejected by L1, L2 approver and approved by super approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be rejected by L1, L2 approver and rejected by super approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by L1, L2 approver and rejected by super approver

    @adminui @claimFormConfiguration_approval @CMF016ResolutionAndResubmissionWindow @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the challenge can be resolved by super approver

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim can be approved by the super approver when L1 and L1 is not approved

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim related notification can be configured and triggered to the approver for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @list @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the claim related notification can be configured in multiple languages to the approver for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification has been triggered to approver upon every claim status change for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification has been triggered to approver upon pending resolution of the challenge for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification has been triggered to approver when banking is done successfully for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification has been triggered to approver when the claim is rejected for the promotion

    @adminui @claimFormConfiguration_approval @CMF005Claim_Notification @system @special @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify the notification has been triggered to approver when the claim is resubmitted for the promotion

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify users can see the claim approval page of those claim forms in menu which are associated with promotions where they are responsible for resolving

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when open approval has been selected for a claim form, then everyone in resolving audience will be able to resolve claims of all users who claimed using the claim form

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when hierarchical approval by specific job roles has been selected for a claim form and "within organisation only" is selected, then only users belonging to claimer organisation having the specified job roles will be able to resolve

    @adminui @claimFormConfiguration_approval @CMF017ClaimApproval_Hierarchy @integration @configure @functional @negative @reviewed @superadmin @updated @notautomated
    Scenario: Verify when hierarchical approval by specific job roles has been selected for a claim form and "within organisation only" is not selected, then users having the job role and belonging to claimer organisation or to organisations within its hierarchical boundary will be able to resolve

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify users can see the claim approval page of those claim forms in menu which are associated with promotions where they are responsible for resolving

    @adminui @claimFormConfiguration_approval @CMF003ClaimApprovalSettings @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
    Scenario: Verify when open approval has been selected for a claim form, then everyone in resolving audience will be able to resolve claims of all users who claimed using the claim form
