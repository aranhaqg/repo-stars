# frozen_string_literal: true

class MountUserService < ApplicationService
    attr_reader :item
  
    def initialize(item)
      @item = item
    end
  
    def call
      mount_user
    end
  
    private
  
    def mount_user
      user = User.new
      user.id = @item['id']
      user.name = @item['name']
      user.full_name = @item['full_name']
      user.stargazers_count = @item['stargazers_count']
      user.url = @item['url']
  
      user
    end
  end
  