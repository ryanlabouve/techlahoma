Feature: Sign Out
  As a signed in user
  I want to sign out
  To protect my account stuff

  @omniauth_test
  Scenario: Successful sign out
    Given a signed in user
    When they visit the home page
    Then they should see "Sign Out"
    When they sign out
    Then they should see "Sign In"

  # This scenario needs some work
  @omniauth_test
  Scenario: Failed sign out
    Given a signed in user
    When they visit the home page
    Then they should see "Sign Out"
    When they fail the sign out
    Then they should see "Sign Out"
    #Then they should see "sorry"
