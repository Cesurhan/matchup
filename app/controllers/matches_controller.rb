class MatchesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    redirect_to root_path if !current_user.admin
  end
  
  def index
    @matches = Match.all
  end
end
