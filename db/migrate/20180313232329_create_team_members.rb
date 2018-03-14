class CreateTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_members do |t|
      t.integer :role
      t.integer :team_id
      t.integer :user_id

      t.timestamps
    end
  end
end
