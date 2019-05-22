@feature-tag @twitter-tag
Feature: The Twitter

  I want to tweet things

  @tag-to-include
  Scenario: Opening Twitter
    Given I open Twitter page
    Then I see "Twitter" in the title

  @updated-content
  Scenario: Testing updated content
    Given I open Twitter page
    Then I see "See what’s happening in the world right now" in the ".StaticLoggedOutHomePage-signupTitle"
    When I update ".StaticLoggedOutHomePage-signupTitle" to have content "notepad++"
    Then I see "notepad++" in the ".StaticLoggedOutHomePage-signupTitle"

