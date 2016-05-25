class Learning::Computing::SitesController < ApplicationController
  def index
    @site = CoursesSite.all
    @new = CoursesSite.new
  end

  def create
    @new = CoursesSite.new(site_params)
    if @new.save
      flash[:notice] = "Site successfully saved"
    else
      flash[:error] = "Sorry, it didn't work. Please try again."
    end
    redirect_to learning_computing_sites_path    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end
  
  private
  def site_params
    params.require(:courses_site).permit(:id, :name, :address)
  end
end