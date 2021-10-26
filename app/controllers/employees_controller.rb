class EmployeesController < ApplicationController
  def show
    render json: Employee.find_by(id: params[:id]).as_json
  end

  def index
    render json: Employee.all.as_json
  end

  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      job_title: params[:job_title],
      dept_id: params[:dept_id],
    )
    if employee.save
      render json: employee.as_json
    else
      render json: { errors: employee.errors.full_messages }
    end
  end

  def update
  end
end
