Feature: Verify budget table

  Background:
    Given I have successfully navigated to the budgeting app homepage

  Scenario: Assert that all column names are like expected
    Then I can see that column names in the table
      |Category|Description|Amount|
    And Rows count is "6"
