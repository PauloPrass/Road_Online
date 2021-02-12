class CreateItineraries < ActiveRecord::Migration[6.1]
  def change
    create_table :itineraries do |t|
      t.string :latitude
      t.string :longuitude
      t.belongs_to :bus_line

      t.timestamps
    end
  end
end
