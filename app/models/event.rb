class Event < ActiveRecord::Base
  has_and_belongs_to_many :itineraries

  validates :name, presence: true
  validates :latitude, numericality: true, presence: true
  validates :longitude, numericality: true, presence: true
end
