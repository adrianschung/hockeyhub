module TeamsHelper
  def player_name(player)
    player[:person][:fullName]
  end

  def number(player)
    player[:jerseyNumber]
  end

  def position(player)
    player[:position][:abbreviation]
  end
end
