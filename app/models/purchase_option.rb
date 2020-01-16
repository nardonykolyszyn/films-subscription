# frozen_string_literal: true

class PurchaseOption < ApplicationRecord
  ## Enum method
  enum video_quality: %i[sd hd] 
  ## Associations
  belongs_to :film
end
