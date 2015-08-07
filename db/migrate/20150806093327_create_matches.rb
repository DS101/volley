class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.belongs_to :home_team, index: true
    	t.belongs_to :away_team, index: true
    	t.integer :home_team_set
    	t.integer :away_team_set

      t.timestamps null: false
    end
  end
end
