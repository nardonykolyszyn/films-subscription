# frozen_string_literal: true

class User < ApplicationRecord
  ## Associations
  has_many :purchases
  ## Validations
  validates :email, uniqueness: true
end
