class Answer < ApplicationRecord
  belongs_to :user

  belongs_to :answerable, polymorphic: true
  has_many :answers, as: :answerable

  validates :answer, presence: true
end
