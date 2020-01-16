# frozen_string_literal: true

module Films::Seasons
  class Episode < ApplicationRecord
    belongs_to :season
  end
end
