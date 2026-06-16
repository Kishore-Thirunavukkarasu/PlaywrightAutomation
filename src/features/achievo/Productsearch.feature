Feature: Invoice Claim Extended search on product search based on any product attribute

    # created by  = Kishore Gunasekaran
    # reviewed by =
    # updated by  =

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by all Product attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by external identifier, color, type, description, status, and product type
        Given the user is logged into the application
        And the user navigates to the product search page
        When the user enters "EX12345" into the external identifier search bar
        And the user selects "Red" from the color filter options
        And the user selects "Electronics" from the type filter options
        And the user enters "wireless" into the description search bar
        And the user selects "Active" from the status filter options
        And the user selects "Headphones" from the product type filter options
        And the user clicks the search button
        Then the products list should display only products that match the external identifier "EX12345", color "Red", type "Electronics", description containing "wireless", status "Active", and product type "Headphones"
        And each displayed product should have an external identifier of "EX12345"
        And each displayed product should have a color of "Red"
        And each displayed product should have a type of "Electronics"
        And each displayed product should have a description that includes the word "wireless"
        And each displayed product should have a status of "Active"
        And each displayed product should have a product type of "Headphones"
        And the total count of filtered products should be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by the product header fields

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Product type as 'product type' in the product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Product type as 'product type' in the product search attributes
        Given the user is on the "Product Search" page
        When the user selects the "Product Type" filter dropdown
        And the user chooses the "Clothing" from the dropdown options
        And the user clicks on the "Search" button
        Then the search results should display only products of type "Clothing"
        And each product listed should include "Clothing" as its product type is listed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Product type shows no results when no products match the type
        Given the user is on the "Product Search" page
        When the user selects the "Product Type" filter dropdown
        And the user chooses "Toys" from the dropdown options
        And the user clicks on the "Search" button
        Then the search results should display a message "No products found for the selected product type"
        And the product list should be empty
        And the total number of results should be zero

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Product type updates correctly after adding a new product
        Given the user is on the "Product Search" page
        When the user selects the "Product Type" filter dropdown
        And the user chooses "Books" from the dropdown options
        And the user clicks on the "Search" button
        And a new product of type "Books" is added to the inventory
        Then the user should see the newly added "Books" product in the search results
        And the total number of results should include the newly added product

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Product type handles an empty product type selection
        Given the user is on the "Product Search" page
        When the user does not select any option from the "Product Type" filter dropdown
        And the user clicks on the "Search" button
        Then the system should display a message "Please select a product type to search"
        And the search results should not be displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify atleast one search field from the dropdown in the product search (Note Message)

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by Type in the product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by type
        Given the user is logged into the application
        And the user navigates to the invoice claim submission page
        And the user navigates to the product search page
        When the user selects "Electronics" from the type filter options
        And the user clicks the search button
        Then the products list should display only products of the type "Electronics"
        And each displayed product should be classified under the type "Electronics"
        And the total count of filtered products should be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by description in the product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by description
        Given the user is logged into the application
        And the user navigates to the invoice claim submission page
        And the user navigates to the product search page
        When the user enters "description" into the description search bar
        And the user clicks the search button
        Then the products list should display only products with descriptions containing "wireless headphones"
        And each displayed product should have a description that includes the phrase "wireless headphones"
        And the total count of filtered products in description will be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by colour in the product search attributes
        Given the user is logged into the application
        And the user navigates to the invoice claim submission page
        And the user navigates to the product search page
        When the user enters "Colour" into the colour search bar
        And the user clicks the search button
        Then the products list should display only products with color containing "wireless headphones"
        And each displayed product should have a color that includes the phrase "wireless headphones"
        And the total count of filtered products in color will be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by external identifer  in the product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by external identifier
        Given the user is logged into the application
        And the user navigates to the product search page
        When the user enters "EX12345" into the external identifier search bar
        And the user clicks the search button
        Then the products list should display only the product with the external identifier "EX12345"
        And each displayed product should have an external identifier of "EX12345"
        And the total count of filtered products should be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by product status in product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by Product status
        Given the user is logged into the application
        And the user navigates to the product search page
        When the user selects "Active" from the status filter options
        And the user clicks the search button
        Then the products list should display only products with the status "Active"
        And each displayed product should have a status of "Active"
        And the total count of filtered products should be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Verify the search by combinations in the product search attributes

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by type, status, and description
        Given the user is logged into the application
        And the user navigates to the product search by product attribute page
        When the user selects "Electronics" from the type filter options
        And the user selects "Active" from the status filter options
        And the user enters "wireless" into the description search bar
        And the user clicks the search button
        Then the products list should display only products that match the type "Electronics", status "Active", and have descriptions containing "wireless"
        And each displayed product should have a type of "Electronics"
        And each displayed product should have a status of "Active"
        And each displayed product should have a description that includes the word "wireless"
        And the total count of filtered products should be correctly

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by external identifier, color, type, and description
        Given the user is logged into the application
        And the user navigates to the product search page
        When the user enters "EX12345" into the external identifier search bar
        And the user selects "Red" from the color filter options
        And the user selects "Electronics" from the type filter options
        And the user enters "wireless" into the description search bar
        And the user clicks the search button
        Then the products list should display only products that match the external identifier "EX12345", color "Red", type "Electronics", and have descriptions containing "wireless"
        And each displayed product should have an external identifier of "EX12345"
        And each displayed product should have a color of "Red"
        And each displayed product should have a type of "Electronics"
        And each displayed product should have a description that includes the word "wireless"
        And the total count of filtered products should be correctly displayed

    @mobile @achievo @ProductSearch @system @form @functional @positive @notreviewed @platformuser @notupdated @notautomated
    Scenario: Search products by external identifier, color, type, description, status, and product type
        Given the user is logged into the application
        And the user navigates to the product search page
        When the user enters "EX12345" into the external identifier search bar
        And the user selects "Red" from the color filter options
        And the user selects "Electronics" from the type filter options
        And the user enters "wireless" into the description search bar
        And the user selects "Active" from the status filter options
        And the user selects "Headphones" from the product type filter options
        And the user clicks the search button
        Then the products list should display only products that match the external identifier "EX12345", color "Red", type "Electronics", description containing "wireless", status "Active", and product type "Headphones"
        And each displayed product should have an external identifier of "EX12345"
        And each displayed product should have a color of "Red"
        And each displayed product should have a type of "Electronics"
        And each displayed product should have a description that includes the word "wireless"
        And each displayed product should have a status of "Active"
        And each displayed product should have a product type of "Headphones"
        And the total count of filtered products should be correctly displayed
