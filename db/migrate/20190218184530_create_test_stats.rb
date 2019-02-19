class CreateTestStats < ActiveRecord::Migration[5.2]
  def change
    create_table :test_stats do |t|
      t.boolean :complete_status, default: false, null: false
      t.boolean :success_status, default: false, null: false
      t.integer :score, default: 0, null: false
      t.belongs_to :user, index: true
      t.belongs_to :test, index: true

      t.timestamps
    end
  end
end
