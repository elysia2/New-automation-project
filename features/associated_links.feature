Feature: Article associated links
  Scenario: A visitor can see an article associated link in the Mosaic reading companion
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants20142"
    Then  I will see "News and Views | 08 January 2015"
    And   I will see the "Photosynthesis: Rubisco rescue" link
    And   I will see "Rebekka M. Wachter & J. Nathan Henderson"

  # need to find a Classic Journal article available in test & live
  @pending
  Scenario: A visitor can see an article associated link in the Classic side bar
    Given I am a visitor
    When  I visit the Classic page "/articles/nplants20142"
    Then  I will see "Nature Plants | News and Views"
    And   I will see the "Photosynthesis: Rubisco rescue" link
    And   I will see "by Rebekka M. Wachter et al"

  Scenario: A visitor can see an Erratum link in Mosaic
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants20142"
    And   I will see the "Erratum (14 January 2015)" link

  # need to find a Classic Journal article available in test & live
  @pending
  Scenario: A visitor can see an Erratum link in Classic
    Given I am a visitor
    When  I visit the Classic page "/articles/nplants20142"
    And   I will see the "Erratum (14 January 2015)" link
