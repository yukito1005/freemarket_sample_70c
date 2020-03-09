class Profile < ApplicationRecord
  belongs_to :user

  validates :lastname, :lastname_kana, presence: true
  validates :firstname, :firstname_kana, presence: true
  validates :birthday, presence: true
  validates :postal_code, :prefecture, :city, :address, presence: true
end
