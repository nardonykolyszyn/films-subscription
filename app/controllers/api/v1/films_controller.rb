# frozen_string_literal: true

module Api
  module V1
    class FilmsController < SitesController
      def index
        render json: params[:resource].blank? ? load_nested_resources : load_current_resource, status: :ok
      end

      private

      def load_current_resource
        return { movies: load_collection(MovieSerializer, Films::Movie.all) } if is_movie_resource?

        { seasons: load_collection(SeasonSerializer, Films::Season.all) }
      end

      def load_nested_resources
        {
          films: [
            { movies: load_collection(MovieSerializer, Films::Movie.all) },
            { seasons: load_collection(SeasonSerializer, Films::Season.all) }
          ]
        }
      end

      Film::TYPES.each do |attribute|
        define_method "is_#{attribute}_resource?" do
          params[:resource]&.downcase == attribute
        end
      end
    end
  end
end
