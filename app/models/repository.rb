class Repository < ApplicationRecord
    belongs_to :user

    validates :user, :github_id, :name, :stargazers_count, presence: true
end
