# Ruby on Rails sample (happy path)

API-only Rails 7.1 app (Notes) with SQLite, a model, a REST controller, migrations and Minitest tests.

- Install: `bundle install`
- DB: `bin/rails db:setup`
- Test: `bin/rails test`
- Run: `bin/rails server` then `curl localhost:3000/health`

Detection hints: `Gemfile` with `rails`, `config/application.rb`, `bin/rails`, `config/routes.rb`.
