
Then /I should see the list of all the houses/ do
  # Make sure that all the movies in the app are visible in the table
  @houses = House.all
  @houses.each do |house|
    step %{I should see "#{house['name']}"}
end
end