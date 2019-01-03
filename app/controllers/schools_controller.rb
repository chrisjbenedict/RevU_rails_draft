class SchoolsController < ApplicationController

  def revu
    render :welcome
  end

  def index
    @schools = School.all
    if params[:order].in? %w[name size location]
      @schools.merge!( School.order("? DESC", params[:order]))
    end
  end

  def show
    find_school
    # @reviews = Review.all
    # @review = Review.find(params[:id])
    @student = Student.find(params[:id])
    @categories = Category.all
  end

  def review
    find_school
    @review = Review.find(params[:id])
  end

  def home
    @schools = School.all
    if params[:order].in? %w[name size location]
      @schools.merge!( School.order("? DESC", params[:order]))
    end
  end

  # def add_to_favorites
  # end

  private

  def find_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :location, :size, :university)
  end
end
