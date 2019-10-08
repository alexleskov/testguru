# frozen_string_literal: true

class AddReferencesInTables < ActiveRecord::Migration[5.2]
  def change
    remove_column(:tests, :caregory_id, :integer)
    remove_column(:questions, :test_id, :integer)
    remove_column(:answers, :question_id, :integer)
    add_reference(:tests, :caregory, foreign_key: true)
    add_reference(:questions, :test, foreign_key: true)
    add_reference(:answers, :question, foreign_key: true)
  end
end
