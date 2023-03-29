# frozen_string_literal: true

# This will guess the User class
FactoryBot.define do
  factory :user do
    login { 'aranhaqg' }
    github_id { 1_275_896 }
  end
end
