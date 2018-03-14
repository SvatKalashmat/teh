class Team < ApplicationRecord

  has_many :team_members
  has_many :members, through: :team_members, dependent: :destroy, source: :user

  validates :name, uniqueness: true, presence: true

  mount_uploader :image, ImageUploader

end
