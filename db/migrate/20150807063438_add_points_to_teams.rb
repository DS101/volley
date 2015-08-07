class AddPointsToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :points, :integer
    add_column :teams, :sets_win, :integer
    add_column :teams, :sets_lost, :integer
  end
end
