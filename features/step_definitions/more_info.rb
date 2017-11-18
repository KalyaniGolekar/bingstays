Given(/^I am currently on BingStays homepage$/) do
  visit root_path
end

When("I click the {string} link") do |string|
  click_on string
end

Then(/^I should see the list of all houses$/) do
 expect(page).to have_selector('tbody tr', :count => House.count )
end