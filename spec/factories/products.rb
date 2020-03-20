FactoryBot.define do
  
  factory :product do
    id {1}
    # user_id{1}
    item_name {"たんぽぽ"}
    item_detail {"2020年春のお告げ"}
    # category_id {212}

    condition_id {1}
    item_size {"s"}
    brand {"花"}
    delivery_pay_id {1}
    prefecture_id {5}
    lead_time_id {1}

    price {3000}
    status {0}
    user 
    category
   
  end
end