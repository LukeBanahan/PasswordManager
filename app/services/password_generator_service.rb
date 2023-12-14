# frozen_string_literal: true

class PasswordGeneratorService
  require 'securerandom'


  def self.generate_strong_password
    SecureRandom.base64(15)
  end
end
