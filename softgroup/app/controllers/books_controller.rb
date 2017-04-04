class BooksController < ApplicationController
  before_filter :book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params[:book])
    redirect_to action: :index
  end

  def update
    @book.update_attributes(params[:book])
    redirect_to action: :index
  end

  def destroy
    @book.destroy
    redirect_to action: :index
  end

  def search
    @books = Book.where('title LIKE ?', "%#{params[:query]}%")
  end

  private

  def book
    @book = Book.find(params[:id])
  end
end
