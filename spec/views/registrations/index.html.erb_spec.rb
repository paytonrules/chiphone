require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/registrations/index" do
  before(:each) do
    mevent = mock_model(Event, :registrations => [mock_model(Registration, :name => "Joey"), mock_model(Registration, :name => "Dough Bradbury")], 
                               :event_date => Time.now, :null_object => true)
    assigns[:event] = mevent
  end
  
  it "should display an error if the registration failed" do
    mock_error = mock("Error", :count => 1, :full_messages => ["hello"])
    assigns[:registration] = mock_model(Registration, :name => nil, :errors => mock_error)
    render 'registrations/index'
    
    response.should have_tag("div[class=errorExplanation]")
  end
  
  it "should have a form" do
    render 'registrations/index'
    
    response.should have_tag("form")
  end
  
  it "should have submit tag named submit_button" do
    render 'registrations/index'
    
    response.should have_tag("input[type=image][name=submit_button]")
  end
  
  it "should render properly if event is nil" do
    assigns[:event] = nil
    
    render 'registrations/index'
    
    response.should have_tag("div#date", "")
    response.should have_tag("div#description", "Coming Soon!")
  end
end
