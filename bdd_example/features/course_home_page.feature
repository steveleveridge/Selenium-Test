#Story reference number related to this feature

Feature: Course homepage

  As a user,
  I want to see the course page details,
  So that I start my course.

  Background:
  Given I am on the Course website

  Scenario: Check that the logo is present
    Then I should see the course logo is present

  Scenario: Check that the course title is present
    Then I should see the course title "READY FOR THE LAB?"

  Scenario: Check the course content is present
    Then I should see the course content "A laboratory is a unique working environment"

  Scenario: Check when I click on the Start button I am taken to the correct page
    When I click on the Start course button
    Then I am taken to the Working with Chemicals page

  @manual
  Scenario: Check that the course logo is present on a mobile device
    Then I should see the logo is present

  @manual
  Scenario: Check that the course title is present on a mobile device
    Then I should see the page title is present

