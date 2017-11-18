# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

houses = [{:name => '99 Chestnut', :avg_house_rating => '3', :description => 'Lorem Ipsum', :lord_name => 'Sujoy Das', :avg_lord_rating => '4', :price => '300', :capacity => '6'},
          {:name => '25 Leroy', :avg_house_rating => '2', :description => 'Lorem Ipsum', :lord_name => 'Sayali Zite', :avg_lord_rating => '3', :price => '310', :capacity => '8'},
          {:name => '44 Mozart', :avg_house_rating => '5', :description => 'Lorem Ipsum', :lord_name => 'Akanksha Jadhav', :avg_lord_rating => '5', :price => '350', :capacity => '4'}
          
  	 ]

houses.each do |house|
  House.create!(house)
end