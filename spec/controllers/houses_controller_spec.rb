require 'rails_helper'

describe HousesController, type: :controller do
   
    describe 'Add a house' do
        let(:params) {{ :name => 'Uclub' }} 
        let(:house) { double('house', params) }
        it 'creates a new house' do
            expect(House).to receive(:create!).with(params).and_return(house)
            post :create, house: params
        end
        
        it 'sets a flash message' do
            allow(House).to receive(:create!).with(params).and_return(house)
            post :create,  house: params
            expect(flash[:notice]).to eq("#{house.name} was successfully created.")
        end
        
        it 'returns to the houses list' do
            allow(House).to receive(:create!).with(params).and_return(house)
            post :create,  house: params
            expect(response).to redirect_to(houses_path)
        end
    end
    
    describe 'destroys a house' do
        let(:id) {'3'}
        let(:house) {double('house', :name => '52 Potter')}
        
        it 'calls the find method to retreive the house' do
            expect(House).to receive(:find).with(id).and_return(house)
            allow(house).to receive(:destroy)
            get :destroy, id: id
        end
        
        it 'sets a flash message' do
           allow(House).to receive(:find).with(id).and_return(house)
           allow(house).to receive(:destroy)
           get :destroy,  id: id
           expect(flash[:notice]).to eq("House '#{house.name}' deleted.")
        end
        
        it 'redirects to the houses page' do
           allow(House).to receive(:find).with(id).and_return(house)
           allow(house).to receive(:destroy)
           get :destroy,  id: id
           expect(response).to redirect_to(houses_path)
       end
    end
    
    describe 'shows a house info' do
        let(:id) {'3'}
        let(:house) {double('house')}
        it 'calls the find method on house' do
            expect(House).to receive(:find).with(id).and_return(house)
            get :show, id: id
        end
        
    end
    
    describe 'goes to edit house info' do
        let(:id) {'3'}
        let(:house) {double('house')}
        it 'calls the find method on house' do
            expect(House).to receive(:find).with(id).and_return(house)
            get :edit, id: id
        end
        
    end
    
    describe 'updates a house' do
        let(:id) {'2'}
        let(:house) {double('house', :name => 'test')}
        let(:params) {{:description =>'uclub'}}
        it 'calls the find method to retreive the house' do
            expect(House).to receive(:find).with(id).and_return(house)
            allow(house).to receive(:update_attributes!).with(params)
            get :update, id: id, house: params
        end
        
        it 'sets a flash message' do
            allow(House).to receive(:find).with(id).and_return(house)
            allow(house).to receive(:update_attributes!).with(params)
            get :update, id: id, house: params
            expect(flash[:notice]).to eq("#{house.name} was successfully updated.")
        end
        
        it 'redirects to house list' do
            allow(House).to receive(:find).with(id).and_return(house)
            allow(house).to receive(:update_attributes!).with(params)
            get :update, id: id, house: params
            expect(response).to redirect_to(house_path(house))
        end
    end
end
