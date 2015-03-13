class Itinerary < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :events

  validates :name, presence: true, length: { maximum: 250 }
  #validates :date, presence: true

end
