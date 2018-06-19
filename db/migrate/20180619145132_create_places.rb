class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
        t.integer :type_id
        t.boolean :available
        t.float :size
        t.float :price
        t.string :photo
        t.text :description
        t.integer :host_id
        t.integer :location_id

        t.timestamps
    end
  end
end
