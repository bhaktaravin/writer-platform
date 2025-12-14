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
Chapter.delete_all
Book.delete_all

puts "Seeding books and chapters..."

# Create books
book1 = Book.create!(
  title: 'The Great Adventure',
  author: 'John Smith',
  description: 'A thrilling story of courage and discovery.',
  cover_url: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb'
)

book2 = Book.create!(
  title: 'Secrets of the Forest',
  author: 'Jane Doe',
  description: 'Mysteries hidden in the ancient woods.',
  cover_url: 'https://images.unsplash.com/photo-1465101046530-73398c7f28ca'
)

book3 = Book.create!(
  title: 'Legends of the Lost City',
  author: 'Alex Johnson',
  description: 'An epic tale of explorers uncovering ancient secrets.',
  cover_url: 'https://images.unsplash.com/photo-1512820790803-83ca734da794'
)

# Create chapters for each book
Chapter.create!([
  { book: book1, title: 'Chapter 1: Awakening', body: 'The story begins...', position: 1 },
  { book: book1, title: 'Chapter 2: The Journey', body: 'The adventure continues...', position: 2 },
  { book: book2, title: 'Chapter 1: The Woods', body: 'A secret is revealed...', position: 1 },
  { book: book2, title: 'Chapter 2: The Whisper', body: 'Voices in the forest...', position: 2 },
  { book: book3, title: 'Chapter 1: Discovery', body: 'A lost city is found...', position: 1 },
  { book: book3, title: 'Chapter 2: The Legend', body: 'Ancient secrets uncovered...', position: 2 }
])

puts "Seeding complete!"
