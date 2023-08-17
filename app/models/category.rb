class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categorized_transactions, class_name: 'Transaction'

  ICON_CHOICES = [
    { class: 'fas fa-heart', label: 'Heart', unicode: '\f004' },
    { class: 'fas fa-star', label: 'Star', unicode: '\f005' },
    # Add more icons here
  ]

  validates :name, presence: true
  validates :icon, presence: true
end
