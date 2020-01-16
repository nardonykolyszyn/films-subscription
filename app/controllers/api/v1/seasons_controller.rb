# frozen_string_literal: true

module Api
  module V1
    class SeasonsController < SitesController
      def index
        seasons = Films::Season.all
        render json: {
          seasons: load_collection(SeasonSerializer, seasons)
        }, status: :ok
      end
    end
  end
end
