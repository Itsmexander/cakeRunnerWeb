Feature: Buy products
  As a customer
  I want to buy products

  Background:
    Given the store is ready to service customers
    And a product "Chocolate" with weight 1, price 359, and stock of 10 exists
    And a product "Carrot" with weight 1, price 359, and stock of 10 exists
    And a product "Strawberry" with weight 1, price 359, and stock of 10 exists
    And a product "Raspberry" with weight 1, price 359, and stock of 10 exists

  Scenario: Buy one product
    When I buy "Chocolate" with quantity 2
    Then total should be 718

  Scenario: Buy multiple products
    When I buy "Carrot" with quantity 2
    And I buy "Strawberry" with quantity 1
    Then total should be 1077