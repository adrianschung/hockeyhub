class AddIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :team_id, :integer
  end
end
