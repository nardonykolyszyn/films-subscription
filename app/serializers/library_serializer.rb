# frozen_string_literal: true

class LibrarySerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :expires_at

  attribute :purchase_option do |obj|
    obj.purchase_option
  end

  attribute :title do |obj|
    obj.purchase_option.film.title
  end

  attribute :plot do |obj|
    obj.purchase_option.film.plot
  end
end
