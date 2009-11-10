class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.float :center_x
      t.float :center_y
      t.float :location_x
      t.float :location_y
      t.string :title
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
