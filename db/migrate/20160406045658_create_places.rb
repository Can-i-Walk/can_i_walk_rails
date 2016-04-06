class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :place_name

      t.timestamps null: false
    end
  end
end
