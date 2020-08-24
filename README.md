# README

# family-chat DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|password|string|null: false|
|nickname|string|null: false, index: true|
### Association
- has_many :groups_users
- has_many :groups, through: :messages
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## group_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :messages