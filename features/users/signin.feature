Feature: Sign In
  As a visiting user
  I want to sign in
  Sign in will happen via GitHub (and possibly other auth providers)

  @omniauth_test
  Scenario: Sucessful sign in
    Given a signed out user
    When they visit the home page
    Then they should see "Sign In"
    When they sign in with GitHub
    Then User.count should == 1
    Then Authentication.count should == 1
    Then they should see "Test User"
    Then they should see "Profile"
    Then they should see "Sign Out"

  Scenario: Failed sign in
    Given a signed out user
    When they visit the home page
    Then they should see "Sign In"
    When they fail the sign in with GitHub
    Then they should see "Sign In"
    Then they should see "sorry"
