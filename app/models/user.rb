# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tests, through: :test_stats
  has_many :test_stats, dependent: :destroy
  has_many :tests, as: :author, dependent: :destroy

  def tests_by_level(value)
    Test.where(level: value)
  end
end
