require 'rest_client'

module MailgunApiRails
  class Delivery
    attr_accessor :settings

    def initialize(settings)
      pp "fart"

      self.settings = settings
    end
  end
end

ActionMailer::Base.add_delivery_method :mailgun, MailgunApiRails::Delivery