class User < ActiveRecord::Base
  attr_accessible :name
  has_many :posts
  has_many :user_groups
  has_many :groups, through: :user_groups
end
