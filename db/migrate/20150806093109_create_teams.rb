class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end
  end
end
