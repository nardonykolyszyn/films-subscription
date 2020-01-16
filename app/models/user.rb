# frozen_string_literal: true

class User < ApplicationRecord
  ## Validations
  validates :email, uniqueness: true
end
