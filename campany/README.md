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
|user_id|string|nil:false|
|emall_id|string|nil:false|
|nickname_id|string|nil:false|

## アソシエーション
has_many posts
## postsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text||
|image|imge||
|user_id|integer|null: false, foreign_key: true|

#### アソシエーション
belongs_to user
## commentテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

## ## アソシエーション

- belongs_to :tweet
- belongs_to :user