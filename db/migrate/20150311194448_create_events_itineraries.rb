class CreateEventsItineraries < ActiveRecord::Migration
  def change
    create_table :events_itineraries do |t|
      t.integer :itinerary_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
