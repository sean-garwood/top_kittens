# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

some_kitten = Kitten.create(name: "Fluffy", age: 1, cuteness: 10, softness: 10)
some_kitten.save
puts "Created a kitten named Fluffy"
another_kitten = Kitten.create(name: "Whiskers", age: 2, cuteness: 9, softness: 9)
another_kitten.save
puts "Created a kitten named Whiskers"
