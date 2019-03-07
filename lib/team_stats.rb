require 'httparty'

class TeamStats

  def initialize(id)
    @id = id
  end

  def get_stats
    url = "https://statsapi.web.nhl.com/api/v1/teams/#{id}/stats" 
    response = HTTParty.get(url)
    @stats = JSON.parse(response.body, symbolize_names: true)
  end

  def games_played
    @stats[:stats][0][:splits][0][:stat][:gamesPlayed]
  end

  def wins
    @stats[:stats][0][:splits][0][:stat][:wins]
  end

  def losses
    @stats[:stats][0][:splits][0][:stat][:losses]
  end
end
