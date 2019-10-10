class CreateQuestionStats < ActiveRecord::Migration[5.2]
  def change
    create_table :question_stats do |t|
      t.boolean :success
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
