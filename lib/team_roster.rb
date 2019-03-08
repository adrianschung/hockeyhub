require 'httparty'

class TeamStats

  def initialize(id)
    @id = id
  end

  def get_roster
    url = "https://statsapi.web.nhl.com/api/v1/teams/#{id}/roster" 
    response = HTTParty.get(url)
    @parsed_response = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def roster
    @parsed_response[:roster][0]
  end
end
