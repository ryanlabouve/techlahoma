Feature: Sign In
  As a visiting user
  I want to sign in
  Sign in will happen via GitHub (and possibly other auth providers)

  @omniauth_test
  Scenario: Sucessful sign in
    Given a signed out user
    When he visits the home page
    Then he should see "Sign In"
    When he signs in with GitHub
    Then User.count should == 1
    Then Authentication.count should == 1
    Then he should see "Sign Out"

  Scenario: Failed sign in
    Given a signed out user
    When he visits the home page
    Then he should see "Sign In"
    When he fails the sign in with GitHub
    Then he should see "Sign In"
    Then he should see "sorry"
