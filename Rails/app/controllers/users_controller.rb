class UsersController < ApplicationController
  before_filter :init_group

  def index
    @users = @group.users
  end

  def new
    @users = User.all
  end

  def create
    user = User.find(params[:user])
    @group.users << user
    redirect_to action: :index
  end

  private
  def init_group
    @group = Group.find(params[:group_id])
  end
end
