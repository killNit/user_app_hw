class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(:first_name, :last_name, :hair_color, :eye_color)
  end

  def edit
    @user = User.find(1)
  end

  def delete
    @user = User.destroy 
  end


  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :hair_color, :eye_color, :gender, :alive)
  end
end
