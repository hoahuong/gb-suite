class MCompaniesController < ApplicationController
	def index
		if params[:search]
    		@companies = MCompany.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 5)
  			 respond_to do |format|
        		format.js
    		end
  		else
			@companies = MCompany.all.paginate(page: params[:page], per_page: 5)
  		end
		@page = params[:page]
	end

	def new
		@company = MCompany.new
		@page = params[:page]
	end

	def create
        @company = MCompany.new(company_params)
        @company.save
		@companies = MCompany.all.paginate(page: params[:page], per_page: 5)
		@page = params[:page]
    end

	def show
 		@company = MCompany.find(params[:id])
		@page = params[:page]
	end

 	def edit
 		@company = MCompany.find(params[:id])
		@page = params[:page]
  	end

  	def update
 		@company = MCompany.find(params[:id])  		
		@company.update(company_params)
		@companies = MCompany.all.paginate(page: params[:page], per_page: 5)
		@page = params[:page]
  	end

  	def delete
  		@companyId = params[:id]
  	end

  	def destroy
 		@company = MCompany.find(params[:id])  		 
	 	@company.destroy
		@companies = MCompany.all.paginate(page: params[:page], per_page: 5)
		if @companies.length == 0 && !params[:page].nil? && (Integer(params[:page]) - 1) > 0
			p = Integer(params[:page]) - 1
			@companies = MCompany.all.paginate(page: p, per_page: 5)						
			@page = p
		else
			@page = params[:page]			
		end
  	end

 	private
  	def company_params
    	params.require(:m_company).permit(:name, :note)
  	end
end