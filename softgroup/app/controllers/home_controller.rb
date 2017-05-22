class HomeController < ApplicationController
  # before_filter :book, only: [:show, :edit, :update, :destroy]
  # before_filter :book, except: [:index, :new, :create]
  # skip_before_filter :check_auth, only: [:index]

  def index
    flash[:notice] = "Lorem Ipsum"
    order = params[:order] || 'asc'
    @users = User.all #order("id #{order}")
    if params[:redirect]
      redirect_to 'http://google.com' and return
    else
      render action: :index
    end
  end

  private

  def check_auth
    p 'CHECK AUTHORIZATION'
  end

  def book
    @book ||= Book.find(params[:id])
  end
end
