class Product < ApplicationRecord
  has_many :images
  # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  # belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
