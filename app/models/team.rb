class Team < ApplicationRecord
  after_create :add_slug

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

  def add_slug
    update(slug: to_slug(name))
  end

  def team_stats
    cache.fetch('team_stats', expires_in: 5.minutes) do
      NHLAPI::Team.get_stats(id)
    end
  end

  def team_roster
    cache.fetch('team_roster', expires_in: 5.minutes) do
      NHLAPI::Team.get_roster(id)
    end
  end
end
