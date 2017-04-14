require_relative 'Author'
require_relative 'Book'
require_relative 'Order'
require_relative 'Reader'
require 'faker'
# Library stores all books, readers, authors and orders
class Library
  def initialize(books = [], orders = [], readers = [], authors = [])
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end

  def seeds
    @authors = []
    @books = []
    10.times do
      author = Faker::Book.unique.author
      bio = 'Some biography'
      title = Faker::Book.unique.title
      @authors.push Author.new(author, bio)
      @books.push Book.new(title, author)
    end

    @readers = []
    30.times do
      name = Faker::Name.unique.name
      email = Faker::Internet.email(name)
      city = Faker::Address.city
      street = Faker::Address.street_name
      house = Faker::Address.building_number
      @readers.push(Reader.new(name, email, city, street, house))
    end

    @orders = []
    100.times do
      book_rnd = rand(10)
      reader_rnd = rand(30)
      @orders.push Order.new(@books[book_rnd], @readers[reader_rnd])
    end
  end
end
