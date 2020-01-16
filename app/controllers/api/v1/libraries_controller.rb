# frozen_string_literal: true

module Api
  module V1
    class LibrariesController < SitesController
      def show
        user = User.find(params[:user_id])
        render json: {
          library: user.current_library
        }, status: :ok
      end
    end
  end
end
