class AddTableEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string    :description
      t.datetime  :event_date
      t.timestamps
    end
  end

  def self.down
    remove_table :events
  end
end
