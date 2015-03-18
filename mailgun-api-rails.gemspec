# encoding: UTF-8
version = File.read(File.expand_path('../VERSION',__FILE__)).strip

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'mailgun-api-rails'
  s.version      = version
  s.date         = '2015-03-18'
  s.summary      = "Better Mailgun API adapter for Action Mailer"
  s.description  = "Mailgun API adapter for Action Mailer"
  s.authors      = ["Thomas Mulloy"]
  s.email        = 'thomas@shoppu.us'
  s.files        = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.homepage     = 'https://github.com/shoppu/mailgun-api-rails'
  s.license      = 'MIT'
  s.add_dependency 'actionmailer'
  s.add_dependency 'rest-client'
end