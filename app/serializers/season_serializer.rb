# frozen_string_literal: true

class SeasonSerializer
  include FastJsonapi::ObjectSerializer
  attribute :purchase_options do |obj|
    obj.film.purchase_options
  end

  attribute :episodes do |obj|
    obj.episodes
  end

  belongs_to :film
end
