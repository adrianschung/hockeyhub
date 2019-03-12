require 'httparty'

module NHLAPI
  class Team

    def initialize(id)
      @id = id
      @parsed_response = nil
    end

    def get_stats
      url = "https://statsapi.web.nhl.com/api/v1/teams/#{@id}/stats" 
      response = HTTParty.get(url)
      @parsed_response = JSON.parse(response.body, symbolize_names: true)
      @parsed_response[:stats][0][:splits][0][:stat]
    end

    def get_roster
      url = "https://statsapi.web.nhl.com/api/v1/teams/#{@id}/roster" 
      response = HTTParty.get(url)
      @parsed_response = JSON.parse(response.body, symbolize_names: true)
      @parsed_response[:roster][0]
    end
  end
end
