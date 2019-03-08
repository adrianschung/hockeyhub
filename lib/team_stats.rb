require 'httparty'

class TeamStats

  def initialize(id)
    @id = id
  end

  def get_stats
    url = "https://statsapi.web.nhl.com/api/v1/teams/#{id}/stats" 
    response = HTTParty.get(url)
    @parsed_response = JSON.parse(response.body, symbolize_names: true)
  end

  def games_played
    stats[:gamesPlayed]
  end

  def wins
    stats[:wins]
  end

  def losses
    stats[:losses]
  end

  def ot_losses
    stats[:ot]
  end

  def points
    stats[:pts]
  end
  
  def stats
    @parsed_response[:stats][0][:splits][0][:stat]
  end
end
