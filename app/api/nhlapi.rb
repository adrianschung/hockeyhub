require 'httparty'

module NHLAPI
  class Team

    def initialize(id)
      @id = id
      @parsed_response = nil
    end

    def get_stats
      url = "https://statsapi.web.nhl.com/api/v1/teams/#{@id}/stats" 
      @parsed_response = get_response(url)
      @parsed_response[:stats][0][:splits][0][:stat]
    end

    def get_roster
      url = "https://statsapi.web.nhl.com/api/v1/teams/#{@id}/roster" 
      @parsed_response = get_response(url)
      @parsed_response[:roster][0]
    end

    private

    def get_response(url)
      response = HTTParty.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
