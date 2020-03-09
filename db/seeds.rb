# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# --ancestryによるレディースカテゴリbigin--
lady = Category.create(:name=>"レディース")

lady_tops = lady.children.create(:name=>"トップス")
lady_ = lady.children.create(:name=>"ジャケット/アウター")
lady_ = lady.children.create(:name=>"パンツ")
lady_ = lady.children.create(:name=>"スカート")
lady_ = lady.children.create(:name=>"ワンピース")
lady_ = lady.children.create(:name=>"靴")
lady_ = lady.children.create(:name=>"ルームウェア/パジャマ")
lady_ = lady.children.create(:name=>"レッグウェア")
lady_ = lady.children.create(:name=>"帽子")
lady_ = lady.children.create(:name=>"バッグ")
lady_ = lady.children.create(:name=>"アクセサリー")
lady_ = lady.children.create(:name=>"ヘアアクセサリー")
lady_ = lady.children.create(:name=>"小物")
lady_ = lady.children.create(:name=>"時計")
lady_ = lady.children.create(:name=>"ウィッグ/エクステ")
lady_ = lady.children.create(:name=>"浴衣/水着")
lady_ = lady.children.create(:name=>"スーツ/フォーマル/ドレス")
lady_ = lady.children.create(:name=>"マタニティ")
lady_ = lady.children.create(:name=>"その他")


