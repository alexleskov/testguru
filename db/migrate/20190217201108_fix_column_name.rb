class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tests, :caregory_id, :category_id
  end
end
