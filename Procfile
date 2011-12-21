web: bundle exec thin start -p
worker: bundle exec rake resque:work
pubsub: bundle exec thin start -p -R ./faye.ru
