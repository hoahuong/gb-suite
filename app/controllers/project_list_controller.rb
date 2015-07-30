class ProjectListController < ApplicationController
  include ProjectListHelper
  def index
  	  @limitrows=limitrow
  	  @companys=company
  	  #@projects=Project.all
  	    @projects = Project.order(params[:sort]).paginate(page: params[:page], per_page: 4)
  	    @number=0


  end

  def search
    #@articles = Article.where( like :title  => params[:title])

    #articles = Article.where( "title LIKE :title" , {:title=> "#{params[:title]}%"})
 
    params[:status] = params[:status].gsub('"', '') 
      p  params[:status]

    #@project = Project.where( "status LIKE :status" , {:status=> "%#{params[:status]}%"})
     @project = Project.where( "status LIKE :status or name like :status or start_at like :status or end_at like :status" , {:status=> "%#{params[:status]}%"})
   

     p "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    p @project
    @number=0

     render json:  @project

    #@articles = Article.where("title = ? " , params[:title]).to_sql
   
  end


  def show
    @project= Project.find(params[:id])
  end

  def edit
    @project= Project.find(params[:id])
    p "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    p @project
  end

  def new
      @project = Project.new
  end

def create
    @project = Project.new(project_params)
   
    if @project.save
      redirect_to project_list_index_path, notice:  "Your profile has been successfully updated."
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to project_list_index_path, notice:  "Your profile has been successfully updated."
    else
      render 'edit'
    end
  end

   private
    def project_params
     # params.require(:projects).permit(:status,:name,:code,:id,:company_id,:description,:start_at,:end_at,:created_at,:created_by,:updated_at,:updated_by,:active)
        params.require(:project).permit(:start_at,:end_at,:description,:status,:name)
    end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
   
    redirect_to project_list_index_path
  end

   def sort_column
	    Project.column_names.include?(params[:sort]) ? params[:sort] : "name"


	  end
	  
	  def sort_direction
	    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	  end
end
