Feature: create operations
  
  As an admin
  So that I can manage the list of houses
  I want to be able to add a houses
  
Scenario: add a house
  When I am on the list page
  And I follow "Add new house"
  And I fill in "Name" with "99 meroy"
  And I fill in "Average House Rating" with "3"
  And I fill in "Landlord name" with "Natalia"
  And I fill in "Price" with "200"
  And I fill in "Capacity" with "4"
  And I fill in "Description" with "LOREM IPSUM"
  And I press "Save Changes"
  Then I should see "BingStays 99 meroy was successfully created."
  