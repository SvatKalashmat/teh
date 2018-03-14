class Team < ApplicationRecord

  belongs_to :owner, class_name: User, foreign_key: 'user_id'

  has_many :team_members
  has_many :members, through: :team_members, dependent: :destroy, source: :user

  validates :name, uniqueness: true, presence: true

  mount_uploader :image, ImageUploader

end
