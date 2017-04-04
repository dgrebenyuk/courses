class Book < ActiveRecord::Base
  attr_accessible :title, :author, :page_count
end
