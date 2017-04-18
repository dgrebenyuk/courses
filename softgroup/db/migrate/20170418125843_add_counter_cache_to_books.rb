class AddCounterCacheToBooks < ActiveRecord::Migration
  def up
    remove_column :books, :page_count
    add_column :books, :book_pages_count, :integer, default: 0

    Book.reset_column_information
    Book.all.each do |book|
      Book.update_counters book.id, book_pages_count: book.book_pages.length
    end
  end

  def down
    add_column :books, :page_count, :integer
    remove_column :books, :book_pages_count
  end
end
