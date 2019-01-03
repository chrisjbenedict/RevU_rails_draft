class PagesController < ApplicationController

  def search
    @results = if params[:search]
      School.where('name LIKE ?', "%#{params[:search]}%")
    else
      Schools.all
    end
  end

end
