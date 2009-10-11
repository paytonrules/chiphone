class Admin::UserController < Admin::ApplicationController
  layout "admin"
  
  active_scaffold :user do |config|    
     config.columns = [:username, 
                       :password,
                       :password_confirmation]

     config.list.columns.exclude [ 
       :password, 
       :password_confirmation ]

     config.update.columns.exclude [ 
       :login ]
   end
end
