class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  # belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
  belongs_to :user
  belongs_to :category
  validates :user_id, presence: true
  validates :item_name, presence: true, length: { maximum: 40 }
  validates :item_detail, presence: true, length: { maximum: 1000}
  validates :condition, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 300, less_than: 10000000} 
  validates :category_id, presence: true 
  validates :delivery_pay, presence: true 
  validates :orign_area, presence: true
  validates :lead_time, presence: true
  validates :status, presence: true
end

# minimum: 300, 