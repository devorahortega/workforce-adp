class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :dept_name, :dept_code, :dept_manager
end
