class Admin::EventsController < Admin::ApplicationController
  layout "admin"
  
  active_scaffold :event do |config|    
    config.columns = [:event_date, 
                      :description,
                      :registrations]
    
  end
end