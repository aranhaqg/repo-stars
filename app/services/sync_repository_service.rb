# frozen_string_literal: true

class SyncRepositoryService < ApplicationService
    include HTTParty
    attr_reader :user_login
  
    def initialize(user_login)
      @user_login = user_login
    end
  
    def call
      response = self.class.get("https://api.github.com/search/repositories?q=user:#{@user_login}")
  
      process_response(response.parsed_response)
    end
  
    private
  
    def process_response(response)
      items = response['items']
      
      items.each do |item|
        repository = MountRepositoryService.call(item.deep_symbolize_keys)
        repository.save
      end
    end
  end
  