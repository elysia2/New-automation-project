Feature: The Journal sitemap
  Scenario: A Robot can fetch the Journal sitemp.xml 
    Given I am a robot
    When  I visit the Mosaic page "/nplants/sitemap.xml"
    Then  I will download a file with content "www.nature.com/nplants"
