class TeamMember < ApplicationRecord
  # before_create :set_cap

  belongs_to :user
  belongs_to :team

  enum role: [:user, :admin]


end
