Feature: delete operations
  
  As a landlord
  So that when I click on delete option of a particular house
  I should be able to delete that house from the list
Background: The following houses exist in db
    Given the following houses exist:
    | name            | avg_house_rating | avg_lord_rating | lord_name | price | capacity | description        |
    | 100 leroy       | 3                | 4               | nate      | 300   | 5        | description1       |
    | 50 Mozart       | 5                | 5               | Harry     | 280   | 6        | description3       |
    | 20 Beethoven    | 4                | 3               | Ron       | 340   | 10       | description4       |
    | 99 Chestnut     | 3                | 4               | Sujoy Das | 300   | 6        | Lorem Ipsum        |  

Scenario: Delete the house
  When I am on the details page for "99 Chestnut"
  And I press "Delete"
  Then I should see "House '99 Chestnut' deleted."
  