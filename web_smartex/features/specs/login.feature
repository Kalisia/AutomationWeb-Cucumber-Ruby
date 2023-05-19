#language: en

Feature: User login to access the products

  @login
  Scenario: Access the products
    When I access the platform with success
    Then I can see the products

  @invalid
  Scenario: Invalid login
    When I login
    Then I do the invalid login

  @blank
  Scenario: Blank login
    When I try login without username and password
    Then I receive a message

