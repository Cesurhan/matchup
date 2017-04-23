class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    redirect_to matches_path if current_user.admin
  end

  def home
    @matches = Match.all
    @users = User.all
  end
end
