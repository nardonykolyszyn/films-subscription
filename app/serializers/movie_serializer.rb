# frozen_string_literal: true

class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attribute :purchase_options do |obj|
    obj.film.purchase_options
  end

  attribute :title do |obj|
    obj.film.title
  end

  attribute :plot do |obj|
    obj.film.plot
  end
end
