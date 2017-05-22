require_relative 'author'
require_relative 'book'
require_relative 'order'
require_relative 'reader'
require 'faker'
require 'yaml'

# Library stores all books, readers, authors and orders
class Library

  attr_accessor :books, :orders, :authors, :readers

  def initialize(authors = [], books = [], orders = [], readers = [])
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end

  def write_to_yaml(file_name = "lib_#{self.object_id}.yml")
    File.new(file_name, 'w') unless File.exist?(file_name)
    File.open(file_name, 'w') { |file| file.write(self.to_yaml) }
  end

  def read_from_yaml(file_name = "lib_#{self.object_id}.yml")
    if File.exist?(file_name)
      library = YAML.load_file(file_name)
      @authors = library.authors
      @books = library.books
      @orders = library.orders
      @readers = library.readers
    else
      puts 'There is no such file.'
    end
  end

  def most_popular_reader
    most_popular(1, :reader).first.name
  end

  def count_readers_of_popular_books
    @orders.select { |order| books.include? order.book }.map(&:reader).uniq.size
  end

  def most_popular_book
    most_popular(1, :book).first.title
  end

  private

  def most_popular(elements_qty, method)
    @orders.group_by(&method)
           .max_by(elements_qty) { |_, value| value.length }
           .to_h.keys
  end
end
