class AddNotEmptyToTeamName < ActiveRecord::Migration[5.0]
  def change
    change_column :teams, :name, :string, null: false
  end
end
