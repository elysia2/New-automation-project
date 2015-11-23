Feature: Journal Menu
  As a user
  I want to use the menu options in the journal homepage

  Scenario: A visitor can use the Current Issue menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Current Issue"
    Then I will see "Volume"
    And I will see "Issue"

  Scenario: A visitor can use the News and Comment menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "News and Comment"
    Then I will see "News & Comment"

  Scenario: A visitor can use the Research menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Research"
    Then I will see "Latest Research"

  Scenario: A visitor can use the Browse Articles menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Browse Articles"
    Then I will see "Browse articles"

  Scenario: A visitor can use the About the Journal menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "About the Journal"
    Then I will see "About the Journal"

  Scenario: A visitor can use the Contact menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Contact"
    Then I will see "Contact"

  Scenario: A visitor can use the Nature menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Nature"
    Then I will see "Nature"

  Scenario: A visitor can use the Nature Communications menu option from a Maestro journal homepage
    When I visit the Mosaic page "/nplants"
    And I click on "Menu"
    And I click on "Nature Communications"
    Then I will see "Nature Communications"

