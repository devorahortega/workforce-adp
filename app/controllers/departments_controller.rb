class DepartmentsController < ApplicationController
  before_action :authenticate_manager, except: [:show, :index]
  before_action :authenticate_user

  def show
    render json: Department.find_by(id: params[:id])
  end

  def index
    render json: Department.all
  end

  def create
    department = Department.new(
      dept_name: params[:dept_name],
      dept_code: params[:dept_code],
      dept_manager: params[:dept_manager],
    )
    if department.save
      render json: department
    else
      render json: { errors: department.errors.full_messages }, status: 418
    end
  end

  def update
    department = Department.find_by(id: params[:id])
    department.dept_name = params[:dept_name] || department.dept_name
    department.dept_code = params[:dept_code] || department.dept_code
    department.dept_manager = params[:dept_manager] || department.dept_manager

    if department.save
      render json: department
    else
      render json: { errors: department.errors.full_messages }, status: 418
    end
  end

  def destroy
    department = Department.find_by(id: params[:id])
    department.destroy
    render json: { message: "department DESTROYED!!!!" }
  end
end
