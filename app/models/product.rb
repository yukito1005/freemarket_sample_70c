class Product < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  # belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
  belongs_to :user
  belongs_to :category
end
