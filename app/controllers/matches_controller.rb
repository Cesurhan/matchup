class MatchesController < ApplicationController
  before_action :authenticate_user!
  def index
    @matches = Match.all
    if !current_user.admin
      redirect_to root_path
    end
  end
end
