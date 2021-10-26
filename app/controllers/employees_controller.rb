class EmployeesController < ApplicationController
  def show
    render json: Employee.find_by(id: params[:id]).as_json
  end

  def index
    render json: Employee.all.as_json
  end
end
