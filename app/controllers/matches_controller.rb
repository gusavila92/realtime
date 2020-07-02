class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(created_at: :desc)
  end

  def show
    @match = Match.find(params[:id])
    @goals = @match.goals.order(:minute)
  end

  def polling
    @match = Match.find(params[:id])
    @goals = @match.goals.order(:minute)
  end
end
