# Mailgun API Action Mailer adapter

`Gemfile`
```
gem 'mailgun-api-rails'
```

```
$ bundle
```


`config/application.rb`
```
config.action_mailer.delivery_method = :mailgun
config.action_mailer.mailgun_settings = {
  sender:       ENV['MAILGUN_SENDER'],
  domain:       ENV['MAILGUN_DOMAIN'],
  api_key:      ENV['MAILGUN_API_KEY'],
  api_base_url: ENV['MAILGUN_API_BASE_URL']
}
```