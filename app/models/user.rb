# frozen_string_literal: true

class User < ApplicationRecord
  ## Associations
  has_many :purchases
  ## Validations
  validates :email, uniqueness: true
  ## Instance methods
  def current_library
    purchases.where('expires_at > (?)', DateTime.now)
  end
end
