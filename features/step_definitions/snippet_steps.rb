When(/^I embed the snippet on "(.*?)"$/) do |hostname|
  @hostname = hostname
end

When(/^an event occurs$/) do
  post "/customers/#{Customer.first.id}/events", {api_key: "DEADBEEF"}, {
  	"HTTP_REFERER" => @hostname
  }
end

Then(/^the event is registered for "(.*?)"$/) do |hostname|
  site = Site.find_by_hostname! hostname
  expect(site.events.count).to be(1)
end