require_relative './classes/Library'

lib = Library.new
# lib.seeds
# lib.write_to_yaml('library.yml')
lib.read_from_yaml('library.yml')

puts "Most popular reader: #{lib.most_popular_reader}."
puts "Most popular book: #{lib.most_popular_book}."
puts "Count of people ordered one of the three most popular books: #{lib.count_readers_of_popular_books}."
