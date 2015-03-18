require 'rest_client'

module MailgunApiRails
  class Delivery
    attr_accessor :settings

    def initialize(settings)
      self.settings = settings
    end

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

    def deliver!(mail)

      pp "MAIL BRO", mail
      RestClient.post "https://api:#{api_key}@#{api_base_url}/#{domain}/messages",
        to: "thomas@shoppu.us",
        subject: "Hello",
        text: "Testing some Mailgun awesomness!"
    end

  end
end

ActionMailer::Base.add_delivery_method :mailgun, MailgunApiRails::Delivery