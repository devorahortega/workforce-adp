class UpdatesDepartmentIdInEmployees < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :dept_id, :department_id
  end
end
