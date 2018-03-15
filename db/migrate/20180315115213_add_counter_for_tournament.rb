class AddCounterForTournament < ActiveRecord::Migration[5.0]
  add_column :tournament_members, :counter, :integer, default: 0,  null: false

  def change
  end
end
