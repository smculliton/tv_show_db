class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true, presence:true
  validates :password, presence:true

  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
end