class Profile < ActiveRecord::Base
  attr_accessible :address, :phone, :about, :user_id
  belongs_to :user
end
