class UsersController < ApplicationController
  def index
  	@users = User.all
  	@user = User.new
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

    if @user.save
        redirect_to users_path, notice: "create successfuly"
    else
        redirect_to 'index'
    end
  end

  def view_profile
  	
  end

  private
  	def user_params
    	params.require(:user).permit(:name, :email)
  	end
end
