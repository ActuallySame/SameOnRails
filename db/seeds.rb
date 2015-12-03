# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Eric Kanerd Naman).each do |name|
  User.create firstName: name, lastName: 'Smith', email: name+"@berkeley.edu", password: 'password', username: name + rand(1..20).to_s
end
Following.create a_id: 1, b_id: 2
Following.create a_id: 3, b_id: 2
