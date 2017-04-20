class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @matches = Match.all
    @users = User.all
    if current_user.admin
      redirect_to users_path
    end
  end
end
