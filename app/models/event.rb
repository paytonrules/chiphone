class Event < ActiveRecord::Base
  has_many :registrations
  belongs_to :location
  
  def formatted_date
    self.event_date.strftime("%b %d %I:%M %p")
  end

  def location_name
    return location.title
  end
end
