# frozen_string_literal: true

class AddNullConstraintForTablesColumns < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :caregory_id, false)
    change_column_null(:users, :fullname, false)
    change_column_null(:users, :role, false)
    change_column_null(:questions, :body, false)
    change_column_null(:questions, :test_id, false)
    change_column_null(:answers, :body, false)
    change_column_null(:answers, :correct, false)
    change_column_null(:answers, :question_id, false)
    change_column_null(:categories, :title, false)
    change_column_null(:answers, :question_id, false)
    change_column_null(:questions, :test_id, false)
  end
end
