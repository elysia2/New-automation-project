Feature: Articles RIS files
  As a Visitor
  I can download the article citations

  Scenario: A visitor can download the article RIS file on Mosaic
    When  I visit the Mosaic page "/articles/nplants20142" 
    And   I click on "Download Citation"
    Then  I will download a file with content "L3  - 10.1038/nplants.2014.2"

  Scenario: A visitor can download the article RIS file on Classic
    When  I visit the Classic page "/articles/micronano20151"
    And   I click on "Citation"
    Then  I will download a file with content "L3  - 10.1038/micronano.2015.1"

  Scenario: A visitor can download the article references RIS file on Mosaic
    When  I visit the Mosaic page "/articles/nplants20142" 
    And   I click on "Download references"
    Then  I will download a file with content "TI  - Rubisco: structure, regulatory interactions"

  Scenario: A visitor can download the article references RIS file on Classic
    When  I visit the Classic page "/articles/micronano20151"
    And   I click on "Download references"
    Then  I will download a file with content "TI  - Nuclear transfer in farm animal species"
