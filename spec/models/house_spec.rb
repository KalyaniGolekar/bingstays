require 'rails_helper'

describe House, type: :model do
    describe '#find_all_house_ratings' do
        before :each do
            @house_rating1 = '2'
            @house1 = double('house1')
            @house2 = double('house2')
            @house3 = double('house3', :name => 'Alien')
            @results = [@house1,@house2,@house3]
        end
        it 'calls the House.where method using the avg_house_ratings field' do
            expect(House).to receive(:where).with(:avg_house_rating=>@house_rating1).and_return(@results)
            House.new(:avg_house_rating=>@house_rating1).all_house_ratings
        end
        it 'returns the result to the controller' do
            allow(House).to receive(:where).with(:avg_house_rating=>@house_rating1).and_return(@results)
            expect(House.new(:avg_house_rating=>@house_rating1).all_house_ratings).to eq(@results)
        end
    end
end
