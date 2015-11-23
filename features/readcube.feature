Feature: Readcube Article
  Scenario: A user can read the Article on ReadCube
    Given I am a logged in user
    When  I visit the Mosaic page "/articles/nplants20142" 
    And   I click on "PDF"
    And   I click on "View interactive PDF in ReadCube"
    Then  I will be redirected to "www.readcube.com" domain
    And   I will see the "View on Nature" link

  @wip
  Scenario: A user visiting a free article .epdf url with javascript disabled  will download the pdf (PENDING)
    Given  Pending: we need to undestrand how to handle js disbled on webkit
    #Given I am a logged in user
    #When  I visit the Mosaic page "/articles/nplants20142.epdf"
    #Then  I will download the pdf file "nplants20142.pdf"

  @wip
  Scenario: A user visiting a non-free article .epdf url with javascript disabled  will be redirected to the article (PENDING)
    Given  Pending: we need to undestrand how to handle js disbled on webkit
    #Given I am a visitor
    #When  I visit the Mosaic page "/articles/nplants20142.epdf"
    #Then  I will be redirected to "/articles/nplants20142"

  @wip
  Scenario: A user using the .epdf suffix will see the ReadCube version of the Article if has javascript enabled (PENDING)
    Given  Pending: we need to undestrand how to handle js disbled on webkit
