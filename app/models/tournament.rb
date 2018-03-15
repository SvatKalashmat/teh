class Tournament < ApplicationRecord
  has_many :tournament_members, dependent: :destroy
  has_many :teams, through: :tournament_members

  validates :name, uniqueness: true, presence: true
end
