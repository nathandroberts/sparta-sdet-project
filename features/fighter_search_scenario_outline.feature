Feature: Search Function
  as I user
  I want to be able to search for a fighter
  and view thier details

  Scenario: If I search for a fighter I can view thier details on the fighter search page

    Given I am on the videos page
    When I enter a name
    And I click search
    Then I am sent to the search page and can see that fighters details
