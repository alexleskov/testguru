class CreateTestStats < ActiveRecord::Migration[5.2]
  def change
    create_table :test_stats do |t|
      t.boolean :complete_status, default: false, null: false
      t.integer :score, default: 0, null: false
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
