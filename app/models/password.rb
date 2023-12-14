# frozen_string_literal: true

class Password < ApplicationRecord
  belongs_to :user
  validates :website, presence: true, uniqueness: true
  validates :username, presence: true
  validates :password, presence: true
end
