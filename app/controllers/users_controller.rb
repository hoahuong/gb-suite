class UsersController < ApplicationController
  def index
  	if params[:search]
        @users = User.search(params[:search]).all
        p params[:search]
         respond_to do |format|
            format.js
        end
      else
        @users = User.all
      end
  	#@user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

	def create
		@user = User.new(user_params)

		if @user.save
		    redirect_to users_path, notice: "create successfuly"
		else
			redirect_to users_path
		end
	end

  	def update
 		@user = User.find(params[:id])  
 		if @user.update(user_params)
	        redirect_to users_path, notice: "create successfuly"
	    else
	    	redirect_to users_path
	    end
		
  	end

  	def destroy
 		@user = User.find(params[:id])  
 		@user.destroy
  		@users = User.all
  	end

  def view_profile

  end

  def edit_password
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password(change_password_params)
      # Sign in the user by passing validation in case their password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit_password"
    end
  end

  private

  def change_password_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:current_password, :password, :password_confirmation)
  end

  private
  	def user_params
    	params.require(:user).permit(:first_name, :last_name, :password, :email, :code)
  	end
end
