class User < ApplicationRecord
  has_many :test_stats
  has_many :tests, through: :test_stats

  def tests_by_level(value)
    self.tests.where(level: value)
  end
end
