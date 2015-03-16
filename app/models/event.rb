class Event < ActiveRecord::Base
  has_and_belongs_to_many :itineraries

  validates :name, presence: true
  validates :latitude, numericality: true, presence: true
  validates :longitude, numericality: true, presence: true

  def self.seed_itinerary_with_events()
    events = []
    events << Event.where(category:1).sample
    events << Event.where(category:2).sample
    events << Event.where(category:3).sample
    3.times do 
      events << Event.where(category:4).sample
    end
    return events
  end

end
