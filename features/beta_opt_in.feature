Feature: Beta opt in and out
  @ignore
  Scenario: A visitor opting in to Mosaic
    Given I am a visitor
    When I visit the Classic page "/articles/nplants20142" 
    And  I opt in to Mosaic
    Then I will see the Mosaic design
    
  @ignore
  Scenario: A visitor opting in to Classic
    Given I am a visitor
    When I visit the Mosaic page "/articles/nplants20142" 
    And  I opt in to Classic
    Then I will see the Classic design
