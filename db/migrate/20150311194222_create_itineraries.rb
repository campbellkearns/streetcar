class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
