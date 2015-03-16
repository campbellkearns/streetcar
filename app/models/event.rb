class Event < ActiveRecord::Base
  has_and_belongs_to_many :itineraries

  validates :name, presence: true
  validates :latitude, numericality: true, presence: true
  validates :longitude, numericality: true, presence: true

  def self.seed_itinerary_with_events()
    Event.all.sample(6)
  end

end
