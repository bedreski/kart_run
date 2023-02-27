require 'rails_helper'

RSpec.describe "Racers", type: :request do
  describe "POST /racers/create" do
    context 'when it creates successfully' do 
      it 'returns http status created' do 
        post racers_path, headers: { 'Accept': 'application/json' } 
        expect(response.status).to eq(201)
      end 

      it 'increase the resource record number' do 
        post racers_path, headers: { 'Accept': 'application/json' } 
        expect(Racer.count).to eq(1)
      end 
    end 
  end
end
