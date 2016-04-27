class UsersController < ApplicationController
  def admin
    @user = User.all
  end
  
  def profile
  end
  
  def show
  end
  
  def login
    @user
    @password
  end
  
  def loggingin
  end

  def register
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #if @user.new(params[:user])
    #    flash[:notice] = "Thank you for registering."
    #    flash[:color] = "valid"
    #  else
    #    flash[:notice] = "Sorry, try again."
    #    flash[:color] = "invalid"
    #end
    render "root"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def activity
  end
  
  private
  def user_params
    params.require(:user).permit(:fname, :sname, :password_digest, :salt, :dob, :gender, :status, :email, :uname)
  end
end