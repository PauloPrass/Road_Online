class CreateBusLines < ActiveRecord::Migration[6.1]
  def change
    create_table :bus_lines do |t|
      t.integer :id_line
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
