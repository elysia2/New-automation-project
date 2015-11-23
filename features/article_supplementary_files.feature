Feature: Article Supplementary info files
  Scenario: A visitor can download a supplementary info file on Mosaic
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants20142" 
    And   I click on "Supplementary Information"
    Then  I will download the pdf file "nplants20142-s1.pdf"

  Scenario: A visitor can download a supplementary info file on Classic
    Given I am a visitor
    When  I visit the Classic page "/articles/micronano20151"
    And   I click on "Supplementary information"
    Then  I will download the pdf file "micronano20151-s1.pdf"
