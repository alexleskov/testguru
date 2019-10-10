class CreateTestsCategoriesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tests, :categories do |t|
      t.index [:test_id, :category_id]
      t.index [:category_id, :test_id]
      t.belongs_to :test
      t.belongs_to :category
    end
  end
end
