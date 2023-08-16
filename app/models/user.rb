class User < ApplicationRecord
  has_many :categorized_categories, class_name: 'Category', foreign_key: 'author_id'
  has_many :categorized_transactions, class_name: 'Transaction', foreign_key: 'author_id'
  has_one_attached :picture

  validates :name, presence: true
end
