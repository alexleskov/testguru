# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_stats, dependent: :destroy
  has_many :tests, through: :test_stats

  def tests_by_level(value)
    tests.where(level: value)
  end
end
