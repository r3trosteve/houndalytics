When(/^I visit the events for Acme, Inc$/) do
  visit "/customers/1/events"
end

Then(/^I see (\d+) events$/) do |count|
  page.all("li").count.should eql(count.to_i)
end