class PasswordGeneratorService
    require 'securerandom'


        def self.generate_strong_password
            password = SecureRandom.base64(15)
        end
    end

   