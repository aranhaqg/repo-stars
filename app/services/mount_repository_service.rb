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
      repository = Repository.new
      repository.github_id = @item[:id]
      repository.name = @item[:name]
      repository.stargazers_count = @item[:stargazers_count]
      repository.user_id = find_or_create_github_user
      repository
    end
    
    def find_or_create_github_user
      user_github_id = @item[:owner][:id]
      login = @item[:owner][:id]
      user = User.find_or_create_by(github_id: user_github_id, login: )
      return user.id
    end
  end
  