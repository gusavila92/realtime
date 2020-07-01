class GoalsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @goals = Goal.where(match_id: params[:match_id]).order(:minute)
  end

  def create
    match = Match.find(params[:match_id])
    team = Team.find(params[:team_id])
    player = Player.find(params[:player_id])
    minute = params[:minute]

    goal = Goal.new(match: match, team: team, player: player, minute: minute)

    if goal.save
      MatchChannel.broadcast_to(match, { team: team.name, player: player.name, minute: minute })
      head :ok
    else
      head :bad_request  
    end
  end
end
