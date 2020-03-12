require 'rails_helper'

describe User do
  describe '#create' do
    #新規登録
    it "is valid with a user registation" do
      user = build(:user)
      expect(user).to be_valid
    end

    #ニックネーム必須
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    #メールアドレス必須
    it "is invalid without an email address" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    #メールアドレスが一意である
    it "is invalid without a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    #メールアドレスのドメインが正しいか
    it "email is invalid if the domain is incorrect" do
      user = build(:user, email: "aaa@aaa")
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end

    #パスワード必須
    it "is invalid without an password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    #パスワードが半角英数字である
    it "password is one-byte, not alphanumeric" do
      user = build(:user, password: "０００００００")
      user.valid?
      expect(user.errors[:password]).to include("半角で入力してください")
    end

    #パスワードとパスワード再確認が一致
    it "is valid without password_confirmation and don't match password" do
      user = build(:user, password: "0000000", password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
    
    #パスワードが7文字以上である
    it "is valid with a password that has more than 7 characters" do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      user.valid?
      expect(user).to be_valid
    end
  end
end