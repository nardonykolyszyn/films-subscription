# frozen_string_literal: true

module Api
  module V1
    class LibrariesController < SitesController
      def show
        user = User.find_by(id: params[:user_id])
        return not_found if user.nil?
        render json: {
          library: user.current_library
        }, status: :ok
      end

      private

      # Override behavior of knock to insert a custom message when the user is not authenticated
      # source: https://github.com/nsarno/knock/blob/master/app/controllers/knock/application_controller.rb
      def not_found
        render json: { message: 'This user could not be retrieved' }, status: :not_found
      end

    end
  end
end
