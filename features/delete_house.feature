Feature: delete operations
  
  As a landlord
  So that when I click on delete option of a particular house
  I should be able to delete that house from the list
  
Scenario: Delete the house
  When I am on the details page for "99 Chestnut"
  And I press "Delete"
  Then I should see "House '99 Chestnut' deleted."
  