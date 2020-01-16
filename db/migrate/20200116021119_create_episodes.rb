# frozen_string_literal: true

class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :plot
      t.belongs_to :season, null: false, foreign_key: { on_delete: :cascade }, index: true

      t.timestamps
    end
  end
end
