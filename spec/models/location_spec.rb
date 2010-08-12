require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Location do
  before(:each) do
  end

  it "has many events" do
    assocation = Location.reflect_on_association(:event)
    assocation.macro.should == :has_many
    assocation.class_name.should == 'Event'
  end
end
