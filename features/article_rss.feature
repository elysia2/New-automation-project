Feature: The journal RSS feed

  Scenario: A visitor wants to subscribe to the RSS feed for a Mosaic Journal
    Given I am a visitor
    When  I visit the Mosaic page "/nplants"
    And   I click on "RSS Feed"
    Then  I will see "Nature Plants - nature.com science feeds"
    And   I will see "syndicated content powered by FeedBurner"

  Scenario: A visitor wants to subscribe to the RSS feed for a Classic Journal
    Given I am a visitor
    When  I visit the Classic page "/mtm"
    And   I click on "RSS"
    Then  I will see "Molecular Therapy - Methods & Clinical Development - nature.com science feeds"
    And   I will see "syndicated content powered by FeedBurner"

  Scenario: A visitor wants to subscribe to the RSS feed for a Classic Journal from the article page
    Given I am a visitor
    When  I visit the Classic page "/articles/micronano20151"
    And   I click on "RSS"
    Then  I will see "Microsystems & Nanoengineering - nature.com technology"
    And   I will see "syndicated content powered by FeedBurner"
