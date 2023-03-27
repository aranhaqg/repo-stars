# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MountRepositoryService, type: :service do
  describe '#call' do
    let(:item_response) do
        {
            "id": 322376156,
            "node_id": "MDEwOlJlcG9zaXRvcnkzMjIzNzYxNTY=",
            "name": "aranhaqg",
            "full_name": "aranhaqg/aranhaqg",
            "private": false,
            "owner": {
                "login": "aranhaqg",
                "id": 1275896,
                "node_id": "MDQ6VXNlcjEyNzU4OTY=",
                "avatar_url": "https://avatars.githubusercontent.com/u/1275896?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/aranhaqg",
                "html_url": "https://github.com/aranhaqg",
                "followers_url": "https://api.github.com/users/aranhaqg/followers",
                "following_url": "https://api.github.com/users/aranhaqg/following{/other_user}",
                "gists_url": "https://api.github.com/users/aranhaqg/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/aranhaqg/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/aranhaqg/subscriptions",
                "organizations_url": "https://api.github.com/users/aranhaqg/orgs",
                "repos_url": "https://api.github.com/users/aranhaqg/repos",
                "events_url": "https://api.github.com/users/aranhaqg/events{/privacy}",
                "received_events_url": "https://api.github.com/users/aranhaqg/received_events",
                "type": "User",
                "site_admin": false
            },
            "html_url": "https://github.com/aranhaqg/aranhaqg",
            "description": "Here you can find all about me!",
            "fork": false,
            "url": "https://api.github.com/repos/aranhaqg/aranhaqg",
            "forks_url": "https://api.github.com/repos/aranhaqg/aranhaqg/forks",
            "keys_url": "https://api.github.com/repos/aranhaqg/aranhaqg/keys{/key_id}",
            "collaborators_url": "https://api.github.com/repos/aranhaqg/aranhaqg/collaborators{/collaborator}",
            "teams_url": "https://api.github.com/repos/aranhaqg/aranhaqg/teams",
            "hooks_url": "https://api.github.com/repos/aranhaqg/aranhaqg/hooks",
            "issue_events_url": "https://api.github.com/repos/aranhaqg/aranhaqg/issues/events{/number}",
            "events_url": "https://api.github.com/repos/aranhaqg/aranhaqg/events",
            "assignees_url": "https://api.github.com/repos/aranhaqg/aranhaqg/assignees{/user}",
            "branches_url": "https://api.github.com/repos/aranhaqg/aranhaqg/branches{/branch}",
            "tags_url": "https://api.github.com/repos/aranhaqg/aranhaqg/tags",
            "blobs_url": "https://api.github.com/repos/aranhaqg/aranhaqg/git/blobs{/sha}",
            "git_tags_url": "https://api.github.com/repos/aranhaqg/aranhaqg/git/tags{/sha}",
            "git_refs_url": "https://api.github.com/repos/aranhaqg/aranhaqg/git/refs{/sha}",
            "trees_url": "https://api.github.com/repos/aranhaqg/aranhaqg/git/trees{/sha}",
            "statuses_url": "https://api.github.com/repos/aranhaqg/aranhaqg/statuses/{sha}",
            "languages_url": "https://api.github.com/repos/aranhaqg/aranhaqg/languages",
            "stargazers_url": "https://api.github.com/repos/aranhaqg/aranhaqg/stargazers",
            "contributors_url": "https://api.github.com/repos/aranhaqg/aranhaqg/contributors",
            "subscribers_url": "https://api.github.com/repos/aranhaqg/aranhaqg/subscribers",
            "subscription_url": "https://api.github.com/repos/aranhaqg/aranhaqg/subscription",
            "commits_url": "https://api.github.com/repos/aranhaqg/aranhaqg/commits{/sha}",
            "git_commits_url": "https://api.github.com/repos/aranhaqg/aranhaqg/git/commits{/sha}",
            "comments_url": "https://api.github.com/repos/aranhaqg/aranhaqg/comments{/number}",
            "issue_comment_url": "https://api.github.com/repos/aranhaqg/aranhaqg/issues/comments{/number}",
            "contents_url": "https://api.github.com/repos/aranhaqg/aranhaqg/contents/{+path}",
            "compare_url": "https://api.github.com/repos/aranhaqg/aranhaqg/compare/{base}...{head}",
            "merges_url": "https://api.github.com/repos/aranhaqg/aranhaqg/merges",
            "archive_url": "https://api.github.com/repos/aranhaqg/aranhaqg/{archive_format}{/ref}",
            "downloads_url": "https://api.github.com/repos/aranhaqg/aranhaqg/downloads",
            "issues_url": "https://api.github.com/repos/aranhaqg/aranhaqg/issues{/number}",
            "pulls_url": "https://api.github.com/repos/aranhaqg/aranhaqg/pulls{/number}",
            "milestones_url": "https://api.github.com/repos/aranhaqg/aranhaqg/milestones{/number}",
            "notifications_url": "https://api.github.com/repos/aranhaqg/aranhaqg/notifications{?since,all,participating}",
            "labels_url": "https://api.github.com/repos/aranhaqg/aranhaqg/labels{/name}",
            "releases_url": "https://api.github.com/repos/aranhaqg/aranhaqg/releases{/id}",
            "deployments_url": "https://api.github.com/repos/aranhaqg/aranhaqg/deployments",
            "created_at": "2020-12-17T18:13:51Z",
            "updated_at": "2021-07-01T14:30:54Z",
            "pushed_at": "2021-07-01T14:30:51Z",
            "git_url": "git://github.com/aranhaqg/aranhaqg.git",
            "ssh_url": "git@github.com:aranhaqg/aranhaqg.git",
            "clone_url": "https://github.com/aranhaqg/aranhaqg.git",
            "svn_url": "https://github.com/aranhaqg/aranhaqg",
            "size": 196,
            "stargazers_count": 1,
            "watchers_count": 1,
            "has_issues": true,
            "has_projects": true,
            "has_downloads": true,
            "has_wiki": true,
            "has_pages": false,
            "has_discussions": false,
            "forks_count": 0,
            "archived": false,
            "disabled": false,
            "open_issues_count": 0,
            "allow_forking": true,
            "is_template": false,
            "web_commit_signoff_required": false,
            "topics": [],
            "visibility": "public",
            "forks": 0,
            "open_issues": 0,
            "watchers": 1,
            "default_branch": "main",
            "score": 1.0
        }
    end

    let(:mounted_repository) { described_class.call(item_response) }

    it { expect(item_response[:name]).to eq(mounted_repository.name) }
    it { expect(item_response[:id]).to eq(mounted_repository.github_id) }
    it { expect(item_response[:stargazers_count]).to eq(mounted_repository.stargazers_count) }
    it { expect(item_response[:owner][:id]).to eq(mounted_repository.user.github_id) }
  end
end