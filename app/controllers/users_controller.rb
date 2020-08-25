class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @user = User.find(1)
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(1)
  end

  def delete
    @user = User.destroy 
  end
end
