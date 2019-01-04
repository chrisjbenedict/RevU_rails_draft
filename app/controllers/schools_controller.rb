class SchoolsController < ApplicationController
  skip_before_action :authorized, only: [:home, :welcome]

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

  def average_rating
    find_school
    scores_arr = @school.reviews.map do |review|
      review.rating
    end
    scores_arr.inject{ |sum, el| sum + el}.to_f / scores_arr.size
  end

  # def add_to_favorites
  # end

  private

  def find_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :location, :size, :university, :search)
  end
end
