class Admin::RegistrationsController < Admin::ApplicationController
  layout "admin"
  active_scaffold :registration
  
  active_scaffold :registration do |config|    
    config.columns = [:name]
  end
end