class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categorized_transactions, class_name: 'Transaction'

  validates :name, presence: true
  validates :icon, presence: true
end
