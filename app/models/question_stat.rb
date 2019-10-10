class QuestionStat < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :tests, through: :question
end
