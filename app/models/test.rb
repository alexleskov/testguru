# frozen_string_literal: true

class Test < ApplicationRecord
  def self.show_by_category_name(value)
    Test.order(title: :desc).joins('LEFT JOIN categories ON tests.category_id = categories.id')
        .where('categories.title = :value', value: value).pluck(:title)
  end
end
