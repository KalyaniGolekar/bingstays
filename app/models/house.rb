class House < ActiveRecord::Base
    def self.all_house_ratings
        %w(1 2 3 4 5)
    end
end