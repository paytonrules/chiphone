class Admin::EventsController < Admin::ApplicationController
  active_scaffold :event do |config|
    config.actions = [:list, :create, :update]
    config.list.columns = [:event_date, :description]
  end
end