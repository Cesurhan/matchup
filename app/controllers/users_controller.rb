class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action do
    redirect_to root_path if !current_user.admin
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path, notice: "User Updated"
    else
      render 'index'
    end
  end

  private

  def user_params
    params.permit(:email, :admin, :teacher)
  end
end
