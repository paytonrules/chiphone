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
end