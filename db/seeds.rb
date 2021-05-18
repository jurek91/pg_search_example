# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying books and authors"
Book.destroy_all
Author.destroy_all
puts "Creating authors"

10.times do
  Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do
  Book.create(title: Faker::Book.title, description: Faker::Quote.famous_last_words, author_id: rand(1..10))
end
# Author.create(id: 1, first_name: "William", last_name: "Shakespeare")
# Author.create(id: 2, first_name: "George", last_name: "Orwell")
# puts"Creating books"
# Book.create(title: "Macbeth", description: "witches and tragedy", author_id: 1)
# Book.create(title: "Romeo and Juliet", description: "tragic romance", author_id: 1)
# Book.create(title: "Hamlet", description: "fella speaking to skull", author_id: 1)
# Book.create(title: "Animal Farm", description: "all animals are equal but some are more equal than others", author_id: 2)
# Book.create(title: "1984", description: "horrifying future", author_id: 2)

puts "Created :)"
