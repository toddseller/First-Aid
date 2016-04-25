web bin/rails server -p $PORT -e $RAILS_ENV
web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb

worker: bundle exec sidekiq -e production