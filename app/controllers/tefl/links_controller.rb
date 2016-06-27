class Tefl::LinksController < ApplicationController
  def index
    @link = Tefl.all
    @user = User.all
    @new = Tefl.new
  end

  def new
    @new = Tefl.new
  end
  
  def create
    @new = Tefl.new(tefl_params)
    if @new.save
        redirect_to tefl_links_path
        flash[:notice] = "Thank you. Your link has been added."
      else
        render "new"
    end
  end

  def destroy
    @link = Tefl.find(params[:id])
    @link.destroy
    redirect_to tefl_links_path
  end

  def edit
    @link = Tefl.find(params[:id])
  end

  def show
  end

  def update
    @link = Tefl.find(params[:id])
    if Tefl.update(tefl_params)
      redirect_to tefl_links_path
      flash[:notice] = "Thank you. Your post has been updated."
    else
      render "edit"
    end
  end
  
  private
  def tefl_params
    params.require(:tefl).permit(:id, :user_id, :name, :link, :description, :visited, :created_at, :commit)
  end
end
