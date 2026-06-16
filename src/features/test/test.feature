Feature: Testing code for automation

    @testingapi
    Scenario Outline: <id> Testing this api from boredapi.com
        When <id> I call the api
        # Then <id> I should get a valid response
        # When <id> new more when call
        # When <id> testing
        # Then <id> for testing
        # Then <id> testing this for tuskr

        Examples:
            | id |
            | 1  |
            | 2  |
            | 3  |

    @faker
    Scenario: Test the faker value
        When Enter the faker value

    @upload
    Scenario: Test the upload
        # When upload the file
        # When upload direct file
        When upload direct with different tag in dom


    @rowchange
    Scenario: Change the rows
        When change row value in the csv file

    @splitcsvfile
    Scenario: Split the csv file
        When split the csv file

    @removefromlist
    Scenario: get the list and remove the list from the bigger list
        When get the list and remove the list from the bigger list

    @smoke
    Scenario: Create a new csv file for user audience upload
        When Create a new audience group with "Setting1SellXGetYUsers"




# -=-----------------------------------------------
