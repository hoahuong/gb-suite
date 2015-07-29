class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def new
		@company = Company.new
	end

	def create
        @company = Company.new(company_params)
        @company.save
		@companies = Company.all
    end

	def show
 		@company = Company.find(params[:id])		
	end

 	def edit
 		@company = Company.find(params[:id])
  	end

  	def update
 		@company = Company.find(params[:id])  		
		@company.update(company_params)
    	@companies = Company.all
  	end

  	def destroy
 		@company = Company.find(params[:id])  		 
	 	@company.destroy
	 	@companies = Company.all  		 
  	end


 	private
  	def company_params
    	params.require(:company).permit(:name, :note)
  	end
end
