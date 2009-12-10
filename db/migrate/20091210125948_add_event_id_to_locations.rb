class AddEventIdToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :event_id, :integer
  end

  def self.down
    remove_column :locations, :event_id
  end
end
