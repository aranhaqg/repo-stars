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
    user.github_id = @item[:owner][:id]
    user.login = @item[:owner][:login]

    user
  end
end
