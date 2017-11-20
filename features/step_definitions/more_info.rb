Given(/^I am currently on BingStays homepage$/) do
  visit root_path
end

When("I click the {string} link") do |string|
  click_on string
end


