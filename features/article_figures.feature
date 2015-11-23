Feature: Subscription Article figures navigation
  I want to see the full size images of a subscription article
  
  Scenario: A user can see the full size figure on Mosaic
    Given I am a logged in user
    When  I visit the Mosaic page "/articles/nplants201580"
    And   I click on "Full size image" 
    Then  I will be redirected to "/articles/nplants201580/figures/1" 
    And   I will see the full size image "nplants201580-f1.jpg"

  Scenario: A user can see the full size figure on Classic
    Given I am a logged in user
    When  I visit the Classic page "/articles/micronano20151"
    And   I click on "Full size image" 
    Then  I will be redirected to "/articles/micronano20151/figures/1"
    And   I will see the full size image "micronano20151-f1.jpg"

  Scenario: A user can see the figures index page on Classic
    Given I am a logged in user
    When  I visit the Classic page "/articles/micronano20151/figures/1"
    And   I click on "Figures index" 
    Then  I will be redirected to "/articles/micronano20151/fig_tab"
    And   I will see "Figures index"

  Scenario: A user cannot see the figures index page on Mosaic
    Given I am a logged in user
    When  I visit the Classic page "/articles/nplants201580/fig_tab"
    Then  I will be redirected to "/articles/nplants201580" 

  Scenario: A visitor will be redirect to the article page if browsing the full size figure url
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants201580/figures/1"
    Then  I will get a 401
    Then  I will be redirected to "/articles/nplants201580"
