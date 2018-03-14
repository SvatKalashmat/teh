class Team < ApplicationRecord
  # after_create :set_cap

  has_many :team_members
  has_many :user, through: :team_members

  validates :name, uniqueness: true, presence: true

  # def set_cap
  #   TeamMember.create
  # end
end