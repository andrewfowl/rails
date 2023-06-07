web: bin/rails server -b 0.0.0.0 -p ${PORT:-3000} -e $RAILS_ENV
worker: sidekiq
release: bin/rails db:migrate