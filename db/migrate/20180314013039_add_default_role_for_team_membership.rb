class AddDefaultRoleForTeamMembership < ActiveRecord::Migration[5.0]
  def change
    change_column :team_members, :role, :integer, default: 0
    change_column :team_members, :team_id, :integer, null: false
    change_column :team_members, :user_id, :integer, null: false
  end
  add_index :team_members, [:team_id, :user_id], unique: true
end
