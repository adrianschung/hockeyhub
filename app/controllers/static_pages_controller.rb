class StaticPagesController < ApplicationController
  
  def index
    @teams = Team.all
  end
end
