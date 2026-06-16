Feature: Dynamic Tiering Test-Cases

    # Created by : kishore Gunasekaran
    # Updated by :
    # Reviewed by :
    # Created on : 20-05-2025

    #PlatformTier
    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history Pages (dashboard)
        Given admin user has configured the tier history Pages
        When admin user navigates to the tier history Pages in the platform site
        Then the tier history Pages should be displayed with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier dashboard Pages
        Given admin user has configured the tier dashboard Pages
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier dashboard Pages should be displayed with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history dashboard (widgets)
        Given admin user has configured the tier history dashboard widget
        When admin user navigates to the tier history dashboard widget in the platform site
        Then the tier history dashboard widget should be displayed with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history Pages and widgets (Tier)
        Given admin user has configured the tier history Pages
        When admin user navigates to the tier history Pages in the platform site
        Then the tier history Pages should be displayed with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience refresh on the tier update for participant
        Given admin user has configured the audience refresh on the tier update for participant
        When admin user triggers the audience refresh on the tier update for participant using the cron
        Then the audience refresh on the tier update for participant should be successful

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience refresh on the tier update for organization
        Given admin user has configured the audience refresh on the tier update for organization
        When admin user triggers the audience refresh on the tier update for organization using the cron
        Then the audience refresh on the tier update for organization should be successful

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history section (no entries)
        Given admin user has configured the tier history section with no entries - users or organizations
        When admin user navigates to the tier history section in the platform site
        Then the tier history section should display a message indicating no entries found

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history history updates on the tier changes - participant tier upgrade
        Given admin user has configured the tier history history updates on the tier changes for participant tier upgrade
        When admin user triggers the tier history history updates on the tier changes for participant tier upgrade
        Then the tier history history should be updated with the correct data for participant tier upgrade

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history history updates on the tier changes - participant tier downgrade
        Given admin user has configured the tier history history updates on the tier changes for participant tier downgrade
        When admin user triggers the tier history history updates on the tier changes for participant tier downgrade
        Then the tier history history should be updated with the correct data for participant tier downgrade

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history history updates on the tier changes - participant tier change
        Given admin user has configured the tier history updates on the tier changes for participant tier change
        When admin user triggers the tier history updates on the tier changes for participant tier change
        Then the tier history should be updated with the correct data for participant tier change

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history history updates on the tier changes - participant tier change to a different tier
        Given admin user has configured the tier history updates on the tier changes for participant tier change to a different tier
        When admin user triggers the tier history updates on the tier changes for participant tier change to a different tier from silver to gold tier
        Then the tier history should be updated with the correct data for participant tier change to a different tier

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history history updates on the tier changes - participant tier change to a different tier with a different reason
        Given admin user has configured the tier history updates on the tier changes for participant tier change to a different tier with a different reason
        When admin user triggers the tier history updates on the tier changes for participant tier change to a different tier with a different reason
        Then the tier history should be updated with the correct data for participant tier change to a different tier with a different reason

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates for the organization for the upgrade
        Given admin user has configured the tier updates for the organization tier for the upgrade
        When admin user triggers the tier updates for the organization for the upgrade
        Then the tier updates for the organization should be successful with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates for the organization for the downgrade
        Given admin user has configured the tier updates for the organization tier for the downgrade
        When admin user triggers the tier updates for the organization for the downgrade
        Then the tier updates for the organization should be successful with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates for the organization for the no change
        Given admin user has configured the tier updates for the organization tier for the no change - retention
        When admin user triggers the tier updates for the organization for the no change - retention
        Then the tier updates for the organization should be successful with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates for the organization for the change to a different tier
        Given admin user has configured the tier updates for the organization tier for the change to a different tier
        When admin user triggers the tier updates for the organization for the change to a different tier
        Then the tier updates for the organization should be successful with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates for the organization for the change to a different tier with a different reason
        Given admin user has configured the tier updates for the organization tier for the change to a different tier with a different reason
        When admin user triggers the tier updates for the organization for the change to a different tier with a different reason
        Then the tier updates for the organization should be successful with the correct data

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the pagination in the tier history page
        Given admin user has enabled the pagination in the tier history page
        When admin user navigates to the tier history page in the platform site
        Then the pagination in the tier history page should be displayed with the correct data
        When admin user check for the pagination in the tier history page
        Then the pagination in the tier history page should be successful

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus statement and tier bonus points earned through all the promotions
        Given admin user has configured the tier bonus statement and tier bonus points for all the promotions
        When admin user triggers the tier bonus statement and tier bonus points for all the promotions
        Then the tier bonus statement and tier bonus points for all the promotions should be successful with the correct data

    #TierAudience  Audience creation using tier - 0094

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience creation using tier
        Given admin user has configured the audience creation using tier segments
        When admin user navigates to the audience creation page
        Then the audience creation using tier conditions should be successful with the correct data

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience creation using users
        Given admin user has configured the audience creation using user segments
        When admin user navigates to the audience creation page
        Then the audience creation using user conditions should be successful with the correct data

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience creation using organization
        Given admin user has configured the audience creation using organization segments
        When admin user navigates to the audience creation page
        Then the audience creation using organization conditions should be successful with the correct data

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the audience creation using users and organization
        Given admin user has configured the audience creation using user and organization segments
        When admin user navigates to the audience creation page
        Then the audience creation using user and organization conditions should be successful with the correct data

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user audience so admin user can use the user audience in the content pages with the tier
        Given admin user has configured the user audience
        When admin user navigates to the content page with the tier
        Then the user audience should be displayed correctly in the content page with the tier

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation audience so admin user can use the organisation audience in the content pages with the tier
        Given admin user has configured the organisation audience
        When admin user navigates to the content page with the tier
        Then the organisation audience should be displayed correctly in the content page with the tier

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user and organisation audience so admin user can use the user and organisation audience in the content pages with the tier
        Given admin user has configured the user and organisation audience
        When admin user navigates to the content page with the tier
        Then the user and organisation audience should be displayed correctly in the content page with the tier

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user audience so admin user can use the user audience in the promotions pages with the tier
        Given admin user has configured the user audience
        When admin user navigates to the promotions page with the tier
        Then the user audience should be displayed correctly in the promotions page with the tier

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation audience so admin user can use the organisation audience in the promotions pages with the tier
        Given admin user has configured the organisation audience
        When admin user navigates to the promotions page with the tier
        Then the organisation audience should be displayed correctly in the promotions page with the tier

    @adminui @dynamictiering @TierAudience @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user and organisation audience so admin user can use the user and organisation audience in the promotions pages with the tier
        Given admin user has configured the user and organisation audience
        When admin user navigates to the promotions page with the tier
        Then the user and organisation audience should be displayed correctly in the promotions page with the tier

    #PlatformTier Different primary colours based on tiers

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure the primary colours for the tier for website
        Given admin user has configured the primary colours for the tier for website
        When admin user navigates to the tier configuration page in the platform website
        Then the primary colours for the tier should be displayed correctly in the platform website

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure the primary colours for the tier for the mobile applications
        Given admin user has configured the primary colours for the tier for mobile applications
        When admin user navigates to the tier configuration page in the platform mobile application
        Then the primary colours for the tier should be displayed correctly in the platform mobile application

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the participant (platform user) can able to see the colour changes for the tier in the platform portal
        Given admin user has configured the primary colours for the tier for website
        When participant user navigates to the tier details page in the platform portal
        Then the primary colours for the tier should be displayed correctly in the platform portal as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure primary colour for Gold tier (website)
        Given admin user has configured the primary colour for Gold tier in the platform website
        When admin user navigates to the tier configuration page in the platform website
        Then the primary colour for Gold tier should be displayed correctly in the platform website

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure primary colour for silver tier
        Given admin user has configured the primary colour for Silver tier in the platform website
        When admin user navigates to the tier configuration page in the platform website
        Then the primary colour for Silver tier should be displayed correctly in the platform website

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure primary colour for Gold tier in mobile application
        Given admin user has configured the primary colour for Gold tier in the platform mobile application
        When admin user navigates to the tier configuration page in the platform mobile application
        Then the primary colour for Gold tier should be displayed correctly in the platform mobile application

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the admin user can able to configure primary colour for silver tier in mobile application
        Given admin user has configured the primary colour for Silver tier in the platform mobile application
        When admin user navigates to the tier configuration page in the platform mobile application
        Then the primary colour for Silver tier should be displayed correctly in the platform mobile application

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the configuration for the primary colours for both mobile and website
        Given admin user has configured the primary colours for the tier for website
        When admin user navigates to the tier configuration page in the platform website
        Then the primary colours for the tier should be displayed correctly in the platform website

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the configuration for the primary colours for both mobile and website for the tier
        Given admin user has configured the primary colours for the tier for mobile applications
        When admin user navigates to the tier configuration page in the platform mobile application
        Then the primary colours for the tier should be displayed correctly in the platform mobile application

    #PlatformTier Participant tier dashboard – FAQ (pages and widgets)

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ for the tiers in the tier dashboard Pages
        Given admin user has configured the FAQ Pages for the tiers in the tier dashboard Pages
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the FAQ pages for the tiers should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ for the tier for specfic Program can be created
        Given admin user has configured the FAQ for the tier for specific Program
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the FAQ for the tier for specific Program should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ can be created through the CMS
        Given admin user has configured the FAQ for the tiers in the CMS - configure from strapi admin site
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the FAQ for the tiers should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ Pages for the participant tier dashboard for website
        Given admin user has configured the FAQ Pages for the participant tier dashboard for website
        When admin user navigates to the participant tier dashboard Pages in the platform site
        Then the FAQ pages for the participant tier dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ Widgets for the participant tier dashboard for website
        Given admin user has configured the FAQ Widgets for the participant tier dashboard for website
        When admin user navigates to the participant tier dashboard Pages in the platform site
        Then the FAQ widgets for the participant tier dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ Pages for the participant tier dashboard for mobile application
        Given admin user has configured the FAQ Pages for the participant tier dashboard for mobile application
        When admin user navigates to the participant tier dashboard Pages in the platform mobile application
        Then the FAQ pages for the participant tier dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the FAQ Widgets for the participant tier dashboard for mobile application
        Given admin user has configured the FAQ Widgets for the participant tier dashboard for mobile application
        When admin user navigates to the participant tier dashboard Pages in the mobile application
        Then the FAQ widgets for the participant tier dashboard should be displayed as per the configuration in the mobile application

    #PlatformTier Participant tier dashboard – Tier privileges (CMS) (pages and widgets)

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard in the website
        Given admin user has configured the tier privileges content in the dashboard
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard in the mobile application
        Given admin user has configured the tier privileges content in the dashboard
        When admin user navigates to the tier dashboard Pages in the mobile application
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard in the website for the specific program
        Given admin user has configured the tier privileges content in the dashboard for the specific program
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard for the specific tier
        Given admin user has configured the tier privileges content in the dashboard for the specific tier
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard for the specific tier in the mobile application
        Given admin user has configured the tier privileges content in the dashboard for the specific tier
        When admin user navigates to the tier dashboard Pages in the mobile application
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier privileges content in the dashboard for the specific tier in the mobile application for the specific program
        Given admin user has configured the tier privileges content in the dashboard for the specific tier for the specific program
        When admin user navigates to the tier dashboard Pages in the mobile application
        Then the tier privileges content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier CMS Privileges Content for different tiers in the dashboard for the website
        Given admin user has configured the tier CMS Privileges Content for different tiers in the dashboard
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier CMS Privileges Content for different tiers in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier CMS Pages in the dashboard for the website
        Given admin user has configured the tier CMS Pages
        When admin user navigates to the tier dashboard Pages in the platform site
        Then the tier CMS Pages in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier CMS Widgets in the dashboard for the website
        Given admin user has configured the tier CMS Widgets
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier CMS Widgets in the dashboard should be displayed as per the configuration

    # PlatformTier Participant tier dashboard – Tier bonuses (pages and widgets)

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonuses earned content in the dashboard in the website
        Given admin user has configured the tier bonuses earned content in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier bonuses earned content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonuses earned content in the dashboard in the mobile application
        Given admin user has configured the tier bonuses earned content in the dashboard
        When user navigates to the tier dashboard Pages in the mobile application
        Then the tier bonuses earned content in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus earned from other promotions in the dashboard in the website
        Given admin user has configured the tier bonus earned from other promotions in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier bonus earned from other promotions in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus earned from other promotions in the dashboard in the mobile application
        Given admin user has configured the tier bonus earned from other promotions in the dashboard
        When user navigates to the tier dashboard Pages in the mobile application
        Then the tier bonus earned from other promotions in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus pages in the dashboard for the website
        Given admin user has configured the tier bonus pages in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier bonus pages in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus widgets in the dashboard for the website
        Given admin user has configured the tier bonus widgets in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier bonus widgets in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus pages in the dashboard for the mobile application
        Given admin user has configured the tier bonus pages in the dashboard
        When user navigates to the tier dashboard Pages in the mobile application
        Then the tier bonus pages in the dashboard should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier bonus widgets in the dashboard for the mobile application
        Given admin user has configured the tier bonus widgets in the dashboard
        When user navigates to the tier dashboard Pages in the mobile application
        Then the tier bonus widgets in the dashboard should be displayed as per the configuration

    #PlatformTier , 0085 Participant tier display in home page

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the participant tier is displayed in the platform site home page
        Given admin user has configured the participant tier display in the home page
        When user navigates to the home page of the platform site
        Then the participant tier should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier display enabled in the admin site, So tier displayed will be displayed in the platform Site
        Given admin user has configured the tier display in the admin site
        When user navigates to the platform site
        Then the tier should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier display disabled in the admin site, so tier will not be shown in the platform site
        Given admin user has configured the tier display in the admin site
        When user navigates to the platform site
        Then the tier should not be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the toggle button for the tier display enabled / disabled
        Given admin user has configured the tier display toggle button in the admin site
        When user navigates to the platform site
        Then the tier display toggle button should be enabled / disabled as per the configuration
        Then the tier should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the participant tier is displayed in the platform site home page as per the configuration in the mobile application
        Given admin user has configured the participant tier display in the home page
        When user navigates to the home page of the mobile application
        Then the participant tier should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation based tier is disabled when the configuration for is disabled, organisation users should not shown with tier in the platform Site
        Given admin user has configured the organisation based tier is disabled
        When user navigates to the platform site
        Then the organisation based tier should not be displayed as per the configuration

    #PlatformTier Participant tier dashboard- Tier Card (pages and widgets)

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card for the Participant current tier
        Given admin user has configured the participant tier card in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the participant tier card should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card for the organisation based users with the current tier
        Given admin user has configured the organisation based tier card in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the organisation based tier card should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card for the Participant current tier in the mobile application
        Given admin user has configured the participant tier card in the dashboard
        When user navigates to the tier dashboard Pages in the mobile application
        Then the participant tier card should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card widget for the participant tier dashboard
        Given admin user has configured the participant tier card widget in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the participant tier card widget should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card, Till the next refresh happens From silver to gold
        Given admin user has configured the tier card in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier card should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier card, till the next refresh happens from gold to silver
        Given admin user has configured the tier card in the dashboard
        When user navigates to the tier dashboard Pages in the platform site
        Then the tier card should be displayed as per the configuration

    # PlatformTier , 0089 Participant tier dashboard – Tier Card (pages and widgets)

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: As a participant, I want to see how much incremental performance is needed to retain my tier in tier dashboard page
        Given admin user has configured the incremental performance metrics for the participant tier
        When user navigates to the tier dashboard page
        Then the incremental performance metrics should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify as a user how much points , score to incremental performance is needed to retain the tier
        Given admin user has configured the incremental performance metrics for the participant tier
        When user navigates to the tier dashboard page
        Then the incremental performance metrics should be displayed as per the configuration

    @adminui @dynamictiering @PlatformTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: As a participant, I want to see how much incremental performance is needed to upgrade my tier to the higher tiers, in tier dashboard page
        Given admin user has configured the incremental performance metrics for the participant tier
        When user navigates to the tier dashboard page
        Then the incremental performance metrics should be displayed as per the configuration

    #TierReport Manager Report for Active Tier Setup

    @adminui @dynamictiering @TierReport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history users reports
        Given admin user has configured the tier history report for users
        When admin user generates the tier history report for users
        Then the tier history report should include the following columns: User, Organisation, Tier, Start Date, End Date, Status

    @adminui @dynamictiering @TierReport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history organisation reports
        Given admin user has configured the tier history report for organisations
        When admin user generates the tier history report for organisations
        Then the tier history report should include the following columns: Organisation, Tier, Start Date, End Date, Status

    @adminui @dynamictiering @TierReport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation tier distribution by hierarchy reports
        Given admin user has configured the organisation tier distribution report by hierarchy
        When admin user generates the organisation tier distribution report by hierarchy
        Then the organisation tier distribution report should include the following columns: Organisation, Tier, Count

    @adminui @dynamictiering @TierReport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the users tier distribution by hierarchy reports
        Given admin user has configured the users tier distribution report by hierarchy
        When admin user generates the users tier distribution report by hierarchy
        Then the users tier distribution report should include the following columns: User, Tier, Count

    @adminui @dynamictiering @TierReport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Manager reports for the tier
        Given admin user has configured the manager report for the tier
        When admin user generates the manager report for the tier
        Then the manager report should include the following columns: User, Organisation, Tier, Start Date, End Date, Status

    #TierApi , 0082  API for  Tier History of a single User/Organisation

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Single user API for the tier history
        Given admin user has the single user API for the tier history
        When admin user triggers the single user API for the tier history
        Then the single user API for the tier history should return the correct data for the users

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history API
        Given admin user has the tier history API
        When admin user triggers the tier history API
        Then the tier history API should return the correct data for the users

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation tier history API
        Given admin user has the organisation tier history API
        When admin user triggers the organisation tier history API
        Then the organisation tier history API should return the correct data for the organisations

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Latest tier of users in the API
        Given admin user has the latest tier API for users
        When admin user triggers the latest tier API for users
        Then the latest tier API for users should return the correct data for the users

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Latest tier of the organisation in the API
        Given admin user has the latest tier API for organisations
        When admin user triggers the latest tier API for organisations
        Then the latest tier API for organisations should return the correct data for the organisations

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: As an Admin, I want an API that provides the tier history of a specific user so that customer applications can fetch and display the most up-to-date tier information.
        Given admin user has the single user API for the tier history
        When admin user triggers the single user API for the tier history
        Then the single user API for the tier history should return the correct data for the users

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD for the API for Latest Tier of a single User
        Given admin user has configured the CRUD operation for the latest tier of a single user
        When admin user triggers the CRUD operation
        Then the latest tier of a single user should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the create operation for the latest tier of a single user
        Given admin user has configured the create operation for the latest tier of a single user
        When admin user triggers the create operation
        Then the latest tier of a single user should be created successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the read operation for the latest tier of a single user
        Given admin user has configured the read operation for the latest tier of a single user
        When admin user triggers the read operation
        Then the latest tier of a single user should be read successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the update operation for the latest tier of a single user
        Given admin user has configured the update operation for the latest tier of a single user
        When admin user triggers the update operation
        Then the latest tier of a single user should be updated successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the delete operation for the latest tier of a single user
        Given admin user has configured the delete operation for the latest tier of a single user
        When admin user triggers the delete operation
        Then the latest tier of a single user should be deleted successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD for the API for Latest Tier of a single Organisation
        Given admin user has configured the CRUD operation for the latest tier of a single organisation
        When admin user triggers the CRUD operation
        Then the latest tier of a single organisation should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the create operation for the latest tier of a single organisation
        Given admin user has configured the create operation for the latest tier of a single organisation
        When admin user triggers the create operation
        Then the latest tier of a single organisation should be created successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the read operation for the latest tier of a single organisation
        Given admin user has configured the read operation for the latest tier of a single organisation
        When admin user triggers the read operation
        Then the latest tier of a single organisation should be read successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the update operation for the latest tier of a single organisation
        Given admin user has configured the update operation for the latest tier of a single organisation
        When admin user triggers the update operation
        Then the latest tier of a single organisation should be updated successfully

    @adminui @dynamictiering @TierApi @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the delete operation for the latest tier of a single organisation
        Given admin user has configured the delete operation for the latest tier of a single organisation
        When admin user triggers the delete operation
        Then the latest tier of a single organisation should be deleted successfully

    #PHOENIX_TIER_TierHooks  Push User Tiers to Customer Application via Execute Query Hook

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Query hook to push user tiers from Channel Smart
        Given admin user has configured the execute query hook to push user tiers
        When admin user triggers the execute query hook
        Then the user tiers should be pushed to Channel Smart application from the external application

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the execute query for the tiers
        Given admin user has configured the execute query for the tiers
        When admin user triggers the execute query
        Then the tiers should be pushed to Channel Smart application from the external application

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Query hook to push organisation tiers
        Given admin user has configured the execute query hook to push organisation tiers
        When admin user triggers the execute query hook
        Then the organisation tiers should be pushed to Channel Smart application from the external application

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the tiers
        Given admin user has configured the CRUD operation for the tiers
        When admin user triggers the CRUD operation
        Then the tiers should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the users tiers
        Given admin user has configured the CRUD operation for the users tiers
        When admin user triggers the CRUD operation
        Then the users tiers should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the organisation tiers
        Given admin user has configured the CRUD operation for the organisation tiers
        When admin user triggers the CRUD operation
        Then the organisation tiers should be created, read, updated, and deleted successfully

    #79 Log Bulk Tier Changes in History Table

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier updates via the Execute Flow hook to also log the changes in user tier history tables
        Given admin user has configured the execute flow hook to log changes in user tier history tables
        When admin user triggers the execute flow hook
        Then the changes in user tier history tables should be logged successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the bulk tier updates via the Execute Flow hook to also log the changes in organisation tier history tables
        Given admin user has configured the execute flow hook to log changes in organisation tier history tables
        When admin user triggers the execute flow hook
        Then the changes in organisation tier history tables should be logged successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD for the excute flow for the tier changes in the tier history table
        Given admin user has configured the execute flow hook for the tier changes in the tier history table
        When admin user triggers the execute flow hook
        Then the tier changes in the tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD for the excute flow for the user tier history table
        Given admin user has configured the execute flow hook for the user tier history table
        When admin user triggers the execute flow hook
        Then the user tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD for the excute flow for the organisation tier history table
        Given admin user has configured the execute flow hook for the organisation tier history table
        When admin user triggers the execute flow hook
        Then the organisation tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Flow hook to log bulk tier changes in history table
        Given admin user has configured the execute flow hook to log bulk tier changes in history table
        When admin user triggers the execute flow hook
        Then the bulk tier changes in history table should be logged successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Flow hook to log changes in user tier history tables
        Given admin user has configured the execute flow hook to log changes in user tier history tables
        When admin user triggers the execute flow hook
        Then the changes in user tier history tables should be logged successfully

    #78 Bulk Insert User Tiers via Execute Flow Hook

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Flow hook to bulk insert user tiers
        Given admin user has configured the execute flow hook to bulk insert user tiers
        When admin user triggers the execute flow hook
        Then the user tiers should be bulk inserted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Flow hook to bulk insert organisation tiers
        Given admin user has configured the execute flow hook to bulk insert organisation tiers
        When admin user triggers the execute flow hook
        Then the organisation tiers should be bulk inserted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the execute Flow hook
        Given admin user has configured the execute flow hook for the CRUD operations
        When admin user triggers the execute flow hook
        Then the CRUD operations should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the user tier history table
        Given admin user has configured the execute flow hook for the user tier history table
        When admin user triggers the execute flow hook
        Then the user tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation tier history table
        Given admin user has configured the execute flow hook for the organisation tier history table
        When admin user triggers the execute flow hook
        Then the organisation tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier execute Flow hook
        Given admin user has configured the execute flow hook for the tier changes in the tier history table
        When admin user triggers the execute flow hook
        Then the tier changes in the tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the user tier execute Flow hook
        Given admin user has configured the execute flow hook for the user tier history table
        When admin user triggers the execute flow hook
        Then the user tier history table should be created, read, updated, and deleted successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the organisation tier execute Flow hook
        Given admin user has configured the execute flow hook for the organisation tier history table
        When admin user triggers the execute flow hook
        Then the organisation tier history table should be created, read, updated, and deleted successfully

    #77 Configure Conditional Operations in Hooks

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the conditional operations in the Execute Command hook so that only specific tiers (e.g., Platinum & Gold) are synced from customer application to Channel Smart
        Given admin user has configured the execute command hook to sync specific tiers
        When admin user triggers the execute command hook
        Then only the specified tiers should be synced to Channel Smart

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the conditional operation in the execute command hook so that only specific tiers for users - tier gold are synced to CS application
        Given admin user has configured the execute command hook to sync specific tiers for users
        When admin user triggers the execute command hook
        Then only the specified tiers for users should be synced to CS application

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the conditional operation in the execute command hook so that only specific tiers from organisation tiers - tier gold are synced to CS Application
        Given admin user has configured the execute command hook to sync specific tiers from organisation tiers
        When admin user triggers the execute command hook
        Then only the specified tiers from organisation tiers should be synced to CS Application

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the conditional operation in the execute command hooks
        Given admin user has configured the execute command hook for the conditional operation
        When admin user triggers the execute command hook
        Then the CRUD operations for the conditional operation should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: verify the create operation for the conditional operation
        Given admin user has configured the execute command hook for the conditional operation
        When admin user triggers the execute command hook
        Then the create operation for the conditional operation should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: verify the read operation for the conditional operation
        Given admin user has configured the execute command hook for the conditional operation
        When admin user triggers the execute command hook
        Then the read operation for the conditional operation should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: verify the update operation for the conditional operation
        Given admin user has configured the execute command hook for the conditional operation
        When admin user triggers the execute command hook
        Then the update operation for the conditional operation should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: verify the delete operation for the conditional operation
        Given admin user has configured the execute command hook for the conditional operation
        When admin user triggers the execute command hook
        Then the delete operation for the conditional operation should be performed successfully

    #76 Update Tier History via Hook

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Command hook to update tables such as user tier history table
        Given admin user has configured the execute command hook to update user tier history table
        When admin user triggers the execute command hook
        Then the user tier history table should be updated successfully with correct data

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Execute Command hook to update dependent tables such as organisation tier history table
        Given admin user has configured the execute command hook to update organisation tier history table
        When admin user triggers the execute command hook
        Then the organisation tier history table should be updated successfully with correct data

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD operation for the execute command hook for the users tier history table
        Given admin user has configured the execute command hook for the users tier history table
        When admin user triggers the execute command hook
        Then the CRUD operations for the users tier history table should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD operation for the execute command hook for the organisation tier history table
        Given admin user has configured the execute command hook for the organisation tier history table
        When admin user triggers the execute command hook
        Then the CRUD operations for the organisation tier history table should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the create operation for the organisation tier history table
        Given admin user has configured the execute command hook for the organisation tier history table
        When admin user triggers the execute command hook
        Then the create operation for the organisation tier history table should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the read operation for the organisation tier history table
        Given admin user has configured the execute command hook for the organisation tier history table
        When admin user triggers the execute command hook
        Then the read operation for the organisation tier history table should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the update operation for the organisation tier history table
        Given admin user has configured the execute command hook for the organisation tier history table
        When admin user triggers the execute command hook
        Then the update operation for the organisation tier history table should be performed successfully

    @adminui @dynamictiering @TierHooks @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the delete operation for the organisation tier history table
        Given admin user has configured the execute command hook for the organisation tier history table
        When admin user triggers the execute command hook
        Then the delete operation for the organisation tier history table should be performed successfully

    #0073 , 0074 , 0075  Prevent Tier Changes for Opted-Out Users or Organisations

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the system to prevent tier changes for opted-out users or organisations via Tier Rules as well as Tier Classification Import so that their tier remains locked until opt-out is removed via import
        Given the admin user has opted-out certain users or organisations from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out users or organisations should not have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier changes for the opted-out users via rules the tier remains same for the users
        Given the admin user has opted-out certain users from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out users should not have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier changes for the opted-out organisation via rules the tier remains same for the organisation
        Given the admin user has opted-out certain organisations from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out organisations should not have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tier and simultaneously opt-out a user from future refreshes so that their tier is locked at the assigned level
        Given the admin user has assigned a tier to a user
        And the admin user has opted-out the user from future tier changes
        When the admin user triggers the tier classification import
        Then the user's tier should remain locked at the assigned level

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign a tier and simultaneously opt-out organisation from future refreshes so that their tier is locked at the assigned level
        Given the admin user has assigned a tier to an organisation
        And the admin user has opted-out the organisation from future tier changes
        When the admin user triggers the tier classification import
        Then the organisation's tier should remain locked at the assigned level

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the there is no tier changes for the opted-out users
        Given the admin user has opted-out certain users from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out users should not have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the there is no tier changes for the opted-out organisation
        Given the admin user has opted-out certain organisations from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out organisations should not have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import for the opted-out tier users
        Given the admin user has opted-out certain users from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out users should have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the import for the opted-out tier organisation
        Given the admin user has opted-out certain organisations from tier changes
        When the admin user triggers the tier classification import
        Then the opted-out organisations should have their tiers changed

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message for the users is opted-out enabled for users and organisation
        Given the admin user has opted-out certain users from tier changes
        When the admin user triggers the tier classification import
        Then an error message should be displayed for the opted-out users

    @adminui @dynamictiering @OptoutinTier @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier classification upload for the specific users and organisation
        Given the admin user has opted-out certain users from tier changes
        And the admin user has opted-out certain organisations from tier changes
        When the admin user triggers the tier classification import
        Then an error message should be displayed for the opted-out users
        And an error message should be displayed for the opted-out organisations

    #71 , 72 Assign User Tiers and organisations tier via Tier Classification Import

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tiers to participants via a file upload
        Given the admin user has uploaded a file with participant tier assignments
        When the admin user triggers the import file for the users
        Then the users should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tier for organisation via file upload
        Given the admin user has uploaded a file with organisation tier assignments
        When the admin user triggers the import file for the organisations
        Then the organisations should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tier from gold to silver update for the participant via file upload
        Given the admin user has uploaded a file with participant tier assignments
        When the admin user triggers the import file for the users
        Then the users should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tier from gold to silver update for the organisation via file upload
        Given the admin user has uploaded a file with organisation tier assignments
        When the admin user triggers the import file for the organisations
        Then the organisations should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the assign tiers to participants and organisation via a file upload in the tier history table
        Given the admin user has uploaded a file with participant and organisation tier assignments
        When the admin user triggers the import file for the users and organisations
        Then the users and organisations should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the CRUD Operation for the tier classification import for users and organisation
        Given the admin user has uploaded a file with participant and organisation tier assignments
        When the admin user triggers the import file for the users and organisations
        Then the users and organisations should be assigned to the correct tiers based on the file

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Notifications are triggered after the file upload users is completed (If Notification Enabled)
        Given the admin user has uploaded a file with participant and organisation tier assignments
        When the admin user triggers the import file for the users and organisations
        Then the users and organisations should be assigned to the correct tiers based on the file
        And the  notifications will be sent

    @adminui @dynamictiering @ImportinTiers @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier history table after the file upload for the tiers
        Given the admin user has uploaded a file with participant and organisation tier assignments
        When the admin user triggers the import file for the users and organisations
        Then the users and organisations should be assigned to the correct tiers based on the file
        And the tier history table should be updated

    #PHOENIX_TIER_TierRules  Allow Adding New Tier Rules for Newly Added Tier Segments

    @adminui @dynamictiering @TierRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify creating new tier segments once the tier is published
        Given the admin user has published the membership tiering
        When the admin user creates new tier segments
        Then the new tier segments should be created successfully

    @adminui @dynamictiering @TierRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding the new tier segments into the membership tier
        Given the admin user has published the membership tiering
        When the admin user adds the new tier segments into the membership tier
        Then the new tier segments should be added successfully

    @adminui @dynamictiering @TierRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding the new tier segments into the membership tier with new tier rules for the newly created segments
        Given the admin user has published the membership tiering
        When the admin user adds the new tier segments into the membership tier with new tier rules
        Then the new tier segments should be added successfully with the new tier rules

    @adminui @dynamictiering @TierRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding the new rules for the older tier segments present in the membership tiering
        Given the admin user has published the membership tiering
        When the admin user adds the new rules for the older tier segments present in the membership tiering
        Then the new rules should not be added successfully for the older tier segments

    @adminui @dynamictiering @TierRules @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify adding additional rules for the older tier segments present in the membership tiering
        Given the admin user has published the membership tiering
        When the admin user adds additional rules for the older tier segments present in the membership tiering
        Then the additional rules should not be added successfully for the older tier segments

    # Movement Reports PHOENIX_TIER_0061 , PHOENIX_TIER_0062 , PHOENIX_TIER_0063 , PHOENIX_TIER_0064 , PHOENIX_TIER_0065  , PHOENIX_TIER_0066

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the generate a movement report daily for Static Tiering based on refresh frequency
        Given the admin user has configured the movement report for the static tiering with a daily refresh frequency
        When the admin user generates a movement report for the static tiering
        Then the movement report should be generated successfully with the correct data for the daily refresh frequency

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the generate a movement report weekly for Static Tiering based on refresh frequency
        Given the admin user has configured the movement report for the static tiering with a weekly refresh frequency
        When the admin user generates a movement report for the static tiering
        Then the movement report should be generated successfully with the correct data for the weekly refresh frequency

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the generate a movement report monthly for Static Tiering based on refresh frequency
        Given the admin user has configured the movement report for the static tiering with a monthly refresh frequency
        When the admin user generates a movement report for the static tiering
        Then the movement report should be generated successfully with the correct data for the monthly refresh frequency

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the generate a movement report one time for Static Tiering based on refresh frequency
        Given the admin user has configured the movement report for the static tiering with a one time refresh frequency
        When the admin user generates a movement report for the static tiering
        Then the movement report should be generated successfully with the correct data for the one time refresh frequency

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement reports for the users
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement reports for the organisation for the dynamic tiering
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering for organisation
        Then the movement report should include the following columns: Organisation, User, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier changes in the movement reports for users and organisation
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement for the dynamic tiering, as daily refresh period, users activated every day, so movement reports should generate daily
        Given the admin user has configured the movement report for the dynamic tiering with a daily refresh frequency
        When the users are getting activated daily, Example: user1 and user2
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should be generated successfully with the correct data for the daily refresh frequency

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement type in the movement reports for the users and organisation

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Movement Report should have a log table, some filters to filter the data in the log table
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user applies filters to the log table
        Then the log table should display the filtered data
        And the log table should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the download option to export filtered data to CSV/Excel in the movement report
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user applies filters to the log table
        Then the log table should display the filtered data
        And the log table should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason
        And the admin user should be able to download the filtered data as CSV/Excel

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the Opt-out flag prevents future tier change from Tier Setup rules. Movement Report in Tier Setup will capture Movement Status as “Unsuccessful” and Failure Reason as “Opt-Out”.

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement report to capture failed tier refreshes with failure reasons as opt-out
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should capture failed tier refreshes with failure reasons as opt-out
        And the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement report to capture failed tier refreshes with failure reasons as opt-out for the organisation
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should capture failed tier refreshes with failure reasons as opt-out for the organisation
        And the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement report to capture failed tier refreshes with failure reasons as opt-out for the users
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should capture failed tier refreshes with failure reasons as opt-out for the users
        And the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement report to capture failed tier refreshes with failure reasons as downgrade restriction
        Given the admin user has configured the movement report for the dynamic tiering
        When the admin user generates a movement report for the dynamic tiering
        Then the movement report should capture failed tier refreshes with failure reasons as downgrade restriction
        And the movement report should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the movement report to capture failed tier refreshes with failure reasons as segment conflict (entity belongs to multiple tier segments)

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filters in the movement reports
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table
        Then the log table should display the filtered data
        And the log table should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filter movement report by Refresh Date (from and to date)
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table by Refresh Date from date - to date
        Then the log table should display the filtered data
        And the log table should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filter movement report by Username
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table by Username
        Then the log table should display the filtered data using the Username

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filter movement report by  Movement Status (Success/Failed) and Failure Reason
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table by Movement Status with Success and failure and Failure Reason
        Then the log table should display the filtered data
        And the log table should include the following columns: User, Organisation, Movement Type, Movement Status, Failure Reason

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filter movement report by Organisation Code
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table by Organisation Code
        Then the log table should display the filtered data using the Organisation Code

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the filter movement report by Movement Type (Upgrade/Downgrade/No Change/Nullified)
        Given admin user has configured the movement report for the dynamic tiering
        When admin user applies filters to the log table by Movement Type with Upgrade, Downgrade, No Change, and Nullified
        Then the log table should display the filtered data with the applied filters

    @adminui @dynamictiering @Movementreport @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the  movement report to capture successful tier refreshes
        Given admin user has configured the movement report for the dynamic tiering
        When admin user generates a movement report for the dynamic tiering
        Then the movement report should capture successful tier refreshes

    #PHOENIX_TIER_0067 , 0068  Trigger Notifications for Tier Upgrades, retention, downgrades

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier upgrade Notifications
        Given user1 is on the membership tiering
        When the tier upgrade notification is enabled
        Then user1 tier upgrade from silver to gold tier
        Then tier upgrade notification will be sent to the user1

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier retention notifications
        Given user1 is on the membership tiering
        When the tier retention notification is enabled
        Then user1 tier upgrade from silver to silver tier
        Then tier retaintion notification will be sent to the user1

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier downgrade notifications
        Given user1 is on the membership tiering
        When the tier downgrade notification is enabled
        Then user1 tier downgrade from silver to bronze tier
        Then tier downgrade notification will be sent to the user1

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier nudge notifications
        Given user1 is on the membership tiering
        When the tier nudge notification is enabled
        Then user1 tier nudge from silver to gold tier
        Then tier nudge notification will be sent to the user1

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier assignment notifications
        Given user1 is on the membership tiering
        When user1 is assigned with the tier with gold tier
        Then the tier assignment notification enabled
        Then user1 will receive the tier assignment notification

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier refresh reminder notifications
        Given user1 is on the membership tiering
        When user1 is assigned with the tier with gold tier
        Then the tier refresh notification enabled
        Then the user will be reminded with daily refresh reminder notification

    @adminui @dynamictiering @TierNotification @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier refresh reminder notifications using a cron expression so that participants are reminded of upcoming tier refreshes at a set frequency
        Given user1 is on the membership tiering
        When user1 is assigned with the tier with gold tier
        Then the tier refresh notification enabled with the cron expression
        When the cron expression is set to daily
        Then the user will be reminded with daily refresh reminder notification

    #PHOENIX_TIER_0069  Tier Setup Closure

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: As an admin, I want tier assignments to stop immediately once a Tier Setup is closed so that no further resets occur under that setup and entities continue indefinitely with the last tier assigned
        Given tier setup is closed
        When a user is assigned to a tier
        Then the user should retain their last assigned tier

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the close tier cannot be published again for the membership tiering
        Given tier setup is closed
        When a user attempts to publish the closed tier setup
        Then the user should see an error message indicating that the tier setup cannot be published

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the error message for the closed tier set-up
        Given tier setup is closed
        When a user attempts to view the closed tier setup
        Then the user should see an error message indicating that the tier setup is closed

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up status as closed
        Given tier setup is closed
        When a user attempts to view the tier setup status
        Then the user should see the status as "Closed"

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Update status to “Closed” When a Tier Setup status is changed to "Closed" (from either "On Hold" or "Active") participants retain their most recent tier
        Given tier setup is closed
        When a participant is assigned to a tier
        Then the participant should retain their last assigned tier

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Update status to “Closed” When a Tier Setup status is changed to "Closed" (from either "On Hold" or "Active") Organisation retain their most recent tier
        Given tier setup is closed
        When an organisation is assigned to a tier
        Then the organisation should retain their last assigned tier

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify removing a previously added Tier Segments from published Tier Setup will not be allowed after publishing
        Given tier setup is published
        When a user attempts to remove a tier segment
        Then the user should see an error message indicating that the segment cannot be removed while published

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify closing the tier set-up and can able to create the new tier setup
        Given tier setup is closed
        When a user attempts to create a new tier setup
        Then the user should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name
        Given tier setup is closed
        When a user attempts to create a new tier setup with the same name
        Then the user should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name and same segments
        Given tier setup is closed
        When a user attempts to create a new tier setup with the same name and same segments
        Then the user should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name and same segments with different rules
        Given tier setup is closed
        When a user attempts to create a new tier setup with the same name and same segments with different rules
        Then the user should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name and same segments with different rules for the organisation
        Given tier setup is closed
        When an organisation attempts to create a new tier setup with the same name and same segments with different rules
        Then the organisation should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name and same segments with different rules for the users
        Given tier setup is closed
        When a user attempts to create a new tier setup with the same name and same segments with different rules
        Then the user should be able to create the new tier setup

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tier set-up can be closed and can be able to create a new tier set-up with the same name and same segments with different rules for the users and organisation with same rules
        Given tier setup is closed
        When an organisation and users attempts to create a new tier setup with the same name and same segments with different rules
        Then the organisation and users should be able to create the new tier setup

    #PHOENIX_TIER_TierSetupClosure , PHOENIX_TIER_0051, PHOENIX_TIER_0052 Suspend an Active Tier Setup Temporarily

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify change the Tier Setup status from "Active" to "On Hold" so that tier refreshes stop, and the last assigned tiers remain unchanged
        Given admin user has configured the tier setup with participants and  tier segments
        When user changes the tier setup status from "Active" to "On Hold"
        Then the tier refreshes should stop, and the last assigned tiers should remain unchanged

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify change the tier setup from onhold to published so the tier refresh starts again
        Given admin user has configured the tier setup with participants and  tier segments
        When user changes the tier setup status from "On Hold" to "Published"
        Then the tier refreshes should start again, and the last assigned tiers should be updated

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup status from active to closed, the tier refresh closed, no tier will be further moved
        Given admin user has configured the tier setup with participants and  tier segments
        When user changes the tier setup status from "Active" to "Closed"
        Then the tier refreshes should stop, and no further tier movements should occur

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify reactive the suspended tier setup (onhold to Active)
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "On Hold" to "Active"
        Then the tier refreshes should resume on the first reset date after the reactivation date

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify Permantly close of the tier setup
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Active" to "Closed"
        Then the tier refreshes should stop permanently, and no further tier movements should occur

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the Tier Setup status from "On Hold" to "Active" so that tier refreshes resume on the first reset date after the reactivation date
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "On Hold" to "Active"
        Then the tier refreshes should resume on the first reset date after the reactivation date

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup from onhold to active, the tier refresh starts again
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "On Hold" to "Active"
        Then the tier refreshes should start again, and the last assigned tiers should be updated

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup from onhold to active, the tier refresh starts again and the tier history table is updated with the latest tier
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "On Hold" to "Active"
        Then the tier refreshes should start again, and the last assigned tiers should be updated
        And the tier history table should be updated with the latest tier information

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup from onhold to active, the tier refresh starts again and the tier history table is updated with the latest tier for the organisation
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "On Hold" to "Active"
        Then the tier refreshes should start again, and the last assigned tiers should be updated
        And the tier history table should be updated with the latest tier information for the organisation

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup status to "Closed" so that no further tier refreshes stop permantently
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Active" to "Closed"
        Then the tier refreshes should stop, and no further tier movements should occur

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the change the tier setup status to "Closed" so that no further tier refreshes stop permantently and new tier setup must be created for future tiering
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Active" to "Closed"
        Then the tier refreshes should stop permanently, and no further tier movements should occur
        And a new tier setup must be created for future tiering

    @adminui @dynamictiering @TierSetupClosure @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify to change of the tier setup status as closed
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Active" to "Closed"
        Then the tier refreshes should stop, and no further tier movements should occur

    # PHOENIX_TIER_TierAfterPublish - Restrict Editing of Entity for Tiering and Tiering Type After Publishing

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tiering type cannot be changed after the tier setup is published
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tiering type from "Static" to "Dynamic"
        Then the tiering type should remain "Static"

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tiering type cannot be changed after the tier setup is published for the organisation
        Given admin user has configured the tier setup with participants and tier segments for the organisation
        When user changes the tiering type from "Static" to "Dynamic"
        Then the tiering type should remain "Static"

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the tiering type cannot be changed after the tier setup is published for the users
        Given admin user has configured the tier setup with participants and tier segments for the users
        When user changes the tiering type from "Static" to "Dynamic"
        Then the tiering type should remain "Static"

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Participants) and Tiering Type (static) only when the Tier Setup is in "Draft" status
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Participants and Tiering Type static should be saved

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Organisations) and Tiering Type (static) only when the Tier Setup is in "Draft" status
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Organisations and Tiering Type static should be saved

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Participants) and Tiering Type (dynamic) only when the Tier Setup is in "Draft" status
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Participants and Tiering Type dynamic should be saved

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Organisations) and Tiering Type (dynamic) only when the Tier Setup is in "Draft" status
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Organisations and Tiering Type dynamic should be saved

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Participants) and Tiering Type (static) only when the Tier Setup is in "Draft" status, if published the entity cannot be changed
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Participants and Tiering Type static should be saved

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Organisations) and Tiering Type (static) only when the Tier Setup is in "Draft" status, if published the entity cannot be changed
        Given admin user has configured the tier setup with participants and tier segments
        When user changes the tier setup status from "Draft" to "Published"
        Then the entity for tiering for Organisations and Tiering Type static should not be changed

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Participants) and Tiering Type (dynamic) only when the Tier Setup is in "Draft" status , if published the entity cannot be changed

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the entity for tiering (Organisations) and Tiering Type (dynamic) only when the Tier Setup is in "Draft" status, if published the entity cannot be changed

    #PHOENIX_TIER_Tier AfterPublish - Restrict Editing of fields relevant for static tiering After Publishing

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) can be modified when the Tier Setup only when it is in "Draft" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user modifies the reset frequency and qualifying period when it is in draft status
        Then the tier setup should reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) can be modified when the Tier Setup only when it is in "Draft" status for the organisation
        Given admin user has configured the tier setup with a reset frequency and qualifying period for the organisation
        When admin user modifies the reset frequency and qualifying period when it is in draft status
        Then the tier setup should reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) can be modified when the Tier Setup only when it is in "Draft" status for the users
        Given admin user has configured the tier setup with a reset frequency and qualifying period for the users
        When admin user modifies the reset frequency and qualifying period when it is in draft status
        Then the tier setup should reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) cannot be modified when the Tier Setup is in "Active" or "On Hold" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the reset frequency and qualifying period when it is in active or on hold status
        Then the tier setup should not reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency cannot be modified once the tier setup is published
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the reset frequency when it is published
        Then the tier setup should not modifiy the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the qualifying period cannot be modified once the tier setup is published
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the qualifying period when it is published
        Then the tier setup should not modify the updated reset frequency and qualifying period

    # Restrict Editing of fields relevant for dynamic tiering After Publishing

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify to modify the reset frequency and Qualifying Period (last N months) of Tier Setup only when it is in "Draft" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user modifies the reset frequency and qualifying period when it is in draft status
        Then the tier setup should reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) can be modified when the Tier Setup only when it is in "Draft" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user modifies the reset frequency and qualifying period when it is in draft status
        Then the tier setup should reflect the updated reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify after published the tier setup cannot be modified
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the reset frequency and qualifying period after publishing
        Then the tier setup should not allow the modification of the reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) cannot be modified when the Tier Setup is in "Active" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the reset frequency and qualifying period when it is in active status
        Then the tier setup should not allow the modification of the reset frequency and qualifying period

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the reset frequency and Qualifying Period (last N months) cannot be modified when the Tier Setup is in "Active" or "On Hold" status
        Given admin user has configured the tier setup with a reset frequency and qualifying period
        When admin user attempts to modify the reset frequency and qualifying period when it is in active or on hold status
        Then the tier setup should not allow the modification of the reset frequency and qualifying period

    # PHOENIX_TIER_0056  , 0057  Allow Adding New Tier Segments After Publishing

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that new tier segments cannot be added after the tier setup is published

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the ability to add new Tier Segments to a published Tier Setup so that rules for new job roles can be included without creating a new Tier Setup

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the ability to add new Tier Segments to a published Tier Setup so that rules for countries can be included without creating a new Tier Setup

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify creating the new rules for the new tier setup once the tier is published

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: As an admin, I want to be restricted from removing or editing existing Tier Segments after a Tier Setup is published so that published details remain consistent.

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify that existing Tier Segments cannot be removed or edited after the Tier Setup is published
        Given admin user has configured the tier setup with multiple segments
        When admin user attempts to remove or edit an existing segment after publishing
        Then the tier setup should not allow the removal or editing of the segment

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: verify the existing tier setup cannot be modified after publishing
        Given admin user has configured the tier setup with multiple segments
        When admin user attempts to modify the tier setup after publishing
        Then the tier setup should not allow any modifications

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the ability to add new Tier Segments to a published Tier Setup so that rules for new job roles can be included without creating a new Tier Setup
        Given admin user has configured the tier setup with multiple segments
        When admin user attempts to add a new segment after publishing
        Then the tier setup should allow the addition of the new segment

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify the ability to add new Tier Segments to a published Tier Setup so that rules for countries can be included without creating a new Tier Setup
        Given admin user has configured the tier setup with multiple segments
        When admin user attempts to add a new segment after publishing
        Then the tier setup should allow the addition of the new segment

    @adminui @dynamictiering @TierAfterPublish @system @form @functional @positive @notreviewed @superadmin @updated @notautomated
    Scenario: Verify creating the new rules for the new tier setup once the tier is published
        Given admin user has configured the tier setup with multiple segments
        When admin user attempts to create new rules for the new tier setup after publishing
        Then the tier setup should allow the creation of the new rules
