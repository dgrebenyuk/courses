class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :user_groups
  has_many :users, through: :user_groups
end
