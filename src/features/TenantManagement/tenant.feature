Feature: Tenant Management

  @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @smoke @reviewed @superadmin @updated @automated
  Scenario: Create tenant for the Admin Applicatrion and Launch the application using chrome browser
    Given User launches admin application
    When user enters username and password
    And user clicks on signin button
    Then user should be redirected to tenant page url