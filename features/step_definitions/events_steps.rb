When(/^I visit the events for Acme, Inc$/) do
  visit "/customers/1/events"
end

Then(/^I see (\d+) events$/) do |count|
  page.all("li").count.should eql(count.to_i)
end

When(/^I visit the events for yesterday$/) do
  visit "/customers/1/events"
  fill_in "Start date", with: Date.yesterday
  fill_in "End date", with: Date.yesterday
  click_on "Show date range"
end

Then(/^the event is registered on Houndalytics$/) do
  expect(@customer.events.count).to be(1)
end