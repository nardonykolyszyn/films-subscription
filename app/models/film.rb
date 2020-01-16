# frozen_string_literal: true

class Film < ApplicationRecord
  ## Validations
  validates :title, :plot, presence: true
end
