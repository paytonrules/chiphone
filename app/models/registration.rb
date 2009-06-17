class Registration < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :event_id
  validates_presence_of :name
end