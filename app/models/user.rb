class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # has_many :products, class_name: 'Product', foreign_key: 'user_id'
  has_one :profile
  has_one :creditcard
  accepts_nested_attributes_for :profile
  # validates :email, presence: true, unique: true
  validates :nickname, :password, :encrypted_password, presence: true
  validates :email, presence: true, uniqueness: true
end