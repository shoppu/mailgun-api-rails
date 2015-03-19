require 'rest_client'

module MailgunApiRails
  class Delivery
    attr_accessor :settings

    def initialize(settings)
      self.settings = settings
    end

    ## Config options
    def sender
      self.settings[:sender]
    end

    def domain
      self.settings[:domain]
    end

    def api_key
      self.settings[:api_key]
    end

    def api_base_url
      self.settings[:api_base_url]
    end

    ## Action mailer call
    def deliver!(mail)
      RestClient.post "https://api:#{api_key}@#{api_base_url}/#{domain}/messages",
        from:    mail.from,
        to:      mail.to,
        subject: mail.subject,
        text:    "Testing some Mailgun awesomness!"
    end
  end
end

ActionMailer::Base.add_delivery_method :mailgun, MailgunApiRails::Delivery