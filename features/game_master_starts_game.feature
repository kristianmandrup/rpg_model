Feature: Game Master starts game
  As a Game Master 
  I want to start a game 
  So that I can play

  Scenario: start game 
    Given I am not yet playing 
    When I start a new game 
    Then I should ...
    And I should ...