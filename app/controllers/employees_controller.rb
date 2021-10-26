class EmployeesController < ApplicationController
  def show
    render json: Employee.find_by(id: params[:id])
  end

  def index
    render json: Employee.all
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
      render json: employee
    else
      render json: { errors: employee.errors.full_messages }, status: 418
    end
  end

  def update
    employee = Employee.find_by(id: params[:id])
    employee.first_name = params[:first_name] || employee.first_name
    employee.last_name = params[:last_name] || employee.last_name
    employee.email = params[:email] || employee.email
    employee.phone = params[:phone] || employee.phone
    employee.job_title = params[:job_title] || employee.job_title
    employee.dept_id = params[:dept_id] || employee.dept_id

    if employee.save
      render json: employee
    else
      render json: { errors: employee.errors.full_messages }, status: 418
    end
  end

  def destroy
    employee = Employee.find_by(id: params[:id])
    employee.destroy
    render json: { message: "EMPLOYEE DESTROYED!!!!" }
  end
end
