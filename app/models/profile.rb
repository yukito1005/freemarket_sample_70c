class Profile < ApplicationRecord
  belongs_to :user

  validates :firstname, :lastname, presence: true, format: { with: /[ぁ-んァ-ン一-龥]/, message: '全角で入力してください' }
  validates :firstname_kana, :lastname_kana, presence: true, format: { with: /[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+/, message: '全角カタカナのみで入力してください' }
  validates :birthday, presence: true
  validates :postal_code, :prefecture, :city, :address, presence: true
end
