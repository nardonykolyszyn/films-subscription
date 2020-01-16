# frozen_string_literal: true

class SeasonSerializer
  include FastJsonapi::ObjectSerializer

  attributes :number

  attribute :purchase_options do |obj|
    obj.film.purchase_options
  end

  attribute :episodes do |obj|
    obj.episodes
  end

  attribute :title do |obj|
    obj.film.title
  end

  attribute :plot do |obj|
    obj.film.plot
  end
end
