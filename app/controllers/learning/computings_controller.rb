class Learning::ComputingsController < ApplicationController
  def index
    @course = Course.all
    @inst = Instructor.all
    @site = CoursesSite.all
    @new = Course.new
  end
  
  def create
    @new = Course.new(course_params)
    if @new.save
        flash[:notice] = "Your course has been updated."
      else
        flash[:error] = "Sorry, there was a problem! Please try again."
    end
    redirect_to learning_computings_path
  end
  
  def edit
    @inst = Instructor.all
    @site = CoursesSite.all
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
        flash[:notice] = "Your course has been updated."
        redirect_to learning_computings_path
      else
        flash[:error] = "Sorry, there was a problem! Please try again."
    end
    
  end
  
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to learning_computings_path
  end

  def show
  end
  
  private
  def course_params
    params.require(:course).permit(:id, :name, :courses_site_id, :rating, :complete, :description, :learnt, :img, :address, :instructor_id)
  end
end
