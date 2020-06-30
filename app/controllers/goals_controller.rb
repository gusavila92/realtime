class GoalsController < ApplicationController
  def index
    @goals = Goal.where(match_id: params[:match_id]).order(:minute)
  end
end
