# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
Chapter.destroy_all
Book.destroy_all

puts "Seeding books and chapters..."

# Sample books
book1 = Book.create!(
  title: "The Great Adventure",
  description: "A thrilling story of courage and discovery."
)

book2 = Book.create!(
  title: "Secrets of the Forest",
  description: "Mysteries hidden in the ancient woods."
)

book3 = Book.create!(
  title: "Legends of the Lost City",
  description: "An epic tale of explorers uncovering ancient secrets."
)

# Sample chapters for book1
Chapter.create!(book: book1, title: "Chapter 1: Awakening", body: "The story begins...", position: 1)
Chapter.create!(book: book1, title: "Chapter 2: The First Trial", body: "Challenges arise...", position: 2)
Chapter.create!(book: book1, title: "Chapter 3: Into the Unknown", body: "The journey continues...", position: 3)

# Sample chapters for book2
Chapter.create!(book: book2, title: "Chapter 1: Whispering Trees", body: "The forest speaks...", position: 1)
Chapter.create!(book: book2, title: "Chapter 2: Hidden Path", body: "A secret trail...", position: 2)
Chapter.create!(book: book2, title: "Chapter 3: Shadowed Glade", body: "Mystery deepens...", position: 3)

# Sample chapters for book3
Chapter.create!(book: book3, title: "Chapter 1: Arrival", body: "Explorers reach the city...", position: 1)
Chapter.create!(book: book3, title: "Chapter 2: Ancient Secrets", body: "Hidden knowledge emerges...", position: 2)
Chapter.create!(book: book3, title: "Chapter 3: The Final Challenge", body: "The climax of the adventure...", position: 3)

puts "Seeding complete!"
