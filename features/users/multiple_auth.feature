Feature: Multiple Auth Providers
  As a Techlahoma admin
  I want to allow users to show links to their various online personas
  But I want to verify that the things they are linking to are legit
  So I want to allow them to authenticate with multiple auth providers
  And I'll build the URL to their profiles myself
  The user should have the option to show/hide each provider

  @omniauth_test
  Scenario: Add Twitter
    Given a user signed in with GitHub
    When they visit their profile
    Then they should see "Add your Twitter account"
    When they add their Twitter account
    Then User.count should == 1
    Then Authentication.count should == 2
    Then they should see "Remove Twitter"
    When they remove their Twitter account
    Then they should see "Add your Twitter account"

  @omniauth_test
  Scenario: Add GitHub
    Given a user signed in with Twitter
    When they visit their profile
    Then they should see "Add your GitHub account"
    When they add their GitHub account
    Then they should see "Remove GitHub"
    When they remove their GitHub account
    Then they should see "Add your GitHub account"
