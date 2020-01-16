# frozen_string_literal: true

module Films
  class Season < ApplicationRecord
    belongs_to :film
  end
end
