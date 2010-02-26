Feature: Manage accounts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new account
    Given I am on the new account page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete account
    Given the following accounts:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd account
    Then I should see the following accounts:
      |Name|
      |name 1|
      |name 2|
      |name 4|
