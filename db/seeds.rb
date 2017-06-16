# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

teachers = 4.times.map do
  Teacher.create(name: Faker::Name.name)
end

courses = 20.times.map do |i|
  Course.create(name: Faker::Educator.course, teacher: teachers[i/2])
end


20.times do
  Student.create(name: Faker::Name.name, courses: courses.sample(10))
end
