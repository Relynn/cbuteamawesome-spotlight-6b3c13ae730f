class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 include SessionsHelper
 
  
  # method for Rapidfire
  helper_method :can_administer?
  
  def can_administer?
    current_user.try(:is_professor?)
  end
  
  def disable_sidenav
    @disable_sidenav = true
  end
  
end
