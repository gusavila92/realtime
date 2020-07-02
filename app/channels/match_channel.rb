class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "match_#{params[:id]}"
  end
end