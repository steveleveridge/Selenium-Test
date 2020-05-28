Then(/^I should see the list of names panel$/) do
  expect((on HomePage).list_of_names_panel_displayed?).to be true
end

Then(/^I should see the details panel$/) do
  expect((on HomePage).details_panel_displayed?).to be true
end