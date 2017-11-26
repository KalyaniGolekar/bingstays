Feature: Filter by house rating
  
  As a User
  So that I can see houses with good ratings
  I want to filter houses by ratings
Background: Following houses exist
    Given the following houses exist:
    | name            | avg_house_rating | avg_lord_rating | lord_name | price | capacity | description        |
    | 20 Leroy        | 2                | 5               | Henry     | 250   | 4        | description0       |
    | 100 leroy       | 3                | 4               | nate      | 300   | 5        | description1       |
    | 50 Mozart       | 5                | 5               | Harry     | 280   | 6        | description3       |
    | 20 Beethoven    | 4                | 3               | Ron       | 340   | 10       | description4       |

Scenario: Filter houses with rating "5"
  When I am on the houses page
  And I check the following house ratings: 5, 4
  And I uncheck the following house ratings: 3, 2, 1
  And I press "Refresh"
  Then I should see houses ratings: 5, 4
  And I should not see houses ratings: 3, 2, 1
  