class TeamMember < ApplicationRecord
  # before_create :set_cap

  belongs_to :user
  belongs_to :team

  validates_uniqueness_of :user, scope: :team, presence: true

  enum role: [:member, :owner]

end
