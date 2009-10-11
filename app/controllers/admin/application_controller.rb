class Admin::ApplicationController < ApplicationController
  before_filter :secure_page
  
  def secure_page
    redirect_to new_user_session_path unless UserSession.find
  end
end