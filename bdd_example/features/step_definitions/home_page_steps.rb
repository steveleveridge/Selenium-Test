Given(/^I am on the Selenium Test website$/) do
  @browser.goto "https://9a2cdb3e.azurewebsites.net/customerlist"
end

Then(/^I should see the logo is present$/) do
  expect((on HomePage).page_logo_displayed?).to be true
end

Then(/^I should see the page title$/) do
  expect((on HomePage).page_title_displayed?). to be true
end