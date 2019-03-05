class TeamsController < ApplicationController
  def show
    @team = Team.find_by(slug: params[:slug])
  end
end
