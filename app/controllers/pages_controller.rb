class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @matches = Match.all
    @users = User.all
  end
end
