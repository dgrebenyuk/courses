class Book < ActiveRecord::Base
  has_many :book_pages
  accepts_nested_attributes_for :book_pages, allow_destroy: true

  def self.search(query)
    where('title LIKE ?', "%#{query}%")
  end
end
