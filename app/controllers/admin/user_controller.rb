class Admin::UserController < ApplicationController
  layout "admin"
  
  active_scaffold :user do |config|    
     config.columns = [:username, 
                       :password]

     config.list.columns.exclude [ 
       :password ]

     config.update.columns.exclude [ 
       :login ]
   end
end
