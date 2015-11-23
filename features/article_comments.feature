Feature: Article Comments
  Scenario: A visitor can view comments on Mosaic
    Given I am a visitor
    When  I visit the Mosaic page "/articles/srep13100"
    And   I click on "Comments"
    Then  I will see "Comments"

  Scenario: A logged in user can view comments on Mosaic
    Given I am a logged in user
    When  I visit the Mosaic page "/articles/srep13100"
    And   I click on "Comments"
    Then  I will see "Comments"
