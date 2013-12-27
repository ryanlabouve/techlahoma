Feature: Sign In
  As a visiting user
  I want to sign in
  Sign in will happen via GitHub (and possibly other auth providers)

  Scenario: Sucessful sign in
    Given a signed out users
    When he visits the home page
    Then he should see "Sign In"
    When he signs in
    Then he should see "Sign Out"

  Scenario: Failed sign in
    Given a signed out users
    When he visits the home page
    Then he should see "Sign In"
    When he fails the signs in
    Then he should see "Sign In"
    Then he should see "sorry"
