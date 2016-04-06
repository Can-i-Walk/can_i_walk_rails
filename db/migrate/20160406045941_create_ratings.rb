class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :place_id
      t.integer :ease_rating
      t.integer :safety_rating
      t.integer :enjoyability_rating
      t.integer :accessibility_rating
      t.text :comment

      t.timestamps null: false
    end
    add_index :ratings, :user_id
    add_index :ratings, :place_id
  end
end
