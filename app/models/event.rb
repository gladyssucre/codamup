class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :end_at, presence: true
end
