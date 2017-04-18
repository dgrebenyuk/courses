class CreateBookPages < ActiveRecord::Migration
  def change
    create_table :book_pages do |t|
      t.text :body
      t.belongs_to :book, index: true
      t.timestamps
    end
  end
end
