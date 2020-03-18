require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#create' do
    #全ての条件が揃ったら
    it "is valid with a item_name, user_id, item_detail, condition_id, price, category_id, delivery_pay_id, prefecture_id, lead_time_id, status" do
      # user = create(:user)
      # binding.pry
      product = build(:product)
      expect(product).to be_valid
    end  
    #user_id
    it "is invalid without a user_id" do
      product = build(:product, user_id: "")
      product.valid?
      
      expect(product.errors[:user_id]).to include("can't be blank")
      
    end
    #商品名
    it "is invalid without a item_name" do
      product = build(:product, item_name: "")
      product.valid?
      
      expect(product.errors[:item_name]).to include("can't be blank")
    end
    #商品の説明
    it "is invalid without a item_detail" do
      product = build(:product, item_detail: "")
      product.valid?
    
      expect(product.errors[:item_detail]).to include("can't be blank")
    end
    #カテゴリー
    it "is invalid without a category_id" do
      product = build(:product, category_id: "")
      product.valid?
      expect(product.errors[:category_id]).to include("can't be blank")
    end
    #商品の状態
    it "is invalid without a condition_id" do
      product = build(:product, condition_id: "")
      product.valid?
      expect(product.errors[:condition_id]).to include("can't be blank")
    end
    #配送料の負担
    it "is invalid without a delivery_pay_id" do
      product = build(:product, delivery_pay_id: "")
      product.valid?
      expect(product.errors[:delivery_pay_id]).to include("can't be blank")
    end
    #発送元
    it "is invalid without a prefecture_id" do
      product = build(:product, prefecture_id: "")
      product.valid?
      expect(product.errors[:prefecture_id]).to include("can't be blank")
    end
    #発送までの日数
    it "is invalid without a lead_time_id" do
      product = build(:product, lead_time_id: "")
      product.valid?
      expect(product.errors[:lead_time_id]).to include("can't be blank")
    end
    #販売価格
    it "is invalid without a price" do
      product = build(:product, price: "")
      product.valid?
      expect(product.errors[:price]).to include("can't be blank", "is not a number")
    end

    it "is invalid without a status" do
      product = build(:product, status: "")
      product.valid?
      expect(product.errors[:status]).to include("can't be blank")
    end

    #nameの文字が40文字以上と未満の場合
    it "is invalid item_name is too long maximum 40 characters" do
      product = build(:product, item_name: "a" * 41)
      product.valid?
  
      expect(product.errors[:item_name]).to include("is too long (maximum is 40 characters)")
    end

    it "is valid with a item_name that has less than 40 characters" do
      product = build(:product, item_name: "a" * 40)
      expect(product).to be_valid
    end

    #item_detailの文字が1000文字以上と以下の場合
    it "is invalid item_detail is too long maximum 1000 characters" do
      product = build(:product, item_detail: "a" * 1001)
      product.valid?
      expect(product.errors[:item_detail]).to include("is too long (maximum is 1000 characters)")
    end

    it "is valid with a item_detail that has less than 1000 characters" do
      product = build(:product, item_detail: "a" * 1000)
      expect(product).to be_valid
    end

    #priceが10000000円以上の場合
    it "is invalid price is too much maximum 10000000" do
      product = build(:product, price: 10000000)
      product.valid?
      
      expect(product.errors[:price]).to include("must be less than 10000000")
    end

    #priceが9999999円の場合
    it "is valid price is  maximum 9999999" do
      product = build(:product, price: 9999999)
      product.invalid?
      expect(product).to be_valid
    end

    #priceが300円未満の場合
    it "is invalid with a that has less than 300" do
      product = build(:product, price: 299)
      product.valid?
      expect(product.errors[:price]).to include("must be greater than or equal to 300")
    end

    #priceが300円の場合
    it "is valid with a that has more than 300" do
      product = build(:product, price: 300)
      expect(product).to be_valid
    end

  end
  
end  