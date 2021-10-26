class Employee < ApplicationRecord
  belongs_to :department

  def dept_name
    department = Department.find_by(id: department_id)
    department.dept_name
  end
end
