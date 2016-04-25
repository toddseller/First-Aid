Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redistogo:bc5aa9cc8fb40e422757e989a9f47d27@lab.redistogo.com:9952/' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redistogo:bc5aa9cc8fb40e422757e989a9f47d27@lab.redistogo.com:9952/' }
end