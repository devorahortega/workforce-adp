class Employee < ApplicationRecord
  belongs_to :department

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :job_title, presence: true

  def dept_name
    department = Department.find_by(id: department_id)
    department.dept_name
  end
end
