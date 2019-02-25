# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_level(value)
    Test.joins("INNER JOIN test_stats ON test_stats.test_id = tests.id
                AND test_stats.user_id = '#{id}' AND tests.level = '#{value}'")
  end
end
