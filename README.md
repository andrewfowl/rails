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
Updating model to handle omniauth callbacks: `rails g model TwitterAccount user:belongs_to name username image token secret` (user will be able to have multiple accounts; this allows to also track user API name, usename, avatart, their token and secret) then `rails db:migrate`

Add twit model: `rails g model Tweet user:belongs_to twitter_account:belongs_to body:text publish_at:datetime tweet_id:string` then `rails db:migrate`

Create new job `rails g job Tweet`

Add bavkground job worker `bundle add sidekiq` (it needs redis - start with `sudo service redis-server start` once installed)

* Deployment instructions

before deployment run `bundler lock --add-platform x86_64-linux`
swap sqlite to postgresql `rails db:system:change --to=postgresql` then `bundle`


Not sure full code - but run `bin/rails db:create` and then `rails db:migrate`
Add prod credentials `sudo EDITOR="code --wait" bin/rails credentials:edit --environment=development` copy content and paste here `EDITOR="code --wait" bin/rails credentials:edit --environment=production`

* ...

Create a Railway project with the Postgres plugin
Connect to your Railway project with   `railway link`
Install Ruby requirements `bundle install`
Migrate the database railway run `rails db:migrate`
Run Rails railway run `bin/rails server`
deploy with `railway up`