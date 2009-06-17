class AddRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string      :name
      t.integer     :event_id
      t.timestamps
    end
  end

  def self.down
    remove_table :registrations
  end
end
