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
end
