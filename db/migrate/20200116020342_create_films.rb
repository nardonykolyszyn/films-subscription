# frozen_string_literal: true

class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :plot

      t.timestamps
    end
  end
end
