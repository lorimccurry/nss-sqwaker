Feature: Create a squeek
  In order to vent my spleen
  As an internet heathen
  I want to anonymously post a message

  Scenario: Trying to create a blank message fails
    When I go to the homepage
    Then I should see "Squeek here"
    When I press "Squawk"
    Then I should see: "Your squeek can't be blank"

  Scenario: Creating a message with a body succeeds
    When I go to the homepage
    Then I should see "Squeek here"
    When I fill in "Squeek here" with "I hate everything"
    And I press "Squawk"
    Then I should see: "Your squeek has been posted"
    And there should be a squeek "I hate everything" in the database
    And I should see "I hate everything" within the squeeks feed

