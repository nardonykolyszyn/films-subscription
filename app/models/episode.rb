# frozen_string_literal: true

class Episode < ApplicationRecord
  ## Associations
  belongs_to :season
  ## Validations
  validates_numericality_of :sequence_number, greater_than: 0
end
