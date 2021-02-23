Given(/^I am on the Course website$/) do
  @browser.goto "https://learning.elucidat.com/course/602f99d64d0ac-602f9cb9b350d"
end

Then(/^I should see the course logo is present$/) do
  expect((on CoursePage).course_image_displayed?).to be true
end

Then(/^I should see the course title "([^"]*)"$/) do |course_title|
  expect((on CoursePage).course_title).to eq course_title
end

Then(/^I should see the course content "([^"]*)"$/) do |course_content|
  expect((on CoursePage).course_content).to include course_content
end

When(/^I click on the Start course button$/) do
  (on CoursePage).click_start_button
end

Then(/^I am taken to the Working with Chemicals page$/) do
  expect((on CoursePage).working_with_chemicals).to eq "PART 1: WORKING WITH CHEMICALS"
end


