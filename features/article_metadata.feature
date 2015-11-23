Feature: Metadata
  Scenario: A robot can fetch article related metadata on Mosaic
    Given I am a robot
    When  I visit the Mosaic page "/articles/nplants201580"
    Then  I will see "Webtrends" metadata in the page source
    And   I will see "Google Scholar" metadata in the page source
    And   I will see "Dublin Core" metadata in the page source
    And   I will see "Open Graph" metadata in the page source

  Scenario: A robot will not find article related metadata on Mosaic not-article pages 
    Given I am a robot
    When  I visit the Mosaic page "/nplants"
    Then  I will NOT see "Webtrends" metadata in the page source
    And   I will NOT see "Google Scholar" metadata in the page source
    And   I will NOT see "Dublin Core" metadata in the page source
    And   I will NOT see "Open Graph" metadata in the page source

  Scenario: A robot will find global Webtrends metadata on the Mosaic home page
    Given I am a robot
    When  I visit the Mosaic page "/nplants"
    Then  I will see see global "Webtrends" metadata in the page source

  Scenario: A robot can fetch article related metadata on Classic
    Given I am a robot
    When  I visit the Classic page "/articles/micronano20151"
    Then  I will see "Webtrends" metadata in the page source
    And   I will see "Google Scholar" metadata in the page source
    And   I will see "Dublin Core" metadata in the page source
    And   I will see "Open Graph" metadata in the page source

  Scenario: A robot will not find article related metadata on Classic not-article pages 
    Given I am a robot
    When  I visit the Classic page "/mtm"
    Then  I will NOT see "Webtrends" metadata in the page source
    And   I will NOT see "Google Scholar" metadata in the page source
    And   I will NOT see "Dublin Core" metadata in the page source
    And   I will NOT see "Open Graph" metadata in the page source

  Scenario: A robot will find global Webtrends metadata on the Classic home page
    Given I am a robot
    When  I visit the Classic page "/mtm"
    Then  I will see see global "Webtrends" metadata in the page source
