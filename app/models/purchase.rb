# frozen_string_literal: true

class Purchase < ApplicationRecord
  ## Associations
  belongs_to :user
  belongs_to :purchase_option
  has_one    :product, through: :purchase_option
  ## Validations
  # NOTE: Validate purchase_option uniqueness.
  # validate :unique_purchase_option
end
