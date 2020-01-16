# frozen_string_literal: true

module Api
  module V1
    class SitesController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :assign_page

      def assign_page
        @page = params[:page] || 1
      end

      private

      def load_collection(serializer, query)
        serializer.new(query)
      end
    end
  end
end
