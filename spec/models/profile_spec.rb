require 'rails_helper'

describe Profile do
  describe '#create' do
    #新規登録
    it "is valid with a profile registration" do
      profile = build(:profile)
      expect(profile).to be_valid
    end

    #苗字、全角入力必須
    it "is invalid without last name and full width" do
      profile = build(:profile, lastname: "")
      profile.valid?
      expect(profile.errors[:lastname]).to include("can't be blank", "全角で入力してください")
    end

    #名前、全角入力必須
    it "is invalid without first name and full width" do
      profile = build(:profile, firstname: "")
      profile.valid?
      expect(profile.errors[:firstname]).to include("can't be blank", "全角で入力してください")
    end

    #苗字(フリガナ)、全角入力必須
    it "is invalid without a last name(furigana) and full width" do
      profile = build(:profile, lastname_kana: "")
      profile.valid?
      expect(profile.errors[:lastname_kana]).to include("can't be blank", "全角カタカナのみで入力してください")
    end

    #名前(フリガナ)、全角入力必須
    it "is invalid without a first name(furigana) and full width" do
      profile = build(:profile, firstname_kana: "")
      profile.valid?
      expect(profile.errors[:firstname_kana]).to include("can't be blank", "全角カタカナのみで入力してください")
    end

    #郵便番号必須
    it "is invalid without a postal code" do
      profile = build(:profile, postal_code: "")
      profile.valid?
      expect(profile.errors[:postal_code]).to include("can't be blank")
    end

    #都道府県必須
    it "is invalid without a prefecture" do
      profile = build(:profile, prefecture: "")
      profile.valid?
      expect(profile.errors[:prefecture]).to include("can't be blank")
    end

    #市区町村必須
    it "is invalid without a city" do
      profile = build(:profile, city: "")
      profile.valid?
      expect(profile.errors[:city]).to include("can't be blank")
    end

    #番地必須
    it "is invalid without a address" do
      profile = build(:profile, address: "")
      profile.valid?
      expect(profile.errors[:address]).to include("can't be blank")
    end

    #誕生日必須
    it "is invalid without a biryhday" do
      profile = build(:profile, birthday: "")
      profile.valid?
      expect(profile.errors[:birthday]).to include("can't be blank")
    end
  end
end