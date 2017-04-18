class Book < ActiveRecord::Base
  attr_accessible :title, :author, :page_count, :book_pages_attributes
  has_many :book_pages
  accepts_nested_attributes_for :book_pages, allow_destroy: true
end
