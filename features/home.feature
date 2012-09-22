Feature: Landing on the home page
  As a user

  Scenario: Validate that a visitor can find the church
    Given I am on the home page
    When I enter a search for "address"
    Then I should find the churches location
