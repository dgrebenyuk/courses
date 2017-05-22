class BooksController < ApplicationController
  before_filter :book, only: [:show, :edit, :update, :destroy]

  def index
    @book = Book.new
    @book.book_pages.build
    @books = Book.all
  end

  def create
    binding.pry
    @book = Book.create(book_params)
    respond_to do |format|
      format.js
      format.html { redirect_to action: :index }
    end
  end

  def update
    @book.update_attributes(book_params)
    redirect_to action: :index
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.js { render nothing: true }
      format.html { redirect_to action: :index }
    end
  end

  def search
    @books = Book.search(params[:query])
  end

  private

  def book_params
    params.require(:book).permit(:id, :title, :author,
      :page_count, book_pages_attributes: [:body])
  end

  def book
    @book = Book.find(params[:id])
  end
end
