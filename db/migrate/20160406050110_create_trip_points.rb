class CreateTripPoints < ActiveRecord::Migration
  def change
    create_table :trip_points do |t|
      t.integer :place_id
      t.integer :trip_id
      t.string :place_type

      t.timestamps null: false
    end
    add_index :trip_points, :place_id
    add_index :trip_points, :trip_id
  end
end
