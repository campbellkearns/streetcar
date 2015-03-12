class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :web_address
      t.string :image_address
      t.float :latitude
      t.float :longitude
      t.integer :category

      t.timestamps null: false
    end
  end
end
