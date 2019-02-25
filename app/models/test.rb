# frozen_string_literal: true

class Test < ApplicationRecord
  def self.show_by_category_name(value)
    Test.order(title: :desc).joins("INNER JOIN categories ON tests.category_id = categories.id
                                         AND categories.title = '#{value}'").pluck(:title)
  end
end
