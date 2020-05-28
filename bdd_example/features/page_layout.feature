#Story reference number related to this feature

Feature: Page layout

  As a user,
  I want to see the page layout,
  So that I view the content.


  Scenario: Check that the list of names panel is displayed
    Given I am on the Selenium Test website
    Then I should see the list of names panel

  Scenario: Check that the details panel is displayed
    Given I am on the Selenium Test website
    Then I should see the details panel

  @manual
  Scenario: Check that the list of names panel is displayed on a mobile device
    Then I should see the list of names panel

  @manual
  Scenario: Check that the details panel is displayed on a mobile device
    Then I should see the details panel