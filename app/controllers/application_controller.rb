class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :current_user

  def current_user
    Student.find_by( { id: session[:student_id] })
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
