class AddDivisionToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :division, :integer
  end
end
