# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_stats
  has_many :tests, through: :test_stats
  has_one :author
  has_many :question_stats

  def tests_by_level(value)
    Test.where(level: value).joins('LEFT JOIN test_stats ON test_stats.test_id = tests.id')
        .where('test_stats.user_id = :id', id: id)
  end
end
