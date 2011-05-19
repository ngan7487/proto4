class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def param_posted?(sym)
    request.post? and params[sym]
  end
end
