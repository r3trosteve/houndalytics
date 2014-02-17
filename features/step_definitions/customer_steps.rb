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
	@site = @customer.sites.create!
	count.to_i.times do
		@site.events.create!
	end
end

Given(/^the customer had (\d+) events yesterday$/) do |count|
	@site = @customer.sites.create!
	count.to_i.times do
		@site.events.create! created_at: 1.day.ago, updated_at: 1.day.ago
	end
end

Given(/^the customer has (\d+) events today$/) do |count|
	@site = @customer.sites.create!
	count.to_i.times do
		@site.events.create!
	end
end