Feature: Landing on the home page
  As a user

  Scenario: Validate that a visitor can find the church
    Given a browser on the home page
    When selecting Map and Directions
    Then the visitor should see the churches address
