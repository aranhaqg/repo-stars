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
  
      repository
    end
  end
  