# frozen_string_literal: true

class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attribute :purchase_options do |obj|
    obj.film.purchase_options
  end
  belongs_to :film
end
