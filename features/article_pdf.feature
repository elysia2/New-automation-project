Feature: Article Pdf download
  I want to download a pdf

  Scenario: A user can download the Article pdf on Mosaic
    Given I am a logged in user
    When  I visit the Mosaic page "/articles/nplants201580" 
    And   I click on "PDF"
    And   I click on "Download as PDF"
    Then  I will download the pdf file "nplants201580.pdf"

  Scenario: A visitor cannot download the Article pdf on Mosaic
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants201580" 
    Then  I will NOT see the "PDF" link

  Scenario: A visitor cannot use the full url to download the Article pdf
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants201580.pdf" 
    Then  I will get a 401
    And   I will see the "Subscribe" button 

  Scenario: A logged in user can download the Article pdf on Classic
    Given I am a logged in user
    When  I visit the Classic page "/articles/micronano20151" 
    And   I click on "PDF"
    And   I click on "Download as PDF"
    Then  I will download the pdf file "micronano20151.pdf"

  # no subscription articles in classic
  @ignore
  Scenario: A visitor cannot download the Article pdf on Classic
    Given I am a visitor
    When  I visit the Classic page "/articles/micronano20151"
    Then  I will NOT see the "PDF" link
