FactoryBot.define do
  
  factory :profile do
    user
    firstname      { "太郎" }
    lastname       { "田中" }
    firstname_kana { "タロウ" }
    lastname_kana  { "タナカ" }
    postal_code    { "000-000" }
    prefecture     { "東京都" }
    city           { "渋谷区" }
    address        { "道玄坂2-23-12" }
    building       { "フォンティスビル7F"}
    tell           { "090-1234-5678"}
    birthday       { Date.new(2020,03,10) }
  end
end