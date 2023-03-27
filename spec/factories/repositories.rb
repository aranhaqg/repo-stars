# This will guess the User class
FactoryBot.define do
    factory :repository do
      name { "aranha-repo" }
      github_id  { 421621379 }
      stargazers_count { 2 }
      user
    end
  end