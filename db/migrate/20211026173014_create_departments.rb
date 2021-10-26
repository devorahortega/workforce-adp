class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :dept_name
      t.integer :dept_code
      t.string :dept_manager

      t.timestamps
    end
  end
end
