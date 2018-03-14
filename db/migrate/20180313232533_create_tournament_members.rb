class CreateTournamentMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_members do |t|
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
