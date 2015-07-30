class MDayTypesController < ApplicationController
  def index
  end

  def new
    @m_day_type = MDayType.new
  end

  def create
    @m_day_type = MDayType.new(m_day_type_params)
  end

  private
  def m_day_type_params
    params.require(:kpi).permit(:sale_amount, :num_of_order, :num_of_interview, :num_of_cv, :num_of_placement)
  end
end
