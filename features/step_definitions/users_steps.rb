Given(/^a signed out user$/) do
  # this doesn't need any explicit action
end

When(/^he visits the home page$/) do
  visit "/"
end

Then(/^he should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^he signs in with GitHub$/) do
  click_on "Sign In"
  page.should have_content("Sign In With GitHub")
  click_on "Sign In With GitHub"
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
