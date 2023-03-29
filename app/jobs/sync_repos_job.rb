# frozen_string_literal: true

class SyncReposJob < ApplicationJob
  def perform(user_login)
    SyncRepositoryService.call(user_login)
  end
end
