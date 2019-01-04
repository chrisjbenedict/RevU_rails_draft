class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    find_review
    @students = Student.all
  end

  def new
    @review = Review.new
    @students = Student.all
    @schools = School.all
    @categories = Category.all
  end

  def create
    @review = Review.create(review_params)
    @students = Student.all
    @schools = School.all
    @review.update(student_id: session[:student_id])
    if @review.valid?
      redirect_to @review
    else
      flash[:errors] = @review.errors.full_messages
      render :new
    end
  end

  def edit
    find_review
    @students = Student.all
    @schools = School.all
    @categories = Category.all
  end

  def update
    find_review
    @review.update(edit_review_params)
    redirect_to @review
  end

  def destroy
    find_review
    @review.destroy
    @schools = School.all
    redirect_to schools_path
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:school_id, :category_id, :content, :rating)
  end

  def edit_review_params
    params.require(:review).permit(:content, :rating)
  end
end
