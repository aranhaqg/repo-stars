require 'rails_helper'

RSpec.describe "Repositories", type: :request do
  describe "GET /show" do
    before { allow(SyncReposJob).to receive(:perform_now) }
    
    it 'returns http success' do
      get '/api/v1/repositories/aranhaqg'
      expect(response.status).to eq(200)
    end
  end
end
