# frozen_string_literal: true

class CreatePurchaseOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_options do |t|
      t.float :price
      t.integer :video_quality
      t.belongs_to :film, null: false, foreign_key: { on_delete: :cascade }, index: true

      t.timestamps
    end
  end
end
