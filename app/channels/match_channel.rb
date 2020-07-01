class MatchChannel < ApplicationCable::Channel
  def subscribed
    # match = Match.find(params[:id])
    # stream_for match

    stream_from "match_#{params[:id]}"
  end
end