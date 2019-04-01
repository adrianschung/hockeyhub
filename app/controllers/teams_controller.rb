class TeamsController < ApplicationController
  def show
    raise ActionController::RoutingError.new('Not Found') if current_team.blank?
  end

  private

  helper_method :current_team
  def current_team
    @current_team ||= Team.find_by(slug: params[:slug])
  end
end
