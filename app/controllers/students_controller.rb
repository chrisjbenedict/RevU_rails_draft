class StudentsController < ApplicationController

  def show
    find_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to @student
    else
      @errors = @student.errors.full_messages
      render :new
    end
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

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :username, :password)
  end

end
