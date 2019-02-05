#this feature doesn't work
Feature: Remove new record from the table

  Background:
    Given I have successfully navigated to the budgeting app homepage

  Scenario: Assert that record could be deleted
    When I can remove record in the table
    Then It disappears from the table
      |Category|Description|Amount|
      |Travel    |Gas|-764.73|
