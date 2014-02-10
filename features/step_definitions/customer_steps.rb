Given(/^I have customers$/) do
  @customer = Customer.create! name: "Acme, Inc"
end

Given(/^I have a customer "(.*?)"$/) do |name|
  @customer = Customer.create! name: name
end


Then(/^I see an index of customers$/) do
  # page.should have_content("Acme, Inc")
  expect(page).to have_content("Acme, Inc")
end

Given(/^the customer has (\d+) events$/) do |count|
	count.to_i.times do
		@customer.events.create!
	end
end