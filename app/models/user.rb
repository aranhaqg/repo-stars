class User < ApplicationRecord
    has_many :repositories

    validates :login, :github_id, presence: true

end
