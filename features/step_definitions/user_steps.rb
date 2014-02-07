Given(/^I am a user$/) do
  @user = User.create! email: "some@example.com", password: "letmein", password_confirmation: "letmein"
end

Given(/^I am a regular visitor$/) do
  # this is assumed
end

When(/^I visit the index of customers$/) do
  visit customers_path
end

Then(/^I see "(.*?)"$/) do |page|
  expect(page).to have_content "ACCESS DENIED!!!111ONE"
end