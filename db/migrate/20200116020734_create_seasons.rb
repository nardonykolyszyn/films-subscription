# frozen_string_literal: true

class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :number
      t.belongs_to :film, null: false, foreign_key: { on_delete: :cascade }, index: true

      t.timestamps
    end
  end
end
