Feature: Subscription Articles paywall
  As a Visitor
  I will see the paywall for non OA articles when not logged in

  Scenario: A visitor can see the paywall on Mosaic
    When I visit the Mosaic page "/articles/nplants201580" 
    Then I will see "Subscribe to Nature Plants for full access"
    And  I will see the "Subscribe" button 
    And  I will see "$59"

  Scenario: A visitor can see the Login Link to Athens on Mosaic
    When I visit the Mosaic page "/articles/nplants201580"
    Then I will see the "Login via Athens" link
