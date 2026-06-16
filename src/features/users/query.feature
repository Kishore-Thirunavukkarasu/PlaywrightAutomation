Feature: Querying the activation code for a user

    # Created by = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url =

    @platformui @users @USR001SelfRegistration @system @special @functional @smoke @reviewed @platform @notupdated @notautomated
    Scenario: Querying the activation code for the user
        When Quering the user "username" from the table through query engine
        When Get the activation code and insert it to the valid data of "username"