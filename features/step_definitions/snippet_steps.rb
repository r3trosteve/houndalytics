When(/^I embed the snippet on my website$/) do
  # TODO consider whether we should or could test this
end

When(/^an event occurs$/) do
  post "/customers/#{Customer.first.id}/events"
end