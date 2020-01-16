# frozen_string_literal: true

module Api
  module V1
    class SitesController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :assign_page
      before_action :assign_resource, except: %i[index create]

      def assign_page
        @page = params[:page] || 1
      end

      private

      def load_collection(query)
        ActiveModelSerializers::SerializableResource.new(query)
      end

      # It retrieve any resource by ID.
      def assign_resource
        resource_name = controller_name.singularize
        resource = controller_name.classify.constantize.find(params[:id])
        instance_variable_set("@#{resource_name}", resource)
      end
    end
  end
end
