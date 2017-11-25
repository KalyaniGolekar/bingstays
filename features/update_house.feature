Feature: update operations
  
  As a User/landlord
  So that I can update the details of the house
  I want to be able to click Edit link

Scenario: Existing houses
  Given the following houses exist:
  | name            | avg_house_rating | avg_lord_rating | lord_name | price | capacity | description        |
  | 100 leroy       | 3                | 4               | nate      | 300   | 5        | description1       |
  | 50 Mozart       | 5                | 5               | Harry     | 280   | 6        | description3       |
  | 20 Beethoven    | 4                | 3               | Ron       | 340   | 10       | description4       |
  | 99 Chestnut     | 3                | 4               | Sujoy Das | 300   | 6        | Lorem Ipsum        |

Scenario: reach the update page
  When I am on the details page for "99 Chestnut"
  Then I should see "Edit"
  And I follow "Edit"
  
Scenario: Update the house
  When I am on the details page for "99 Chestnut"
  And I follow "Edit"
  And I fill in "Name" with "99 meroy"
  And I fill in "Avg House Rating" with "3"
  And I fill in "Avg Landlord Rating" with "2"
  And I fill in "Landlord name" with "Natalia"
  And I fill in "Price" with "200"
  And I fill in "Capacity" with "4"
  And I fill in "Description" with "looooorem ipsummm"
  And I press "Update House Info"
  Then I should see "99 meroy was successfully updated."
  

  