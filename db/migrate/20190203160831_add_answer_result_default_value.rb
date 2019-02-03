class AddAnswerResultDefaultValue < ActiveRecord::Migration[5.2]
  def change
  	change_column_default(:answers, :result, 'pending')
  end
end
