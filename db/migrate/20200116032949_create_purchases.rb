# frozen_string_literal: true

class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.belongs_to :user, null: false, foreign_key: { on_delete: :cascade }, index: true
      t.belongs_to :purchase_option, null: false, foreign_key: { on_delete: :cascade }, index: true
      t.date :expires_at
      t.timestamps
    end
  end
end
