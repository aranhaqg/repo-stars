# frozen_string_literal: true

class User < ApplicationRecord
  has_many :repositories

  validates :login, :github_id, presence: true
  validates :github_id, uniqueness: true
end
