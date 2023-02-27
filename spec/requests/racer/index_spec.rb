require 'rails_helper'

RSpec.describe "Racers", type: :request do
  describe "GET /racers/index" do
    let!(:racer) { create(:racer) }
    context 'when the index loads correctly' do 
      it 'return http status ok' do 
        get racers_path, headers: { 'Accept': 'application/json' } 
        expect(response).to have_http_status :ok
      end

      it 'show the right json' do 
        get racers_path, headers: { 'Accept': 'application/json' } 
        expect(response).to render_template('racers/index')
      end 
    end 
  end
end
