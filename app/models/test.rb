# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :categories
  has_many :questions
  has_many :test_stats
  has_many :users, through: :test_stats
  has_many :question_stats, through :questions

  def self.show_by_category_name(value)
    Test.order(title: :desc).joins('LEFT JOIN categories ON tests.category_id = categories.id')
        .where('categories.title = :value', value: value).pluck(:title)
  end
end
