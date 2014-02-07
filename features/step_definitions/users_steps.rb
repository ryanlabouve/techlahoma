Given(/^a signed out user$/) do
  # this doesn't need any explicit action
end

Given(/^a signed in user$/) do
  visit "/signin"
  click_on "Sign In With GitHub"
end

Given(/^a user signed in with (.*?)$/) do |service|
  visit "/signin"
  click_on "Sign In With #{service}"
end

When(/^he visits the home page$/) do
  visit "/"
end

When(/^she visits her profile$/) do
  visit "/profile"
end

When(/^she removes her (.*?) account$/) do |service|
  click_on "Remove #{service}"
end


Then(/^[s]?he should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^he signs in with GitHub$/) do
  click_on "Sign In"
  page.should have_content("Sign In With GitHub")
  click_on "Sign In With GitHub"
end

When(/^she adds her (.*?) account$/) do |service|
  click_on "Add your #{service} account"
end

When(/^he fails the sign in with GitHub$/) do
  # This is where you end up if you click "Access denied" during GitHub auth
  visit "/auth/github/callback?error=access_denied"
end

Then(/^User\.count should == (\d+)$/) do |arg1|
  User.count.should == arg1.to_i
end

Then(/^Authentication\.count should == (\d+)$/) do |arg1|
  Authentication.count.should == arg1.to_i
end

When(/^she makes the provider public$/) do
  click_on "Yes, make this public."
end

When(/^he signs out$/) do
  click_on "Sign Out"
end

When(/^he fails the sign out$/) do
  #pending # express the regexp above with the code you wish you had
end
