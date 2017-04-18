require_relative './classes/Library'

lib1 = Library.new
lib2 = Library.new
# lib1.seeds
# lib1.write_to_yaml('lib1.yml')
lib1.read_from_yaml('lib1.yml')
lib2.read_from_yaml('lib1.yml')
Library.write_to_yaml('Library.yml')
libs = Library.read_from_yaml('Library.yml')

libs.each do |obj|
  puts obj.books
end

puts "Most popular reader: #{lib1.most_popular_reader}."
puts "Most popular book: #{lib1.most_popular_book}."
puts 'Amount of people ordered one of the three most popular books: '\
     "#{lib1.count_readers_of_popular_books}."
