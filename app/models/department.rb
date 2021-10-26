class Department < ApplicationRecord
  has_many :employees

  validates :dept_name, :dept_code, :dept_manager, presence: true
  validates :dept_code, numericality: { only_integer: true, greater_than: 0 }
end
