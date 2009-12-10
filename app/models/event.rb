class Event < ActiveRecord::Base
  has_many :registrations
  has_one :location
  
  def formatted_date
    self.event_date.strftime("%b %d %I:%M %p")
  end
end
