FactoryBot.define do
  
  factory :product do
    id {1}
    # user_id{1}
    item_name {"たんぽぽ"}
    item_detail {"2020年春のお告げ"}
    # category_id {212}
    condition {"目立った傷や汚れなし"}
    item_size {"s"}
    brand {"花"}
    delivery_pay {"着払い(購入者負担)"}
    orign_area {5}
    lead_time {"4~7日で発送"}
    price {3000}
    status {0}
    user 
    category
   
  end
end