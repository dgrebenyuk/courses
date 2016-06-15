class GroupsController < ApplicationController
  before_filter :init_group, except: [:index, :new, :create]

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    Group.create params[:group]
    flash[:notice] = "Group Created Successfuly"
    redirect_to action: :index
  end

  def update
    @group.update_attributes(params[:group])
    flash[:notice] = "Group Updated Successfuly"
    redirect_to action: :index
  end

  def destroy
    @group.destroy
    @groups = Group.all
  end

  private
  def init_group
    @group = Group.find(params[:id])
  end
end
