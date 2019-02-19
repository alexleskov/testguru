class Test < ApplicationRecord
  has_many :test_stats
  has_many :users, through: :test_stats

  def self.show_by_category_name(value)
    tests = []
    category_id = Category.find_by(title: value.to_s).id
    tests_by_category = Test.order(id: :desc).where("category_id = ?", category_id)
    tests_by_category.each { |test| tests << test.title }
    tests
  end

end
