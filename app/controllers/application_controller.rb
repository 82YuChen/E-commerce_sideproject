class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  def check_admin
    redirect_to root_path unless current_user&.admin?
  end

  private
  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end 
  end

end
