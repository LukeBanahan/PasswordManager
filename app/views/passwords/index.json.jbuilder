# frozen_string_literal: true

json.array! @passwords, partial: 'passwords/password', as: :password
