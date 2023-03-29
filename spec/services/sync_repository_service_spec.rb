# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SyncRepositoryService, type: :service do
  describe '#call' do
    let(:user_login) { 'aranhaqg' }
    let(:github_id) { 322_376_156 }
    let(:expected_stargazers_count) { 3 }
    let(:item_response) do
      {
        id: github_id,
        node_id: 'MDEwOlJlcG9zaXRvcnkzMjIzNzYxNTY=',
        name: 'aranhaqg',
        full_name: 'aranhaqg/aranhaqg',
        private: false,
        owner: {
          login: 'aranhaqg',
          id: 1_275_896,
          node_id: 'MDQ6VXNlcjEyNzU4OTY=',
          avatar_url: 'https://avatars.githubusercontent.com/u/1275896?v=4',
          url: 'https://api.github.com/users/aranhaqg',
          site_admin: false
        },
        html_url: 'https://github.com/aranhaqg/aranhaqg',
        description: 'Here you can find all about me!',
        url: 'https://api.github.com/repos/aranhaqg/aranhaqg',
        deployments_url: 'https://api.github.com/repos/aranhaqg/aranhaqg/deployments',
        created_at: '2020-12-17T18:13:51Z',
        updated_at: '2021-07-01T14:30:54Z',
        pushed_at: '2021-07-01T14:30:51Z',
        git_url: 'git://github.com/aranhaqg/aranhaqg.git',
        clone_url: 'https://github.com/aranhaqg/aranhaqg.git',
        size: 196,
        stargazers_count: expected_stargazers_count,
        has_issues: true
      }
    end

    let(:github_response) do
      {
        total_count: 1,
        incomplete_results: false,
        items: [item_response]
      }
    end

    let(:github_url) { "https://api.github.com/search/repositories?q=user:#{user_login}" }
    let!(:stub) do
      stub_request(:get, github_url)
        .to_return(
          status: 200,
          body: github_response.to_json,
          headers: { content_type: 'application/json' }
        )
    end

    it 'with success request' do
      described_class.call(user_login)
      expect(stub).to have_been_requested
      saved_repository = Repository.find_by(github_id:)
      expect(saved_repository.stargazers_count).to eq(expected_stargazers_count)
    end
  end
end
