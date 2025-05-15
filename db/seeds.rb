# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB"

Car.destroy_all
Owner.destroy_all

puts "Creates owners ..."
owner1 = Owner.create!(nickname: "SteveyBoy")
owner2 = Owner.create!(nickname: "Lara_21")
owner3 = Owner.create!(nickname: "Andy_AMG")

puts "Created #{Owner.count} owners!"

puts "Creating Cars ..."

Car.create!(brand: "BMW", model: "M4", year: 2022, fuel: 'petrol', owner: owner1)
Car.create!(brand: "Lexus", model: "Rx400h", year: 2021, fuel: 'petrol/hybrid', owner: owner2)
Car.create!(brand: "Mercedes-Benz", model: "C220d", year: 2024, fuel: 'diesel', owner: owner3)

puts "Created #{Car.count} cars!"
