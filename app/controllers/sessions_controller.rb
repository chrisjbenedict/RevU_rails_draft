class SessionsController < ApplicationController
  # before_action :authorized come from ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    @student = Student.find_by(username: params[:username])
    if @student && @student.authenticate(params[:password])
      session[:student_id] = @student.id
      redirect_to @student
    else
      flash[:notice] = "Invalid username and/or password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:student_id)
    flash[:notice] = "Logged out"
    redirect_to login_path
  end

end
