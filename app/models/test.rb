# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: 'user_id'
  has_many :questions, dependent: :destroy
  has_many :test_stats, dependent: :destroy

  def self.show_by_category_name(value)
    Test.order(title: :desc).joins(:category)
        .where('categories.title = :value', value: value).pluck(:title)
  end
end
