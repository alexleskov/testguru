# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_level(value)
    tests_ids = TestStat.where(user_id: id, test_id: Test.where(level: value)).pluck(:test_id)
    Test.find(tests_ids)
  end
end
