require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Location do
  before(:each) do
  end

  it "belongs to an event" do
    location = Location.new
    event = Event.create!

    location.event = event

    location.save!
    location.reload

    location.event_id.should_not be_nil
    location.event_id.should == event.id
  end
end
