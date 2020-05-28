Then(/^I should see customer one full name "([^"]*)"$/) do |full_name|
  expect((on HomePage).customer_full_name).to eq full_name
end

And(/^I should see customer one email address "([^"]*)"$/) do |email_address|
  expect((on HomePage).customer_email_address).to eq email_address
end

And(/^I should see customer one telephone number "([^"]*)"$/) do |telephone_number|
  expect((on HomePage).customer_telephone_number).to eq telephone_number
end

And(/^I should see customer one Click to View Details button$/) do
  expect((on HomePage).view_details_displayed?).to be true
end

When(/^I click on View Details button for Customer one$/) do
  (on HomePage).click_view_details
end

Then(/^I should see the full details displayed for Customer one$/) do
  expect((on HomePage).full_details_displayed?).to be true
end
