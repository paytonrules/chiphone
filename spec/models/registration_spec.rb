require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Registration do
  before(:each) do
    Registration.destroy_all
    @registration = Registration.new(:name => "victorias")
  end
  
  it "should create" do
    @registration = Registration.create!(:name => "secret", :event_id => 22)
    
    @registration.should_not be_nil
  end
  
  it "should belong to an event" do
    @event = Event.create!
    @registration.event = @event
    
    @registration.save!
    
    @registration.event_id.should == @event.id
  end
  
  it "should require an event" do
    @registration.should_not be_valid
    @registration.should have(1).error_on(:event_id)
  end
  
  it "should require a name" do
    @registration.name = nil
    
    @registration.should_not be_valid
    @registration.should have(1).error_on(:name)
  end
end