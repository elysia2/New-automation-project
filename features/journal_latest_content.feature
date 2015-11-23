Feature: Journal Latest Content

Scenario: A user can see the latest research page
  Given I am a visitor
  When I visit the Mosaic page "/nplants/research"
  Then I will see "Latest Research"

Scenario: A user can see the latest reviews page
  Given I am a visitor
  When I visit the Mosaic page "/nplants/reviews"
  Then I will see "Latest Reviews"

Scenario: A user can see the news and comment page
  Given I am a visitor
  When I visit the Mosaic page "/nplants/news-and-comment"
  Then I will see "News & Comment"
