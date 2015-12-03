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

Same.create(image: File.new(asset_path('same1.jpg')), user_id: 1)
Same.create(image: File.new(asset_path('same2.jpg')), user_id: 2)
Same.create(image: File.new(asset_path('same3.jpg')), user_id: 3)
Same.create(image: File.new(asset_path('same4.jpg')), user_id: 1)
Same.create(image: File.new(asset_path('same5.jpg')), user_id: 2)