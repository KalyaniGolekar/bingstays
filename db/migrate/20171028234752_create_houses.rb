class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :avg_house_rating
      t.text :description
      t.string :lord_name
      t.integer :avg_lord_rating
      t.integer :price
      t.integer :capacity
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
    end
  end
end
