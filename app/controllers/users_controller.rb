class UsersController < ApplicationController
  before_filter :disable_sidenav, only: [:new, :show]
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      @user.update_attribute(:role, params[:david])
      log_in @user
      flash[:success] = "Welcome to Spotlight the Presentation App!"
      redirect_to @user
    else
      render 'new'
    end
  end 
    
  def classes
  end
  
  def create_choices
  end
  
  def feedback
  end
  
  def forms_feedback
  end
  
  def view
  end
  
  def course_search
  end
  
  def add_course
    try_token = params[:entered_course]
    if(search(try_token) != nil) then
      current_user.course_tokens.push try_token
      @searched_course
      current_user.save
    else
      flash.now[:danger] = "Could not find course!"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :role, :schoolid, :course_tokens)
    end
end
