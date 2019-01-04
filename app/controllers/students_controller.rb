class StudentsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :home, :show, :welcome]

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      session[:student_id] = @student.id
      redirect_to @student
    else
      @errors = @student.errors.full_messages
      render :new
    end
  end

  def show
    find_student
  end

  def edit
    find_student
  end

  def update
    find_student
    if @student.update(student_params)
      redirect_to @student
    else
      redirect_to edit_student_path
    end
  end

  def destroy
    find_student
    @student.destroy
    @schools = School.all
    redirect_to schools_path
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :username, :password)
  end

end
