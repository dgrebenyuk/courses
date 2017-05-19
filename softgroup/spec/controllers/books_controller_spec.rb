require 'rails_helper'

RSpec.describe BooksController, :type => :controller do
  before do
    Book.destroy_all
  end

  describe '#index' do
    let!(:book) { create :book }
    it 'assigns @books' do
      get :index
      expect(assigns(:books)).to eq([book])
    end

    it 'assigns @book' do
      get :index
      expect(assigns(:book)).to be_a_new(Book)
    end

    it '@book should have one book_page' do
      get :index
      expect(assigns(:book).book_pages.size).to be 1
    end
  end

  describe '#create' do
    it 'should create new DB record' do
      expect do
        post :create, params: {book: {title: Faker::Book.title}}
      end.to change(Book, :count).by(1)
    end

    it 'should redirect to index page' do
      post :create
      expect(response).to redirect_to(books_url)
    end
  end
end
