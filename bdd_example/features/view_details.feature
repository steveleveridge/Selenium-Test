#Story reference number related to this feature

Feature: View details

  As a user,
  I want to see the details of the customer,
  So that I see all their information.

  Background:
    Given I am on the Selenium Test website

  Scenario: Check the basic details for customer one
    Then I should see customer one full name "John Smith"
    And I should see customer one email address "jsmith@test.com"
    And I should see customer one telephone number "0208092029"
    And I should see customer one Click to View Details button

  Scenario: Check the full details for customer one
    When I click on View Details button for Customer one
    Then I should see the full details displayed for Customer one

  @manual
  Scenario: Check the basic details are displayed on a mobile device
    Then I should see the full name for each customer displayed
    And I should see the email address for each customer displayed
    And I should see the telephone number for each customer displayed
    And I should see the Click to View Details button for each customer displayed

  @manual
  Scenario: Check the full details are displayed on a mobile device
    When I click on View Details button on each customer
    Then I should see the full details for each customer displayed
