class AddLocationIdToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :location_id, :integer
    remove_column :locations, :event_id 
  end

  def self.down
    add_column :locations, :event_id 
    remove_column :events, :location_id
  end
end
