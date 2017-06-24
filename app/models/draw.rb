class Draw < ApplicationRecord
  belongs_to :team

  def self.pick_team
    x = count % Team.count
    eligible_teams = Team.select(:number).where.not(number: Draw.last(x).map{ |draw| draw.team_id }).map{ |team| team.number } 
    drawn_team = eligible_teams.sample
    create(team: Team.find(drawn_team))
    drawn_team
  end
end
