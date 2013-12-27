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
  pending # express the regexp above with the code you wish you had
end

When(/^he fails the sign in with GitHub$/) do
  pending # express the regexp above with the code you wish you had
end
