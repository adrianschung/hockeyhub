require 'rails_helper'

describe NHLAPI do
  context 'When getting stats of a team' do

    it 'retrieves stats of a valid team' do
      request = NHLAPI::Team.new(1).get_stats
      expect(request[:wins]).to be_an(Integer)
      expect(request[:gamesPlayed]).to be_an(Integer)
      expect(request[:losses]).to be_an(Integer)
      expect(request[:ot]).to be_an(Integer)
      expect(request[:pts]).to be_an(Integer)
    end
  end
end
