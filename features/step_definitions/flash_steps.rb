Then(/^I see a Flash message "(.*?)"$/) do |hound|
  expect(page).to have_content(hound)
end