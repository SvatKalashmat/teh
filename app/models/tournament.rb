class Tournament < ApplicationRecord
  has_many :tournament_members
  has_many :team, through: :team_members
end
