require 'rails_helper'

describe NHLAPI do 
   context 'When getting stats of a team' do 
      
      it 'retrieves a team when id is valid' do 
         request = NHLAPI::Team.new(1).get_stats
         expect(request[:wins]).to be_an(Integer)
      end
      
   end
end
