class Team < ApplicationRecord

  def to_param
    slug
  end

  def games_played
    team_stats[:gamesPlayed]
  end

  def wins
    team_stats[:wins]
  end

  def losses
    team_stats[:losses]
  end

  def ot_losses
    team_stats[:ot]
  end

  def points
    team_stats[:pts]
  end

  private

  def team_stats
    Rails.cache.fetch('team_stats', expires_in: 5.minutes) do
      NHLAPI::Team.new(id).get_stats
    end
  end

  def team_roster
    Rails.cache.fetch('team_roster', expires_in: 5.minutes) do
      NHLAPI::Team.new(id).get_roster
    end
  end
end
