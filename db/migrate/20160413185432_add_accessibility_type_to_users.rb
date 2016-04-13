class AddAccessibilityTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accessibility_type, :string
  end
end
