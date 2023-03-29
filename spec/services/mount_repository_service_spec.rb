# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MountRepositoryService, type: :service do
  describe '#call' do
    let(:item_response) do
      {
        id: 322_376_156,
        node_id: 'MDEwOlJlcG9zaXRvcnkzMjIzNzYxNTY=',
        name: 'aranhaqg',
        full_name: 'aranhaqg/aranhaqg',
        private: false,
        owner: {
          login: 'aranhaqg',
          id: 1_275_896,
          node_id: 'MDQ6VXNlcjEyNzU4OTY=',
          avatar_url: 'https://avatars.githubusercontent.com/u/1275896?v=4',
          gravatar_id: '',
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
        stargazers_count: 1,
        watchers_count: 1,
        has_issues: true
      }
    end

    let(:mounted_repository) { described_class.call(item_response) }

    it { expect(item_response[:name]).to eq(mounted_repository.name) }
    it { expect(item_response[:id]).to eq(mounted_repository.github_id) }
    it { expect(item_response[:stargazers_count]).to eq(mounted_repository.stargazers_count) }
    it { expect(item_response[:owner][:id]).to eq(mounted_repository.user.github_id) }
  end
end
