# frozen_string_literal: true

class Purchase < ApplicationRecord
  ## Associations
  belongs_to :user
  belongs_to :purchase_option
  has_one    :product, through: :purchase_option
  ## Validations
  validate :unique_purchase_option

  def unique_purchase_option
    existing_purchase = user.purchases
                            .where(purchase_option_id: purchase_option.id).any?
    errors.add(:purchase_option, 'You have already bought this film.') if existing_purchase
  end
end
