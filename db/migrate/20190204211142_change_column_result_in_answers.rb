class ChangeColumnResultInAnswers < ActiveRecord::Migration[5.2]
  def up
    remove_column :answers, :result
    add_column :answers, :status, :string
  end

  def down
    remove_column :answers, :status
    add_column :answers, :result, :string
  end
end
