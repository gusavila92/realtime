class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(created_at: :desc)
  end

  def show
    @match = Match.find(params[:id])
    @goals = @match.goals.order(:minute)
  end

  def rethinkdb
    # r.connect(:host => 'localhost', :port => 28015).repl
    # cursor = r.table('goals').run
    # cursor.each do |goal|
    #   p goal
    # end

    @match = Match.find(params[:id])
    @goals = @match.goals.order(:minute)
  end
end
