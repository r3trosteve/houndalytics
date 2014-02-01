When(/^I log in to Houdalytics$/) do
  visit "/login/new"
  fill_in "email", with: @user.email
  fill_in "password", with: @user.password
  click_on "Log in"
end