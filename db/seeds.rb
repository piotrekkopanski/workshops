# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([{
  admin: :true,
  email: "user123@wp.pl",
  password: "password",
  firstname: "adminfirstname",
  lastname: "adminlastname"
},
{
  admin: :false,
  email: "example411@wp.pl",
  password: "example4",
  firstname: "example4firstname",
  lastname: "example4lastname"
},
{
  admin: :false,
  email: "example1212@wp.pl",
  password: "example2",
  firstname: "example2firstname",
  lastname: "example2lastname"
}])

p "Created #{User.count} users"
