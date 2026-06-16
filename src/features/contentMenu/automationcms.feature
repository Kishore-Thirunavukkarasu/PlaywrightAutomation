Feature: Content management system automation

    @adminui @contentManagement @CMS001AddEditContent @system @form @functional @smoke @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin user can able to create new article
        When Admin user login to the Strapi admin console
        When Navigate to articles
        When create "first" article
        When create "second" article
        When create new category
        When create new page
        When Strapi Admin logout