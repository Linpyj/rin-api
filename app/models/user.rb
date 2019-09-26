class User < ApplicationRecord
  has_secure_token
  has_secure_password

  has_many :groups, through: :group_users
  has_many :group_users

  has_many :tasks, dependent: :destroy #ユーザーを削除すると紐づいたタスクも全削除
end
