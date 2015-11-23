Feature: Foxtrot redirects
  As a visitor
  I want to be redirected to the Foxtrot article when using the new url style /articles/:article_id

  Scenario: redirect a foxtrot article to a foxtrot style url
    When I visit the Mosaic page "/articles/nature13776"
    Then I will be redirected to "/nature/journal/v513/n7519/full/nature13776.html"
    And  I will see "A faster Rubisco with potential to increase photosynthesis in crops"
