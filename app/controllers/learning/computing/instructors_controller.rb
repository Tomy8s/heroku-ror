class Learning::Computing::InstructorsController < ApplicationController
  def show
  end

  def create
    @inst = Instructor.new(instructor_params)
    if @inst.save
      flash[:notice] = "Instructor added to database."
    else
      flash[:error] = "There was a problem Please try again."
    end
    redirect_to learning_computing_instructors_path
  end

  def edit
    @inst = Instructor.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def index
    @inst = Instructor.all
    @new = Instructor.new
  end
  
  private
  def instructor_params
    params.require(:instructor).permit(:id, :name, :profile)
  end
  
end
