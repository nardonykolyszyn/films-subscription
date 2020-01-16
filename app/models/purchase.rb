# frozen_string_literal: true

class Purchase < ApplicationRecord
  ## Associations
  belongs_to :user
  belongs_to :purchase_option
  has_one    :product, through: :purchase_option
  ## Validations
  validate :unique_purchase_option, if: :new_record?

  def unique_purchase_option
    existing_purchase = user.current_library
                            .where(purchase_option_id: purchase_option_id).any?
    errors.add(:purchase_option, 'You have already bought this film.') if existing_purchase
  end
end
