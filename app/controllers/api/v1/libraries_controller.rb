# frozen_string_literal: true

module Api
  module V1
    class LibrariesController < SitesController
      def show
        user = User.find_by(id: params[:user_id])
        return not_found if user.nil?

        render json: {
          library: load_collection(LibrarySerializer, user.current_library.order(:expires_at))
        }, status: :ok
      end

      private

      def not_found
        render json: { message: 'This user could not be retrieved' }, status: :not_found
      end
    end
  end
end
