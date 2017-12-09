class StaticPagesController < ApplicationController
  before_filter :disable_sidenav, only: [:home]
  
  def home
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
end
