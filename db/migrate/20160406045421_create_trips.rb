class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :trip_name
      t.datetime :walked_at
      t.datetime :planned_at
      t.decimal :distance
      t.boolean :completion

      t.timestamps null: false
    end
    add_index :trips, :user_id
  end
end
