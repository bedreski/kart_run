require 'rails_helper'

RSpec.describe "Racers", type: :request do
  describe "GET /index" do
    let(:racer) { create(:racer) }
    context 'when index loads correctly' do 
      it 'returns http status ok' do 
        get racer_path(racer.id), headers: { 'Accept': 'application/json' } 
        expect(response).to have_http_status :ok
      end 
    end 
  end
end
