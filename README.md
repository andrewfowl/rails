# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
Run "bundle"

* Configuration

* Database creation

* Database initialization

* How to run the test suite
Run dev with `foreman start -f Procfile.dev`
Run other with `rails server" or "rails s`

For .env run `EDITOR="code --wait" bin/rails credentials:edit --environment=development`
access credentials `rails c` then `Rails.application.credentials.twitter` or  `Rails.application.credentials.dig(:twitter, :api_keys)`

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
