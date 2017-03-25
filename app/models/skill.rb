class Skill < ApplicationRecord
  CATEGORIES = ["Design", "Marketing", "Writing", "Video", "Music", "Programming", "Tech", "Bussiness", "Lifestyle"]
  belongs_to :user
  has_attachments :photos, maximum: 5
  has_many :reviews
  has_many :requests, source: :bookings

  validates :title, presence: true
  validates :brief, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :skills_category, presence: true, inclusion: { in: CATEGORIES }
  validates :description, presence: true

  # geocoded_by :location
  # after_validation(:geocode, { if: :location_changed? })
end
