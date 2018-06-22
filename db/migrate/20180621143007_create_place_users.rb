class CreatePlaceUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :place_users do |t|
      t.integer :place_id
      t.integer :user_id
      t.datetime :date_start
      t.datetime :date_end

      t.timestamp
    end
  end
end
