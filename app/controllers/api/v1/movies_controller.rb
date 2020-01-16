# frozen_string_literal: true

module Api
  module V1
    class MoviesController < SitesController
      def index
        movies = Films::Movie.all
        render json: {
          movies: MovieSerializer.new(movies)
        }, status: :ok
      end
    end
  end
end
