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
        redirect_to tefl_links_index_path
        flash[:notice] = "Thank you. Your link has been added."
      else
        render "new"
    end
  end

  def destroy
  end

  def edit
  end

  def show
  end

  def update
  end
  
  private
  def tefl_params
    params.require(:tefl).permit(:id, :user_id, :name, :link, :description, :visited, :created_at, :commit)
  end
  def user_params
    params.require(:user).permit(:id, :fname, :sname)
  end
end
