class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
    @users = User.all
    if !current_user.admin
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    if !current_user.admin
      redirect_to root_path
    end
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
