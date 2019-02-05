Feature: Add new record to the table

  Background:
    Given I have successfully navigated to the budgeting app homepage
    And I enter "test description" as the description and "100$" as value and add record

  Scenario: Assert that record is added to the table
    Then I can see that record in the table
      |Category|Description|Amount|
      |Misc    |test description|100$|
