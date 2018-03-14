class TournamentMember < ApplicationRecord

  belongs_to :tournament
  belongs_to :team

  validates_uniqueness_of :team, scope: :tournament, presence: true

end
