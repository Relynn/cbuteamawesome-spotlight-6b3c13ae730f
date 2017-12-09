class SessionsController < ApplicationController
  before_filter :disable_sidenav, only: [:new]
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in
      log_in user
      # remember or forget user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      
      redirect_to user
    else
      # error msg saying invalid email/password combination
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
