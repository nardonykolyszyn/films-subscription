# frozen_string_literal: true

module Api
  module V1
    class PurchasesController < SitesController
      def create
        purchase = Purchase.new(purchase_params)
        purchase.expires_at = Time.now + 3.days
        @data = purchase.save ? handle_valid_for(purchase) : handle_invalid_for(purchase)

        render json: @data, status: purchase.persisted? ? :ok : :unprocessable_entity
      end

      private

      def handle_valid_for(resource)
        {
          purchase: resource,
          message: 'Your purchase has been created'
        }
      end

      def handle_invalid_for(resource)
        {
          errors: resource.errors.full_messages.to_sentence
        }
      end

      def purchase_params
        params.require(:purchase).permit(:user_id, :purchase_option_id)
      end
    end
  end
end
