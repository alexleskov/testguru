# frozen_string_literal: true

class TestStat < ApplicationRecord
  belongs_to :test
  belongs_to :user
end
