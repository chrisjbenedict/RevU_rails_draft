class PagesController < ApplicationController

  def search
    @results = if params[:search]
      School.where('name LIKE ?', "%#{params[:search]}%")
    else
      flash[:errors] = "No schools match your search."
      Schools.all
    end
  end

end
