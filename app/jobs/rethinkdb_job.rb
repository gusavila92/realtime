class RethinkdbJob < ApplicationJob
  include RethinkDB::Shortcuts

  queue_as :default

  def perform(*guests)
    r.connect(:host => 'localhost', :port => 28015).repl

    cursor = r.table("goals").changes.run

    cursor.each do |change|
      p change

      goal = change['new_val']
      ActionCable.server.broadcast("match_#{goal['match_id']}", { team: goal['team'], player: goal['player'], minute: goal['minute']})
    end
  end
end
