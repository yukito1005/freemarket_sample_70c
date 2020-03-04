# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_one :profile
- has_one :creditcard
- has_many :products


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|lastname|string|null: false|
|lastname_kana|string|null: false|
|firstname|string|null: false|
|firstname_kana|string|null: false|
|birthday|integer|null: false|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|tel|integer||


### Association
- belongs_to :user


## creditcardsテーブル
|Column|Type|Options|
|------|----|-------|
|card-number|integer|null: false|
|user|references|null: false, foreign_key: true|


### Association
- belongs_to :user


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false,foreign_key: true|
|brand|string|
|item-name|string|null: false|
|item-detail|text|null: false|
|item-size|string||
|condition|string|null: false|
|price|integer|null: false|
|category-first|references|null: false,foreign_key: true|
|category-second|references|null: false,foreign_key: true|
|category-third|references|null: false,foreign_key: true|
|delivery-pay|string|null: false|
|origin-area|string|null: false|
|lead-time|string|null: false|



### Association
- belongs_to :user
- belongs_to :category-first
- belongs_to :category-second
- belongs_to :category-third
- has_many :images


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product|references|null: false, foreign_key: true|


### Association
- belongs_to :product


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|integer||


### Association
- has_many :products
