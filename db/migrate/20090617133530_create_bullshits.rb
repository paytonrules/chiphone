class CreateBullshits < ActiveRecord::Migration
  def self.up
    create_table :bullshits do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :bullshits
  end
end
