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
  validates :nickname, :encrypted_password, presence: true
  validates :password, presence: true, length: { minimum: 7 }, format: { with: /\A[a-zA-Z0-9]+\z/, message: '半角で入力してください' }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end