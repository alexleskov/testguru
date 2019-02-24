# frozen_string_literal: true

class Test < ApplicationRecord
  def self.show_by_category_name(value)
    Test.order(title: :desc).where(category_id: Category.where(title: value)).pluck(:title)
  end
end
