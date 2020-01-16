# frozen_string_literal: true

class MovieSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :film
end
