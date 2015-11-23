Feature: Proofing articles
  As a proof user
  I want to see an article

  Scenario: A user can proof a Mosaic article
    Given I am a logged in user
    When  I visit the Mosaic page "/articles/nplants201580" in proof mode
    Then  I will see "Grassland productivity limited by multiple nutrients"

  Scenario: A user can proof a Classic article
    Given I am a logged in user
    When  I visit the Classic page "/articles/micronano20151" in proof mode
    Then  I will see "On-chip 3D rotation of oocyte based on a vibration-induced local whirling flow"

  # At the moment Live do not allow redirect to the login page
  @pending
  Scenario: A visitor cannot proof a Mosaic article
    Given I am a visitor
    When  I visit the Mosaic page "/articles/nplants201580" in proof mode
    Then  I will see the login page

  # At the moment Live do not allow redirect to the login page  
  @pending
  Scenario: A visitor cannot proof a Classic article
    Given I am a visitor
    When  I visit the Classic page "/articles/micronano20151" in proof mode
    Then  I will see the login page
