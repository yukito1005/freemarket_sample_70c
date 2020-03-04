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
- has_one :profiles


## usersテーブル
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


