class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categorized_categories, class_name: 'Category'

  validates :name, presence: true
  validates :amount, presence: true
end
