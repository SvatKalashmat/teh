class AddProtectForTourAndTournMemb < ActiveRecord::Migration[5.0]

    add_column :users, :nick, :string, default: "", null: false

  def change
    change_column :tournament_members, :team_id, :integer, null: false
    change_column :tournament_members, :tournament_id, :integer, null: false
    change_column :tournaments, :name, :string, null: false
  end

    add_index :tournament_members, [:team_id, :tournament_id], unique: true

end
