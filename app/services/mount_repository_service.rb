# frozen_string_literal: true

class MountRepositoryService < ApplicationService
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def call
    mount_repository
  end

  private

  def mount_repository
    repository = Repository.find_or_create_by(github_id: @item[:id])
    repository.name = @item[:name]
    repository.stargazers_count = @item[:stargazers_count]
    repository.user_id = find_or_create_github_user
    repository
  end

  def find_or_create_github_user
    user_github_id = @item[:owner][:id]
    login = @item[:owner][:login]
    user = User.find_or_create_by(github_id: user_github_id) do |u|
      u.login = login
    end
    user.id
  end
end
