class Expense < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :amount, presence: true
  validates :category, presence: true
end
