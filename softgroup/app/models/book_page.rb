class BookPage < ActiveRecord::Base
  attr_accessible :body
  belongs_to :book, counter_cache: true
end
