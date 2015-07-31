class HomeController < ApplicationController
	def index
		@is_accountant = current_user.is_accountant
		@approve_list_by_user = nil

		if @is_accountant
			@approve_list_by_user  = Home.get_approve_list_4_account(params[:page], current_user.company_id)
		end

		@approve_list = Home.get_approve_list_4_manager(params[:page], current_user.id)
		@input_list  = Home.get_input_project(params[:page], current_user.id)
	end
end
