# Repo Stars Tracker REST API
![GitHub Actions CI](https://github.com/aranhaqg/repo-stars/actions/workflows/rubyonrails.yml/badge.svg)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

This Rails REST API that keeps track of the stars that a given user login has in its Github repositories.

This application have the endpoint "api/v1/repositories" that receives the params ```id``` as a Github user name and in the background searches the user's public repositories using [Github's REST API](https://docs.github.com/en/rest/overview/resources-in-the-rest-api) and saves in a Postgres database their repository name and how many stars it has.

These are some dependencies:

* Ruby 3.2.0
* Rails 7.2.2
* Sidekiq
* RSpec
* PG

For more details check [Gemfile](Gemfile).

## How to run the app locally
Make sure you have a [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails) with [Postgres](https://www.postgresql.org/) and [Sidekiq](https://sidekiq.org/) environment set it up.

Start rails server:
```sh
rails s
```
Start Redis service
```sh
brew restart redis
```
Start Sidekiq
```sh
bundle exec sidekiq
```

Or you can use Docker to run all

```sh
docker compose up --build
```

You can send a request to the API with
```sh
curl -X GET "http://localhost:3000/api/v1/repositories?id=aranhaqg"
```

## How to run the test suite
Run the RSpec with

```sh
bundle exec rspec
```
