# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, polymorphic: true
  has_many :questions, dependent: :destroy
  has_many :test_stats, dependent: :destroy
  has_many :users, through: :test_stats

  
  def self.show_by_category_name(value)
    category_id = Category.select(:id).where(title: value).first
    Test.order(title: :desc).where(category: category_id).pluck(:title)
  end
end
