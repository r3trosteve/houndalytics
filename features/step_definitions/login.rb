When(/^I log in to Houndalytics$/) do
  visit "/login/new"
  fill_in "email", with: @user.email
  fill_in "password", with: @user.password
  click_on "Log in"
end

When(/^I attempt to log in to Houndalytics without a valid user account$/) do
  visit "/login/new"
  fill_in "email", with: Faker::Internet.email
  fill_in "password", with: "jshdvbjdk"
  click_on "Log in"
end