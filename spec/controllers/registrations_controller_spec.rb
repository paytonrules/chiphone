require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RegistrationsController do

  describe "GET 'index'" do
    it "should load the last event" do
      mevent = mock_model(Event)
      Event.should_receive(:find).with(:last).and_return(mevent)

      get 'index'
      
      assigns[:event].should == mevent
    end
  end
  
  describe "POST 'create'" do
    before(:each) do
      Registration.stub!(:create)
    end
    
    it "should save the registration" do
      Registration.should_receive(:create).with({"name"=>"Joey Manso"})
      
      post 'create', "registration"=>{"name"=>"Joey Manso"}
    end
    
    it "should render the index page" do
      post 'create', "registration"=>{"name"=>"Joey Manso"}
      
      response.should render_template("registrations/index")
    end
    
    it "should assign registration object" do
      registry = mock_model(Registration)
      Registration.stub!(:create).and_return(registry)
      
      post 'create', "registration"=>{"name"=>"Joey Manso"}
      
      assigns[:registration].should == registry
    end
    
    it "should load the last event" do
      mevent = mock_model(Event)
      Event.should_receive(:find).with(:last).and_return(mevent)

      post 'create'
      
      assigns[:event].should == mevent
    end
  end
end
