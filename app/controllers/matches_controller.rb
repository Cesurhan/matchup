class MatchesController < ApplicationController
  before_action :authenticate_user!
  before_action do
    redirect_to root_path if !current_user.admin
  end

  def index
    @matches = Match.all
  end

  def create
    Match.generate_matches(params[:date])
    flash[:notice] = "Matches Generated!"
    redirect_to matches_path
  end

  def remove_all
    Match.delete_matches(params[:date])
    redirect_to matches_path
    flash[:notice] = "Matches Removed!"
  end
end
