class ProjectListController < ApplicationController
  include ProjectListHelper
  def index
  	  @limitrows=limitrow
  	 @companys=company
  end
end
