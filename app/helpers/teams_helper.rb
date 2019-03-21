module TeamsHelper
  def player_name(player)
    player[:person][:fullName]
  end
end
