Given /the following houses exist/ do |houses_table|
  houses_table.hashes.each do |house|
   @house=House.create!(house) if House.find_by(name: house['name']).nil?
   @house.update_attributes!(house) if @house!=house
  end
end

When /I press the button (.*)/ do |button|
  step %{I press #{button}}
end

Then /I should (not )?see houses ratings: (.*)/ do |no, list|
  @houses= House.where(avg_house_rating: list.split(%r{\s*, }))
  @houses.each do |house|
    step %{I should #{no}see "#{house['name']}"}
  end
end

When /I (un)?check the following house ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(%r{\s*, }).each do |rating|
    step %{I #{uncheck}check "houses_ratings[#{rating}]"}
  end
end