class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
    @users = User.all
    if !current_user.admin
      redirect_to root_path
    end
  end
end
