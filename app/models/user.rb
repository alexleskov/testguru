# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_level(value)
    Test.where(level: value).joins('LEFT JOIN test_stats ON test_stats.test_id = tests.id')
        .where('test_stats.user_id = :id', id: id)
  end
end
