# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Food.destroy_all
Department.destroy_all

Department.create(name:"High")
Department.create(name:"Medium")
Department.create(name:"Low")


# foodHigh = Department
# food.items.destroy_all
5.times do
  highDepartment = Department.first
    foodName = Faker::Food.dish
    foodDescription = Faker::Food.description
    foodPrice = Faker::Number.non_zero_digit
    highDepartment.foods.create(
      name: foodName,
      price: Faker::Number.non_zero_digit,
      description: foodDescription
    )

end

# foodMedium = Department
# food.items.destroy_all
10.times do
  mediumDepartment = Department.second
  foodName = Faker::Food.dish
  foodDescription = Faker::Food.description
  foodPrice = Faker::Number.non_zero_digit
  mediumDepartment.foods.create(
    name: foodName,
    price: Faker::Number.non_zero_digit,
    description: foodDescription
  )

end

# foodLow = Department
# food.items.destroy_all
20.times do
  lowDepartment = Department.third
  foodName = Faker::Food.dish
  foodDescription = Faker::Food.description
  foodPrice = Faker::Number.non_zero_digit
  lowDepartment.foods.create(
    name: foodName,
    price: Faker::Number.non_zero_digit,
    description: foodDescription
  )

end

puts "seeded #{Department.all.size} Foods"



