Feature: Tenant Management
  # It includes create, edit, list, delete, and search tenant

  # created by  = Kishore Thirunavukkarasu
  # reviewed by = Kadarkarai Selvam
  # updated by  = Kishore Thirunavukkarasu
  # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/tenant/

  @adminui @tenant @TNT001RegisterNewTenant @system @form @functional @smoke @reviewed @superadmin @updated @automated
  Scenario: Create tenant for the Admin Applicatrion and Launch the application using chrome browser
    Given User launches admin application
    When user enters username "kishore.thirunavukkarasu@biworldwide.com" and password "Password@123"
    And user clicks on signin button
    Then user should be redirected to tenant page url