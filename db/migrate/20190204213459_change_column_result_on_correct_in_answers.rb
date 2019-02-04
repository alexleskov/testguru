class ChangeColumnResultOnCorrectInAnswers < ActiveRecord::Migration[5.2]
  def up
    remove_column :answers, :result
    add_column :answers, :correct, :boolean
  end

  def down
    remove_column :answers, :correct
    add_column :answers, :result, :string
  end
end
