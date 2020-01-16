# frozen_string_literal: true

class Film < ApplicationRecord
  ## Type of films.
  TYPES = %w[movie season].freeze
  ## Validations
  validates :title, :plot, presence: true
  ## Associations
  has_many :purchase_options
  has_one  :movie
  has_one  :season
end
