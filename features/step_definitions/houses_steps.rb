# When /I (un)?check the following house ratings: (.*)/ do |uncheck, rating_list|
#   rating_list.split(%r{\s*, }).each do |rating|
#     step %{I #{uncheck}check "rating_#{rating}"}
#   end
# end

Given /the following houses exist/ do |houses_table|
  houses_table.hashes.each do |house|
   @house=House.create!(house) if House.find_by(name: house['name']).nil?
   @house.update_attributes!(house) if @house!=house
  end
  #fail "Unimplemented"
end

When /I press the button (.*)/ do |button|
  step %{I press #{button}}
end

Then /I should (not )?see the houses with ratings: (.*)/ do |no, list|
  @houses= House.where(rating: list.split(%r{\s*, }))
  @houses.each do |house|
    step %{I should #{no}see "#{house['name']}"}
  end
end