# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Repositories', type: :request do
  describe 'GET /show' do
    before do
      ScheduledSyncReposJob = Struct.new(:provider_job_id)
      scheduled_job = ScheduledSyncReposJob.new(provider_job_id: 123)
      allow(SyncReposJob).to receive(:perform_later).and_return(scheduled_job)
    end

    it 'returns http success with user login params' do
      get '/api/v1/repositories', params: { id: 'aranhaqg' }
      expect(response.status).to eq(200)
    end

    it 'returns http bad request if no user login params' do
      get '/api/v1/repositories'
      expect(response.status).to eq(400)
    end
  end
end
