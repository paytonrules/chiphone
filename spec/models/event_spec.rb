require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Event do
  
  before(:each) do
    Event.destroy_all
  end
  
  it "should find the given event" do
    event1 = Event.create!(:description => "Joey wrote this test")
    event2 = Event.create!(:description => "Oh no!")
    
    found_event = Event.find(:last)
    
    found_event.description.should == "Oh no!"
  end
  
  it "new event should have empty array of registrants" do
    @event = Event.new
    @event.registrations.should == []
  end
  
  it "should return a formatted version of the date" do
    @event = Event.new
    @event.event_date = DateTime.parse("01/01/2001 19:00")
    @event.formatted_date.should match(/Jan 01.+PM/)
  end

  it "has a location" do
    @event = Event.new

    @event.location = Location.new

    @event.location.should_not be_nil
  end

  it "reveals the name of the location" do
    @event = Event.new
    @event.build_location(:title => "8th Light")

    @event.location_name.should == "8th Light"
  end
end
