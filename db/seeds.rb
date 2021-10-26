# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Employee.create!([{ first_name: "Amanda", last_name: "Hale", email: "amanda@example.com", phone: "555-555-5555", job_title: "manager", dept_id: 1 }, { first_name: "Luna", last_name: "Hale", email: "luna@example.com", phone: "234-555-5555", job_title: "ceo", dept_id: 1 }])

Department.create!([{ dept_name: "Management", dept_code: 100, dept_manager: "Amanda" }])
