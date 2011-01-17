Feature: Navigation bar
  As a user
  I want to be able to navigate to pages with links
  in order to get to them quickly
  
  Scenario: Navigate from types to monsters
    Given I am on the types page
    When I follow "Monsters"
    Then I should be on the monsters page
    
  Scenario: Navigate from monsters to types
    Given I am on the monsters page
    When I follow "Types"
    Then I should be on the types page