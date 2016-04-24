class Tefl::LinksController < ApplicationController
  def index
    @link = Tefl.all
    @user = User.all
  end

  def new
  end
  
  def create
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
    params.require(:Tefl).commit(:id, :user_id, :name, :link, :description, :visited, :created_at)
  end
  def user_params
    params.require(:user).commit(:id, :fname, :sname)
  end
end
