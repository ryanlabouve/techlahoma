Feature: Sign Out
  As a signed in user
  I want to sign out
  To protect my account stuff

  @omniauth_test
  Scenario: Successful sign out
    Given a signed in user
    When he visits the home page
    Then he should see "Sign Out"
    When he signs out
    Then he should see "Sign In"

  @omniauth_test
  Scenario: Failed sign out
    Given a signed in user
    When he visits the home page
    Then he should see "Sign Out"
    When he fails the sign out
    Then he should see "Sign Out"
    Then he should see "sorry"
