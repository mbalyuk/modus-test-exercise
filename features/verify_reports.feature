Feature: Verify reports page

  Background:
    Given I have successfully navigated to the budgeting app reports page

  Scenario: Assert that inflow vs outflow figure is visible
    Then I can see that figure is visible

  Scenario: Assert that spending by categories figure is visible
    When I navigated to spending by categories page
    Then I can see that figure is visible
