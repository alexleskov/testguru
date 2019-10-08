# frozen_string_literal: true

class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.integer :caregory_id

      t.timestamps
    end
  end
end
