Feature: Article DOIs
  As a user
  I want to use the new doi finder endpoint

  Scenario: Doi for a Maestro journal article
    When I visit the Mosaic page "/articles/doi:10.1038/nplants.2014.2"
    Then I will be redirected to "/articles/nplants20142"
    And  I will see "Degradation of potent Rubisco inhibitor by selective sugar phosphatase"

  Scenario: Doi for a Foxtrot jornal article
    When I visit the Mosaic page "/articles/doi:10.1038/nature13776"
    Then I will be redirected to "/nature/journal/v513/n7519/full/nature13776.html"
    And  I will see "A faster Rubisco with potential to increase photosynthesis in crops"
