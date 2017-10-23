When(/^I visit the homepage$/) do
  visit root_path
end

Then(/^I should see the general information about BingStays$/) do
    expect(page).to have_content("BingStays") #expected to atleast have name of project in the homepage
    expect(page).to have_title "BingStays!"
end