require_relative './classes/library'
require './classes/seeds'

lib1 = Library.new
file_name = 'lib1.yml'


unless File.exist?(file_name)
  Seeds.seeds(lib1)
  lib1.write_to_yaml(file_name)
end

lib1.read_from_yaml(file_name)

puts "Most popular reader: #{lib1.most_popular_reader}."
puts "Most popular book: #{lib1.most_popular_book}."
puts 'Amount of people ordered one of the three most popular books: '\
     "#{lib1.count_readers_of_popular_books}."
