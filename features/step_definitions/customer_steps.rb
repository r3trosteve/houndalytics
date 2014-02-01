Given(/^I have customers$/) do
  @customer = Customer.create! name: "Acme, Inc"
end

Then(/^I see an index of customers$/) do
  # page.should have_content("Acme, Inc")
  expect(page).to have_content("Acme, Inc")
end
