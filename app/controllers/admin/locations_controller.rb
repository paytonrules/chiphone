class Admin::LocationsController < Admin::ApplicationController
  layout "admin"

  active_scaffold :locations
end
