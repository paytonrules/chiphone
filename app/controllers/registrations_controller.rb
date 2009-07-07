class RegistrationsController < ApplicationController
  layout "default"
  
  def index
    @event = Event.find(:last)
  end
  
  def create
    @registration = Registration.create(params["registration"])
    
    @event = Event.find(:last)
    
    respond_to do |format|
      format.js {render :layout => false}
    end

  end

end
